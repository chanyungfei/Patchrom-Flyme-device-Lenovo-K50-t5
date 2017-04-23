.class public abstract Landroid/preference/PreferenceActivity;
.super Landroid/app/ListActivity;
.source "PreferenceActivity.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
.implements Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/PreferenceActivity$HeaderAdapter;,
        Landroid/preference/PreferenceActivity$Header;,
        Landroid/preference/PreferenceActivity$1;
    }
.end annotation


# static fields
.field private static final BACK_STACK_PREFS:Ljava/lang/String; = ":android:prefs"

.field private static final CUR_HEADER_TAG:Ljava/lang/String; = ":android:cur_header"

.field private static final DBG:Z

.field public static final EXTRA_NO_HEADERS:Ljava/lang/String; = ":android:no_headers"

.field private static final EXTRA_PREFS_SET_BACK_TEXT:Ljava/lang/String; = "extra_prefs_set_back_text"

.field private static final EXTRA_PREFS_SET_NEXT_TEXT:Ljava/lang/String; = "extra_prefs_set_next_text"

.field private static final EXTRA_PREFS_SHOW_BUTTON_BAR:Ljava/lang/String; = "extra_prefs_show_button_bar"

.field private static final EXTRA_PREFS_SHOW_SKIP:Ljava/lang/String; = "extra_prefs_show_skip"

.field public static final EXTRA_SHOW_FRAGMENT:Ljava/lang/String; = ":android:show_fragment"

.field public static final EXTRA_SHOW_FRAGMENT_ARGUMENTS:Ljava/lang/String; = ":android:show_fragment_args"

.field public static final EXTRA_SHOW_FRAGMENT_SHORT_TITLE:Ljava/lang/String; = ":android:show_fragment_short_title"

.field public static final EXTRA_SHOW_FRAGMENT_TITLE:Ljava/lang/String; = ":android:show_fragment_title"

.field private static final FIRST_REQUEST_CODE:I = 0x64

.field private static final HEADERS_TAG:Ljava/lang/String; = ":android:headers"

.field public static final HEADER_ID_UNDEFINED:J = -0x1L

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final MSG_BUILD_HEADERS:I = 0x2

.field private static final PREFERENCES_TAG:Ljava/lang/String; = ":android:preferences"

.field private static final TAG:Ljava/lang/String; = "PreferenceActivity"


# instance fields
.field private mCurHeader:Landroid/preference/PreferenceActivity$Header;

.field private mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

.field private mHandler:Landroid/os/Handler;

.field private final mHeaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mListFooter:Landroid/widget/FrameLayout;

.field private mNextButton:Landroid/widget/Button;

.field private mPreferenceHeaderItemResId:I

.field private mPreferenceHeaderRemoveEmptyIcon:Z

.field private mPreferenceManager:Landroid/preference/PreferenceManager;

.field private mPrefsContainer:Landroid/view/ViewGroup;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSinglePane:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Landroid/preference/PreferenceActivity;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Landroid/preference/PreferenceActivity;)Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic -get2(Landroid/preference/PreferenceActivity;)Landroid/preference/PreferenceActivity$Header;
    .locals 1

    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic -get3(Landroid/preference/PreferenceActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/preference/PreferenceActivity;)V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->bindPreferences()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 138
    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/preference/PreferenceActivity;->DBG:Z

    .line 133
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    .line 226
    iput v1, p0, Landroid/preference/PreferenceActivity;->mPreferenceHeaderItemResId:I

    .line 227
    iput-boolean v1, p0, Landroid/preference/PreferenceActivity;->mPreferenceHeaderRemoveEmptyIcon:Z

    .line 236
    new-instance v0, Landroid/preference/PreferenceActivity$1;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceActivity$1;-><init>(Landroid/preference/PreferenceActivity;)V

    iput-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    .line 133
    return-void
.end method

.method private bindPreferences()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1514
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1515
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 1516
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 1517
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 1518
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-super {p0, v1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1519
    iput-object v2, p0, Landroid/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1513
    :cond_0
    return-void
.end method

.method private postBindPreferences()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1509
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1510
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1508
    return-void
.end method

.method private requirePreferenceManager()V
    .locals 2

    .prologue
    .line 1537
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_1

    .line 1538
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 1539
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1541
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 1542
    const-string/jumbo v1, "Modern two-pane PreferenceActivity requires use of a PreferenceFragment"

    .line 1541
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1536
    :cond_1
    return-void
.end method

.method private switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1312
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, ":android:prefs"

    .line 1313
    const/4 v4, 0x1

    .line 1312
    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 1314
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->isValidFragment(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1315
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid fragment for this activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1318
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 1319
    .local v0, "f":Landroid/app/Fragment;
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1320
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    const/16 v2, 0x1003

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1321
    const v2, 0x1020392

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1322
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1311
    return-void
.end method


# virtual methods
.method public addPreferencesFromIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1595
    sget-boolean v0, Landroid/preference/PreferenceActivity;->DBG:Z

    if-eqz v0, :cond_0

    .line 1596
    const-string/jumbo v0, "PreferenceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addPreferencesFromIntent, intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    :cond_0
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->requirePreferenceManager()V

    .line 1601
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/preference/PreferenceManager;->inflateFromIntent(Landroid/content/Intent;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 1594
    return-void
.end method

.method public addPreferencesFromResource(I)V
    .locals 3
    .param p1, "preferencesResId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1615
    sget-boolean v0, Landroid/preference/PreferenceActivity;->DBG:Z

    if-eqz v0, :cond_0

    .line 1616
    const-string/jumbo v0, "PreferenceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addPreferencesFromResource, preferencesResId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    :cond_0
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->requirePreferenceManager()V

    .line 1621
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    .line 1622
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 1621
    invoke-virtual {v0, p0, p1, v1}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 1614
    return-void
.end method

.method findBestMatchingHeader(Landroid/preference/PreferenceActivity$Header;Ljava/util/ArrayList;)Landroid/preference/PreferenceActivity$Header;
    .locals 10
    .param p1, "cur"    # Landroid/preference/PreferenceActivity$Header;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceActivity$Header;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)",
            "Landroid/preference/PreferenceActivity$Header;"
        }
    .end annotation

    .prologue
    .local p2, "from":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1366
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1367
    .local v2, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1368
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    .line 1369
    .local v3, "oh":Landroid/preference/PreferenceActivity$Header;
    if-eq p1, v3, :cond_0

    iget-wide v4, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    iget-wide v4, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    iget-wide v6, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 1371
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1372
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1389
    .end local v3    # "oh":Landroid/preference/PreferenceActivity$Header;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1390
    .local v0, "NM":I
    if-ne v0, v9, :cond_6

    .line 1391
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceActivity$Header;

    return-object v4

    .line 1375
    .end local v0    # "NM":I
    .restart local v3    # "oh":Landroid/preference/PreferenceActivity$Header;
    :cond_2
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 1376
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1377
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1367
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1379
    :cond_4
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_5

    .line 1380
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1381
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1383
    :cond_5
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_3

    .line 1384
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1385
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1392
    .end local v3    # "oh":Landroid/preference/PreferenceActivity$Header;
    .restart local v0    # "NM":I
    :cond_6
    if-le v0, v9, :cond_a

    .line 1393
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_a

    .line 1394
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    .line 1395
    .restart local v3    # "oh":Landroid/preference/PreferenceActivity$Header;
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    if-eqz v4, :cond_7

    .line 1396
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1395
    if-eqz v4, :cond_7

    .line 1397
    return-object v3

    .line 1399
    :cond_7
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v4, :cond_8

    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1400
    return-object v3

    .line 1402
    :cond_8
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_9

    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1403
    return-object v3

    .line 1393
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1407
    .end local v3    # "oh":Landroid/preference/PreferenceActivity$Header;
    :cond_a
    return-object v8
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
    .locals 2
    .param p1, "key"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1649
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 1650
    return-object v1

    .line 1653
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method public finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V
    .locals 2
    .param p1, "caller"    # Landroid/app/Fragment;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 1480
    iget-boolean v0, p0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_1

    .line 1481
    invoke-virtual {p0, p2, p3}, Landroid/preference/PreferenceActivity;->setResult(ILandroid/content/Intent;)V

    .line 1482
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->finish()V

    .line 1479
    :cond_0
    :goto_0
    return-void

    .line 1485
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    .line 1486
    if-eqz p1, :cond_0

    .line 1487
    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1488
    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetRequestCode()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public getHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 769
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 1670
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getPreferenceManager()Landroid/preference/PreferenceManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1533
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    return-object v0
.end method

.method public getPreferenceScreen()Landroid/preference/PreferenceScreen;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1579
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 1580
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0

    .line 1582
    :cond_0
    return-object v1
.end method

.method public hasHeaders()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 760
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 761
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 760
    :cond_0
    return v0
.end method

.method protected hasNextButton()Z
    .locals 1

    .prologue
    .line 1666
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidateHeaders()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 851
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 852
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 850
    :cond_0
    return-void
.end method

.method public isMultiPane()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 777
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->hasHeaders()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 3
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 999
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 1000
    new-instance v0, Ljava/lang/RuntimeException;

    .line 1001
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Subclasses of PreferenceActivity must override isValidFragment(String) to verify that the Fragment class is valid! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1002
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1001
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1003
    const-string/jumbo v2, " has not checked if fragment "

    .line 1001
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1003
    const-string/jumbo v2, " is valid."

    .line 1001
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1000
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1005
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public loadHeadersFromResource(ILjava/util/List;)V
    .locals 18
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 864
    .local p2, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    sget-boolean v15, Landroid/preference/PreferenceActivity;->DBG:Z

    if-eqz v15, :cond_0

    .line 865
    const-string/jumbo v15, "PreferenceActivity"

    const-string/jumbo v16, "loadHeadersFromResource"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_0
    const/4 v11, 0x0

    .line 870
    .local v11, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v11

    .line 871
    .local v11, "parser":Landroid/content/res/XmlResourceParser;
    invoke-static {v11}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 874
    .local v2, "attrs":Landroid/util/AttributeSet;
    :cond_1
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v14

    .local v14, "type":I
    const/4 v15, 0x1

    if-eq v14, v15, :cond_2

    .line 875
    const/4 v15, 0x2

    if-ne v14, v15, :cond_1

    .line 879
    :cond_2
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 880
    .local v9, "nodeName":Ljava/lang/String;
    const-string/jumbo v15, "preference-headers"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 881
    new-instance v15, Ljava/lang/RuntimeException;

    .line 882
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "XML document must start with <preference-headers> tag; found"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 883
    const-string/jumbo v17, " at "

    .line 882
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 883
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v17

    .line 882
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 881
    invoke-direct/range {v15 .. v16}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 981
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v9    # "nodeName":Ljava/lang/String;
    .end local v11    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v14    # "type":I
    :catch_0
    move-exception v5

    .line 982
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v15, Ljava/lang/RuntimeException;

    const-string/jumbo v16, "Error parsing headers"

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 985
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v15

    .line 986
    if-eqz v11, :cond_3

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    .line 985
    :cond_3
    throw v15

    .line 886
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local v9    # "nodeName":Ljava/lang/String;
    .restart local v11    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v14    # "type":I
    :cond_4
    const/4 v3, 0x0

    .line 888
    .local v3, "curBundle":Landroid/os/Bundle;
    :try_start_2
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v10

    .line 889
    .end local v3    # "curBundle":Landroid/os/Bundle;
    .local v10, "outerDepth":I
    :cond_5
    :goto_0
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_17

    .line 890
    const/4 v15, 0x3

    if-ne v14, v15, :cond_6

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    if-le v15, v10, :cond_17

    .line 891
    :cond_6
    const/4 v15, 0x3

    if-eq v14, v15, :cond_5

    const/4 v15, 0x4

    if-eq v14, v15, :cond_5

    .line 895
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 896
    const-string/jumbo v15, "header"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_16

    .line 897
    new-instance v6, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v6}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 900
    .local v6, "header":Landroid/preference/PreferenceActivity$Header;
    sget-object v15, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    .line 899
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v15}, Landroid/preference/PreferenceActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 902
    .local v12, "sa":Landroid/content/res/TypedArray;
    const/4 v15, 0x1

    .line 903
    const/16 v16, -0x1

    .line 901
    move/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    .line 905
    const/4 v15, 0x2

    .line 904
    invoke-virtual {v12, v15}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    .line 906
    .local v13, "tv":Landroid/util/TypedValue;
    if-eqz v13, :cond_7

    iget v15, v13, Landroid/util/TypedValue;->type:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 907
    iget v15, v13, Landroid/util/TypedValue;->resourceId:I

    if-eqz v15, :cond_e

    .line 908
    iget v15, v13, Landroid/util/TypedValue;->resourceId:I

    iput v15, v6, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 914
    :cond_7
    :goto_1
    const/4 v15, 0x3

    .line 913
    invoke-virtual {v12, v15}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    .line 915
    if-eqz v13, :cond_8

    iget v15, v13, Landroid/util/TypedValue;->type:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    .line 916
    iget v15, v13, Landroid/util/TypedValue;->resourceId:I

    if-eqz v15, :cond_f

    .line 917
    iget v15, v13, Landroid/util/TypedValue;->resourceId:I

    iput v15, v6, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    .line 923
    :cond_8
    :goto_2
    const/4 v15, 0x5

    .line 922
    invoke-virtual {v12, v15}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    .line 924
    if-eqz v13, :cond_9

    iget v15, v13, Landroid/util/TypedValue;->type:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    .line 925
    iget v15, v13, Landroid/util/TypedValue;->resourceId:I

    if-eqz v15, :cond_10

    .line 926
    iget v15, v13, Landroid/util/TypedValue;->resourceId:I

    iput v15, v6, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 932
    :cond_9
    :goto_3
    const/4 v15, 0x6

    .line 931
    invoke-virtual {v12, v15}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    .line 933
    if-eqz v13, :cond_a

    iget v15, v13, Landroid/util/TypedValue;->type:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    .line 934
    iget v15, v13, Landroid/util/TypedValue;->resourceId:I

    if-eqz v15, :cond_11

    .line 935
    iget v15, v13, Landroid/util/TypedValue;->resourceId:I

    iput v15, v6, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 941
    :cond_a
    :goto_4
    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 940
    move/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    iput v15, v6, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 943
    const/4 v15, 0x4

    .line 942
    invoke-virtual {v12, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v6, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 944
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 946
    if-nez v3, :cond_b

    .line 947
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 950
    :cond_b
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    .line 951
    .local v7, "innerDepth":I
    :cond_c
    :goto_5
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_14

    .line 952
    const/4 v15, 0x3

    if-ne v14, v15, :cond_d

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    if-le v15, v7, :cond_14

    .line 953
    :cond_d
    const/4 v15, 0x3

    if-eq v14, v15, :cond_c

    const/4 v15, 0x4

    if-eq v14, v15, :cond_c

    .line 957
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 958
    .local v8, "innerNodeName":Ljava/lang/String;
    const-string/jumbo v15, "extra"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 959
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const-string/jumbo v16, "extra"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v2, v3}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 960
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 983
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v6    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v7    # "innerDepth":I
    .end local v8    # "innerNodeName":Ljava/lang/String;
    .end local v9    # "nodeName":Ljava/lang/String;
    .end local v10    # "outerDepth":I
    .end local v11    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v12    # "sa":Landroid/content/res/TypedArray;
    .end local v13    # "tv":Landroid/util/TypedValue;
    .end local v14    # "type":I
    :catch_1
    move-exception v4

    .line 984
    .local v4, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v15, Ljava/lang/RuntimeException;

    const-string/jumbo v16, "Error parsing headers"

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 910
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local v6    # "header":Landroid/preference/PreferenceActivity$Header;
    .restart local v9    # "nodeName":Ljava/lang/String;
    .restart local v10    # "outerDepth":I
    .restart local v11    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v12    # "sa":Landroid/content/res/TypedArray;
    .restart local v13    # "tv":Landroid/util/TypedValue;
    .restart local v14    # "type":I
    :cond_e
    :try_start_4
    iget-object v15, v13, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v15, v6, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 919
    :cond_f
    iget-object v15, v13, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v15, v6, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    goto/16 :goto_2

    .line 928
    :cond_10
    iget-object v15, v13, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v15, v6, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    goto/16 :goto_3

    .line 937
    :cond_11
    iget-object v15, v13, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v15, v6, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    goto :goto_4

    .line 962
    .restart local v7    # "innerDepth":I
    .restart local v8    # "innerNodeName":Ljava/lang/String;
    :cond_12
    const-string/jumbo v15, "intent"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 963
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-static {v15, v11, v2}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v15

    iput-object v15, v6, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    goto :goto_5

    .line 966
    :cond_13
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5

    .line 970
    .end local v8    # "innerNodeName":Ljava/lang/String;
    :cond_14
    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    move-result v15

    if-lez v15, :cond_15

    .line 971
    iput-object v3, v6, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 972
    const/4 v3, 0x0

    .line 975
    :cond_15
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 977
    .end local v6    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v7    # "innerDepth":I
    .end local v12    # "sa":Landroid/content/res/TypedArray;
    .end local v13    # "tv":Landroid/util/TypedValue;
    :cond_16
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 986
    :cond_17
    if-eqz v11, :cond_18

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    .line 863
    :cond_18
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1100
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1102
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 1103
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/preference/PreferenceManager;->dispatchActivityResult(IILandroid/content/Intent;)V

    .line 1099
    :cond_0
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 842
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 3
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "shortTitleRes"    # I

    .prologue
    .line 1189
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1190
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1191
    const-string/jumbo v1, ":android:show_fragment"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1192
    const-string/jumbo v1, ":android:show_fragment_args"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1193
    const-string/jumbo v1, ":android:show_fragment_title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1194
    const-string/jumbo v1, ":android:show_fragment_short_title"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1195
    const-string/jumbo v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1196
    return-object v0
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 1109
    invoke-super {p0}, Landroid/app/ListActivity;->onContentChanged()V

    .line 1111
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 1112
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->postBindPreferences()V

    .line 1108
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 25
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 552
    invoke-super/range {p0 .. p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 556
    sget-object v21, Lcom/android/internal/R$styleable;->PreferenceActivity:[I

    .line 555
    const/16 v22, 0x0

    .line 557
    const v23, 0x1160021

    .line 558
    const/16 v24, 0x0

    .line 555
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/preference/PreferenceActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v19

    .line 561
    .local v19, "sa":Landroid/content/res/TypedArray;
    const/16 v21, 0x0

    .line 562
    const v22, 0x10900ac

    .line 560
    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    .line 565
    .local v18, "layoutResId":I
    const/16 v21, 0x1

    .line 566
    const v22, 0x10900a6

    .line 564
    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/preference/PreferenceActivity;->mPreferenceHeaderItemResId:I

    .line 568
    const/16 v21, 0x2

    .line 569
    const/16 v22, 0x0

    .line 567
    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/preference/PreferenceActivity;->mPreferenceHeaderRemoveEmptyIcon:Z

    .line 571
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    .line 573
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->setContentView(I)V

    .line 575
    const v21, 0x1020390

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/FrameLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    .line 576
    const v21, 0x1020391

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/view/ViewGroup;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    .line 577
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v10

    .line 578
    .local v10, "hidingHeaders":Z
    if-nez v10, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v21

    if-eqz v21, :cond_a

    const/16 v21, 0x0

    :goto_0
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    .line 579
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v21

    const-string/jumbo v22, ":android:show_fragment"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 580
    .local v12, "initialFragment":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v21

    const-string/jumbo v22, ":android:show_fragment_args"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    .line 581
    .local v11, "initialArguments":Landroid/os/Bundle;
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v21

    const-string/jumbo v22, ":android:show_fragment_title"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 582
    .local v15, "initialTitle":I
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v21

    const-string/jumbo v22, ":android:show_fragment_short_title"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 584
    .local v13, "initialShortTitle":I
    sget-boolean v21, Landroid/preference/PreferenceActivity;->DBG:Z

    if-eqz v21, :cond_0

    .line 585
    const-string/jumbo v21, "PreferenceActivity"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "onCreate, hidingHeaders = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 586
    const-string/jumbo v23, ", mSinglePane = "

    .line 585
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 586
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    move/from16 v23, v0

    .line 585
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_0
    if-eqz p1, :cond_b

    .line 590
    sget-boolean v21, Landroid/preference/PreferenceActivity;->DBG:Z

    if-eqz v21, :cond_1

    .line 591
    const-string/jumbo v21, "PreferenceActivity"

    const-string/jumbo v22, "    Restarts from a previous saved state."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_1
    const-string/jumbo v21, ":android:headers"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 597
    .local v9, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    if-eqz v9, :cond_3

    .line 598
    sget-boolean v21, Landroid/preference/PreferenceActivity;->DBG:Z

    if-eqz v21, :cond_2

    .line 599
    const-string/jumbo v21, "PreferenceActivity"

    const-string/jumbo v22, "    Get previous headers from parcelable array list."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 603
    const-string/jumbo v21, ":android:cur_header"

    .line 604
    const/16 v22, -0x1

    .line 603
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 605
    .local v7, "curHeader":I
    if-ltz v7, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v7, v0, :cond_3

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 657
    .end local v7    # "curHeader":I
    .end local v9    # "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    :cond_3
    :goto_1
    if-eqz v12, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    move/from16 v21, v0

    if-eqz v21, :cond_13

    .line 658
    sget-boolean v21, Landroid/preference/PreferenceActivity;->DBG:Z

    if-eqz v21, :cond_4

    .line 659
    const-string/jumbo v21, "PreferenceActivity"

    const-string/jumbo v22, "    Single pane, showing just a prefs fragment."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_4
    const v21, 0x102038f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 665
    if-eqz v15, :cond_5

    .line 666
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 667
    .local v16, "initialTitleStr":Ljava/lang/CharSequence;
    if-eqz v13, :cond_12

    .line 668
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 669
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 701
    .end local v16    # "initialTitleStr":Ljava/lang/CharSequence;
    :cond_5
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    .line 702
    .local v17, "intent":Landroid/content/Intent;
    const-string/jumbo v21, "extra_prefs_show_button_bar"

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 703
    sget-boolean v21, Landroid/preference/PreferenceActivity;->DBG:Z

    if-eqz v21, :cond_6

    .line 704
    const-string/jumbo v21, "PreferenceActivity"

    const-string/jumbo v22, "    Initialize button bar."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :cond_6
    const v21, 0x1020393

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 709
    const v21, 0x1020394

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 710
    .local v5, "backButton":Landroid/widget/Button;
    new-instance v21, Landroid/preference/PreferenceActivity$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceActivity$2;-><init>(Landroid/preference/PreferenceActivity;)V

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 716
    const v21, 0x1020395

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Button;

    .line 717
    .local v20, "skipButton":Landroid/widget/Button;
    new-instance v21, Landroid/preference/PreferenceActivity$3;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceActivity$3;-><init>(Landroid/preference/PreferenceActivity;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 723
    const v21, 0x1020396

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    new-instance v22, Landroid/preference/PreferenceActivity$4;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceActivity$4;-><init>(Landroid/preference/PreferenceActivity;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 732
    const-string/jumbo v21, "extra_prefs_set_next_text"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 733
    const-string/jumbo v21, "extra_prefs_set_next_text"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 734
    .local v6, "buttonText":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_18

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setVisibility(I)V

    .line 741
    .end local v6    # "buttonText":Ljava/lang/String;
    :cond_7
    :goto_4
    const-string/jumbo v21, "extra_prefs_set_back_text"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 742
    const-string/jumbo v21, "extra_prefs_set_back_text"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 743
    .restart local v6    # "buttonText":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_19

    .line 744
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 750
    .end local v6    # "buttonText":Ljava/lang/String;
    :cond_8
    :goto_5
    const-string/jumbo v21, "extra_prefs_show_skip"

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 751
    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    .line 551
    .end local v5    # "backButton":Landroid/widget/Button;
    .end local v20    # "skipButton":Landroid/widget/Button;
    :cond_9
    return-void

    .line 578
    .end local v11    # "initialArguments":Landroid/os/Bundle;
    .end local v12    # "initialFragment":Ljava/lang/String;
    .end local v13    # "initialShortTitle":I
    .end local v15    # "initialTitle":I
    .end local v17    # "intent":Landroid/content/Intent;
    :cond_a
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 611
    .restart local v11    # "initialArguments":Landroid/os/Bundle;
    .restart local v12    # "initialFragment":Ljava/lang/String;
    .restart local v13    # "initialShortTitle":I
    .restart local v15    # "initialTitle":I
    :cond_b
    sget-boolean v21, Landroid/preference/PreferenceActivity;->DBG:Z

    if-eqz v21, :cond_c

    .line 612
    const-string/jumbo v21, "PreferenceActivity"

    const-string/jumbo v22, "    Start a new activity."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_c
    if-eqz v12, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    move/from16 v21, v0

    if-eqz v21, :cond_f

    .line 616
    sget-boolean v21, Landroid/preference/PreferenceActivity;->DBG:Z

    if-eqz v21, :cond_d

    .line 617
    const-string/jumbo v21, "PreferenceActivity"

    const-string/jumbo v22, "    Show a fragment from EXTRA_SHOW_FRAGMENT."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11}, Landroid/preference/PreferenceActivity;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 624
    if-eqz v15, :cond_3

    .line 625
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 626
    .restart local v16    # "initialTitleStr":Ljava/lang/CharSequence;
    if-eqz v13, :cond_e

    .line 627
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 628
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 627
    :cond_e
    const/4 v14, 0x0

    .local v14, "initialShortTitleStr":Ljava/lang/CharSequence;
    goto :goto_6

    .line 633
    .end local v14    # "initialShortTitleStr":Ljava/lang/CharSequence;
    .end local v16    # "initialTitleStr":Ljava/lang/CharSequence;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->onBuildHeaders(Ljava/util/List;)V

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_3

    .line 639
    sget-boolean v21, Landroid/preference/PreferenceActivity;->DBG:Z

    if-eqz v21, :cond_10

    .line 640
    const-string/jumbo v21, "PreferenceActivity"

    const-string/jumbo v22, "    Build headers successfully."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    move/from16 v21, v0

    if-nez v21, :cond_3

    .line 644
    if-nez v12, :cond_11

    .line 645
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;

    move-result-object v8

    .line 646
    .local v8, "h":Landroid/preference/PreferenceActivity$Header;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    goto/16 :goto_1

    .line 648
    .end local v8    # "h":Landroid/preference/PreferenceActivity$Header;
    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11}, Landroid/preference/PreferenceActivity;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 668
    .restart local v16    # "initialTitleStr":Ljava/lang/CharSequence;
    :cond_12
    const/4 v14, 0x0

    .restart local v14    # "initialShortTitleStr":Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 671
    .end local v14    # "initialShortTitleStr":Ljava/lang/CharSequence;
    .end local v16    # "initialTitleStr":Ljava/lang/CharSequence;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_16

    .line 672
    sget-boolean v21, Landroid/preference/PreferenceActivity;->DBG:Z

    if-eqz v21, :cond_14

    .line 673
    const-string/jumbo v21, "PreferenceActivity"

    const-string/jumbo v22, "    Set list adapter created from headers."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_14
    new-instance v21, Landroid/preference/PreferenceActivity$HeaderAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/preference/PreferenceActivity;->mPreferenceHeaderItemResId:I

    move/from16 v23, v0

    .line 677
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/preference/PreferenceActivity;->mPreferenceHeaderRemoveEmptyIcon:Z

    move/from16 v24, v0

    .line 676
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/preference/PreferenceActivity$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;IZ)V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 678
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    move/from16 v21, v0

    if-nez v21, :cond_5

    .line 680
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v21, v0

    if-eqz v21, :cond_15

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 684
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_3

    .line 687
    :cond_16
    sget-boolean v21, Landroid/preference/PreferenceActivity;->DBG:Z

    if-eqz v21, :cond_17

    .line 688
    const-string/jumbo v21, "PreferenceActivity"

    const-string/jumbo v22, "    In the old \"just show a screen of preferences\" mode."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :cond_17
    const v21, 0x10900ae

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->setContentView(I)V

    .line 694
    const v21, 0x1020390

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/FrameLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    .line 695
    const v21, 0x1020392

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/view/ViewGroup;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    .line 696
    new-instance v21, Landroid/preference/PreferenceManager;

    const/16 v22, 0x64

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/preference/PreferenceManager;-><init>(Landroid/app/Activity;I)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    goto/16 :goto_3

    .line 738
    .restart local v5    # "backButton":Landroid/widget/Button;
    .restart local v6    # "buttonText":Ljava/lang/String;
    .restart local v17    # "intent":Landroid/content/Intent;
    .restart local v20    # "skipButton":Landroid/widget/Button;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 747
    :cond_19
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 1034
    sget-boolean v0, Landroid/preference/PreferenceActivity;->DBG:Z

    if-eqz v0, :cond_0

    .line 1035
    const-string/jumbo v0, "PreferenceActivity"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1039
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1040
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 1042
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_1

    .line 1043
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->dispatchActivityDestroy()V

    .line 1033
    :cond_1
    return-void
.end method

.method public onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 4

    .prologue
    .line 810
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 811
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 812
    .local v0, "h":Landroid/preference/PreferenceActivity$Header;
    iget-object v2, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 813
    return-object v0

    .line 810
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 816
    .end local v0    # "h":Landroid/preference/PreferenceActivity$Header;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Must have at least one header with a fragment"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onGetNewHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 1

    .prologue
    .line 826
    const/4 v0, 0x0

    return-object v0
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 7
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1143
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 1144
    iget-boolean v0, p0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_3

    .line 1145
    sget-boolean v0, Landroid/preference/PreferenceActivity;->DBG:Z

    if-eqz v0, :cond_0

    .line 1146
    const-string/jumbo v0, "PreferenceActivity"

    const-string/jumbo v1, "onHeaderClick, single pane and startWithFragment."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    :cond_0
    iget v5, p1, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 1150
    .local v5, "titleRes":I
    iget v6, p1, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 1151
    .local v6, "shortTitleRes":I
    if-nez v5, :cond_1

    .line 1152
    iget v5, p1, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 1153
    const/4 v6, 0x0

    .line 1155
    :cond_1
    iget-object v1, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v2, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1142
    .end local v5    # "titleRes":I
    .end local v6    # "shortTitleRes":I
    :cond_2
    :goto_0
    return-void

    .line 1158
    :cond_3
    sget-boolean v0, Landroid/preference/PreferenceActivity;->DBG:Z

    if-eqz v0, :cond_4

    .line 1159
    const-string/jumbo v0, "PreferenceActivity"

    const-string/jumbo v1, "onHeaderClick, multiple pane and switchToHeader."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    :cond_4
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    goto :goto_0

    .line 1164
    :cond_5
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 1165
    sget-boolean v0, Landroid/preference/PreferenceActivity;->DBG:Z

    if-eqz v0, :cond_6

    .line 1166
    const-string/jumbo v0, "PreferenceActivity"

    const-string/jumbo v1, "onHeaderClick, start activity with header intent."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    :cond_6
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onIsHidingHeaders()Z
    .locals 3

    .prologue
    .line 799
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, ":android:no_headers"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onIsMultiPane()Z
    .locals 3

    .prologue
    .line 786
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 787
    const v2, 0x1120006

    .line 786
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 788
    .local v0, "preferMultiPane":Z
    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 1118
    sget-boolean v1, Landroid/preference/PreferenceActivity;->DBG:Z

    if-eqz v1, :cond_0

    .line 1119
    const-string/jumbo v1, "PreferenceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onListItemClick, position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->isResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1123
    return-void

    .line 1125
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 1127
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2

    .line 1128
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 1129
    .local v0, "item":Ljava/lang/Object;
    instance-of v1, v0, Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .end local v0    # "item":Ljava/lang/Object;
    invoke-virtual {p0, v0, p3}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    .line 1117
    :cond_2
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1658
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 1659
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->dispatchNewIntent(Landroid/content/Intent;)V

    .line 1657
    :cond_0
    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "caller"    # Landroid/preference/PreferenceFragment;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 1497
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    .line 1498
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 1497
    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1499
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1633
    const/4 v0, 0x0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 1077
    sget-boolean v2, Landroid/preference/PreferenceActivity;->DBG:Z

    if-eqz v2, :cond_0

    .line 1078
    const-string/jumbo v2, "PreferenceActivity"

    const-string/jumbo v3, "onRestoreInstanceState"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    :cond_0
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v2, :cond_1

    .line 1082
    const-string/jumbo v2, ":android:preferences"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1083
    .local v0, "container":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 1084
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 1085
    .local v1, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_1

    .line 1086
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 1087
    iput-object p1, p0, Landroid/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1088
    return-void

    .line 1095
    .end local v0    # "container":Landroid/os/Bundle;
    .end local v1    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    :cond_1
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1076
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1049
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1051
    sget-boolean v3, Landroid/preference/PreferenceActivity;->DBG:Z

    if-eqz v3, :cond_0

    .line 1052
    const-string/jumbo v3, "PreferenceActivity"

    const-string/jumbo v4, "onSaveInstanceState"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    :cond_0
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1056
    const-string/jumbo v3, ":android:headers"

    iget-object v4, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1057
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v3, :cond_1

    .line 1058
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1059
    .local v1, "index":I
    if-ltz v1, :cond_1

    .line 1060
    const-string/jumbo v3, ":android:cur_header"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1065
    .end local v1    # "index":I
    :cond_1
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v3, :cond_2

    .line 1066
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 1067
    .local v2, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v2, :cond_2

    .line 1068
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1069
    .local v0, "container":Landroid/os/Bundle;
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 1070
    const-string/jumbo v3, ":android:preferences"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1048
    .end local v0    # "container":Landroid/os/Bundle;
    .end local v2    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    :cond_2
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 1021
    sget-boolean v0, Landroid/preference/PreferenceActivity;->DBG:Z

    if-eqz v0, :cond_0

    .line 1022
    const-string/jumbo v0, "PreferenceActivity"

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    :cond_0
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 1027
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_1

    .line 1028
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->dispatchActivityStop()V

    .line 1020
    :cond_1
    return-void
.end method

.method public setListFooter(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1013
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1014
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1015
    const/4 v2, -0x1

    .line 1016
    const/4 v3, -0x2

    .line 1014
    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1012
    return-void
.end method

.method public setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "shortTitle"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1284
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-eqz v0, :cond_0

    .line 1285
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/FragmentBreadCrumbs;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 1283
    :cond_0
    return-void
.end method

.method public setPreferenceScreen(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1556
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->requirePreferenceManager()V

    .line 1558
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceManager;->setPreferences(Landroid/preference/PreferenceScreen;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 1559
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->postBindPreferences()V

    .line 1560
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1562
    .local v0, "title":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 1563
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1555
    .end local v0    # "title":Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V
    .locals 3
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 1290
    iput-object p1, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    .line 1291
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1292
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 1293
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1297
    :goto_0
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Landroid/preference/PreferenceActivity$Header;)V

    .line 1289
    return-void

    .line 1295
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->clearChoices()V

    goto :goto_0
.end method

.method showBreadCrumbs(Landroid/preference/PreferenceActivity$Header;)V
    .locals 3
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    const/4 v2, 0x0

    .line 1301
    if-eqz p1, :cond_2

    .line 1302
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceActivity$Header;->getBreadCrumbTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1303
    .local v0, "title":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1304
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1305
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceActivity$Header;->getBreadCrumbShortTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1300
    .end local v0    # "title":Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 1307
    :cond_2
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "shortTitle"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 1242
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-nez v3, :cond_4

    .line 1243
    const v3, 0x1020016

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1246
    .local v1, "crumbs":Landroid/view/View;
    :try_start_0
    check-cast v1, Landroid/app/FragmentBreadCrumbs;

    .end local v1    # "crumbs":Landroid/view/View;
    iput-object v1, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1251
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-nez v3, :cond_1

    .line 1252
    if-eqz p1, :cond_0

    .line 1253
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1255
    :cond_0
    return-void

    .line 1247
    :catch_0
    move-exception v2

    .line 1248
    .local v2, "e":Ljava/lang/ClassCastException;
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1249
    return-void

    .line 1257
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :cond_1
    iget-boolean v3, p0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v3, :cond_3

    .line 1258
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v3, v4}, Landroid/app/FragmentBreadCrumbs;->setVisibility(I)V

    .line 1260
    const v3, 0x102030e

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1261
    .local v0, "bcSection":Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1262
    :cond_2
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1264
    .end local v0    # "bcSection":Landroid/view/View;
    :cond_3
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/app/FragmentBreadCrumbs;->setMaxVisible(I)V

    .line 1265
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v3, p0}, Landroid/app/FragmentBreadCrumbs;->setActivity(Landroid/app/Activity;)V

    .line 1267
    :cond_4
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v3}, Landroid/app/FragmentBreadCrumbs;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_5

    .line 1268
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1241
    :goto_0
    return-void

    .line 1270
    :cond_5
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v3, p1, p2}, Landroid/app/FragmentBreadCrumbs;->setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1271
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v3, v5, v5, v5}, Landroid/app/FragmentBreadCrumbs;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public startPreferenceFragment(Landroid/app/Fragment;Z)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "push"    # Z

    .prologue
    .line 1418
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1419
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    const v1, 0x1020392

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1420
    if-eqz p2, :cond_0

    .line 1421
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1422
    const-string/jumbo v1, ":android:prefs"

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1426
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1417
    return-void

    .line 1424
    :cond_0
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 9
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "resultTo"    # Landroid/app/Fragment;
    .param p6, "resultRequestCode"    # I

    .prologue
    const/4 v6, 0x0

    .line 1450
    iget-boolean v0, p0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move v5, p3

    .line 1451
    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1449
    :goto_0
    return-void

    .line 1453
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v7

    .line 1454
    .local v7, "f":Landroid/app/Fragment;
    if-eqz p5, :cond_1

    .line 1455
    invoke-virtual {v7, p5, p6}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1457
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v8

    .line 1458
    .local v8, "transaction":Landroid/app/FragmentTransaction;
    const v0, 0x1020392

    invoke-virtual {v8, v0, v7}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1459
    if-eqz p3, :cond_3

    .line 1460
    invoke-virtual {v8, p3}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    .line 1464
    :cond_2
    :goto_1
    const/16 v0, 0x1001

    invoke-virtual {v8, v0}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1465
    const-string/jumbo v0, ":android:prefs"

    invoke-virtual {v8, v0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1466
    invoke-virtual {v8}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 1461
    :cond_3
    if-eqz p4, :cond_2

    .line 1462
    invoke-virtual {v8, p4}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_1
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;I)V
    .locals 7
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I

    .prologue
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, v5

    .line 1205
    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1204
    return-void
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I
    .param p5, "titleRes"    # I
    .param p6, "shortTitleRes"    # I

    .prologue
    .line 1228
    invoke-virtual {p0, p1, p2, p5, p6}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 1229
    .local v0, "intent":Landroid/content/Intent;
    if-nez p3, :cond_0

    .line 1230
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 1227
    :goto_0
    return-void

    .line 1232
    :cond_0
    invoke-virtual {p3, v0, p4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public switchToHeader(Landroid/preference/PreferenceActivity$Header;)V
    .locals 3
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 1351
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    if-ne v0, p1, :cond_0

    .line 1354
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, ":android:prefs"

    .line 1355
    const/4 v2, 0x1

    .line 1354
    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 1350
    :goto_0
    return-void

    .line 1357
    :cond_0
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1358
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "can\'t switch to header that has no fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1360
    :cond_1
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v1, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1}, Landroid/preference/PreferenceActivity;->switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1361
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V

    goto :goto_0
.end method

.method public switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1333
    const/4 v1, 0x0

    .line 1334
    .local v1, "selectedHeader":Landroid/preference/PreferenceActivity$Header;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1335
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity$Header;

    iget-object v2, v2, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1336
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "selectedHeader":Landroid/preference/PreferenceActivity$Header;
    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 1340
    :cond_0
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 1341
    invoke-direct {p0, p1, p2}, Landroid/preference/PreferenceActivity;->switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1332
    return-void

    .line 1334
    .restart local v1    # "selectedHeader":Landroid/preference/PreferenceActivity$Header;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
