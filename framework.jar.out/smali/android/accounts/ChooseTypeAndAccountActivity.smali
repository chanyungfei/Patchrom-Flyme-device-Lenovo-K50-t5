.class public Landroid/accounts/ChooseTypeAndAccountActivity;
.super Landroid/app/Activity;
.source "ChooseTypeAndAccountActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# static fields
.field public static final EXTRA_ADD_ACCOUNT_AUTH_TOKEN_TYPE_STRING:Ljava/lang/String; = "authTokenType"

.field public static final EXTRA_ADD_ACCOUNT_OPTIONS_BUNDLE:Ljava/lang/String; = "addAccountOptions"

.field public static final EXTRA_ADD_ACCOUNT_REQUIRED_FEATURES_STRING_ARRAY:Ljava/lang/String; = "addAccountRequiredFeatures"

.field public static final EXTRA_ALLOWABLE_ACCOUNTS_ARRAYLIST:Ljava/lang/String; = "allowableAccounts"

.field public static final EXTRA_ALLOWABLE_ACCOUNT_TYPES_STRING_ARRAY:Ljava/lang/String; = "allowableAccountTypes"

.field public static final EXTRA_ALWAYS_PROMPT_FOR_ACCOUNT:Ljava/lang/String; = "alwaysPromptForAccount"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_DESCRIPTION_TEXT_OVERRIDE:Ljava/lang/String; = "descriptionTextOverride"

.field public static final EXTRA_SELECTED_ACCOUNT:Ljava/lang/String; = "selectedAccount"

.field private static final KEY_INSTANCE_STATE_ACCOUNT_LIST:Ljava/lang/String; = "accountList"

.field private static final KEY_INSTANCE_STATE_EXISTING_ACCOUNTS:Ljava/lang/String; = "existingAccounts"

.field private static final KEY_INSTANCE_STATE_PENDING_REQUEST:Ljava/lang/String; = "pendingRequest"

.field private static final KEY_INSTANCE_STATE_SELECTED_ACCOUNT_NAME:Ljava/lang/String; = "selectedAccountName"

.field private static final KEY_INSTANCE_STATE_SELECTED_ADD_ACCOUNT:Ljava/lang/String; = "selectedAddAccount"

.field public static final REQUEST_ADD_ACCOUNT:I = 0x2

.field public static final REQUEST_CHOOSE_TYPE:I = 0x1

.field public static final REQUEST_NULL:I = 0x0

.field private static final SELECTED_ITEM_NONE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "AccountChooser"


# instance fields
.field private mAccounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private mCallingPackage:Ljava/lang/String;

.field private mCallingUid:I

.field private mDescriptionOverride:Ljava/lang/String;

.field private mDisallowAddAccounts:Z

.field private mDontShowPicker:Z

.field private mExistingAccounts:[Landroid/os/Parcelable;

.field private mIsCanceled:Z

.field private mOkButton:Landroid/widget/Button;

.field private mPendingRequest:I

.field private mSelectedAccountName:Ljava/lang/String;

.field private mSelectedAddNewAccount:Z

.field private mSelectedItemIndex:I

.field private mSetOfAllowableAccounts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private mSetOfRelevantAccountTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/accounts/ChooseTypeAndAccountActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mOkButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -set0(Landroid/accounts/ChooseTypeAndAccountActivity;I)I
    .locals 0

    iput p1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    return p1
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 124
    iput-object v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedAccountName:Ljava/lang/String;

    .line 125
    iput-boolean v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedAddNewAccount:Z

    .line 129
    iput v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    .line 130
    iput-object v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mExistingAccounts:[Landroid/os/Parcelable;

    .line 138
    iput-boolean v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mIsCanceled:Z

    .line 54
    return-void
.end method

.method private getAcceptableAccountChoices(Landroid/accounts/AccountManager;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "accountManager"    # Landroid/accounts/AccountManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManager;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 491
    iget-object v3, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingPackage:Ljava/lang/String;

    .line 492
    iget v4, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingUid:I

    .line 491
    invoke-virtual {p1, v3, v4}, Landroid/accounts/AccountManager;->getAccountsForPackage(Ljava/lang/String;I)[Landroid/accounts/Account;

    move-result-object v1

    .line 493
    .local v1, "accounts":[Landroid/accounts/Account;
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 494
    .local v2, "accountsToPopulate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    const/4 v3, 0x0

    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v0, v1, v3

    .line 495
    .local v0, "account":Landroid/accounts/Account;
    iget-object v5, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSetOfAllowableAccounts:Ljava/util/Set;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSetOfAllowableAccounts:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 498
    :cond_0
    iget-object v5, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSetOfRelevantAccountTypes:Ljava/util/Set;

    if-eqz v5, :cond_1

    .line 499
    iget-object v5, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSetOfRelevantAccountTypes:Ljava/util/Set;

    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 502
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 504
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_3
    return-object v2
.end method

.method private getAllowableAccountSet(Landroid/content/Intent;)Ljava/util/Set;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 536
    const/4 v2, 0x0

    .line 538
    .local v2, "setOfAllowableAccounts":Ljava/util/Set;, "Ljava/util/Set<Landroid/accounts/Account;>;"
    const-string/jumbo v4, "allowableAccounts"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 539
    .local v3, "validAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    if-eqz v3, :cond_0

    .line 540
    new-instance v2, Ljava/util/HashSet;

    .end local v2    # "setOfAllowableAccounts":Ljava/util/Set;, "Ljava/util/Set<Landroid/accounts/Account;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 541
    .local v2, "setOfAllowableAccounts":Ljava/util/Set;, "Ljava/util/Set<Landroid/accounts/Account;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "parcelable$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 542
    .local v0, "parcelable":Landroid/os/Parcelable;
    check-cast v0, Landroid/accounts/Account;

    .end local v0    # "parcelable":Landroid/os/Parcelable;
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 545
    .end local v1    # "parcelable$iterator":Ljava/util/Iterator;
    .end local v2    # "setOfAllowableAccounts":Ljava/util/Set;, "Ljava/util/Set<Landroid/accounts/Account;>;"
    :cond_0
    return-object v2
.end method

.method private getItemIndexToSelect(Ljava/util/ArrayList;Ljava/lang/String;Z)I
    .locals 2
    .param p2, "selectedAccountName"    # Ljava/lang/String;
    .param p3, "selectedAddNewAccount"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;",
            "Ljava/lang/String;",
            "Z)I"
        }
    .end annotation

    .prologue
    .line 458
    .local p1, "accounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    if-eqz p3, :cond_0

    .line 459
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    return v1

    .line 462
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 463
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 464
    return v0

    .line 462
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 468
    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method private getListOfDisplayableOptions(Ljava/util/ArrayList;)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 474
    .local p1, "accounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-boolean v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mDisallowAddAccounts:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/2addr v2, v3

    new-array v1, v2, [Ljava/lang/String;

    .line 475
    .local v1, "listItems":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 476
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 475
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 474
    .end local v0    # "i":I
    .end local v1    # "listItems":[Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 478
    .restart local v0    # "i":I
    .restart local v1    # "listItems":[Ljava/lang/String;
    :cond_1
    iget-boolean v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mDisallowAddAccounts:Z

    if-nez v2, :cond_2

    .line 479
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 480
    const v4, 0x104045a

    .line 479
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 482
    :cond_2
    return-object v1
.end method

.method private getReleventAccountTypes(Landroid/content/Intent;)Ljava/util/Set;
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 514
    const/4 v3, 0x0

    .line 516
    .local v3, "setOfRelevantAccountTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v5, "allowableAccountTypes"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, "allowedAccountTypes":[Ljava/lang/String;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v2

    .line 518
    .local v2, "descs":[Landroid/accounts/AuthenticatorDescription;
    new-instance v4, Ljava/util/HashSet;

    array-length v5, v2

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 519
    .local v4, "supportedAccountTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v5, 0x0

    array-length v6, v2

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v1, v2, v5

    .line 520
    .local v1, "desc":Landroid/accounts/AuthenticatorDescription;
    iget-object v7, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 519
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 522
    .end local v1    # "desc":Landroid/accounts/AuthenticatorDescription;
    :cond_0
    if-eqz v0, :cond_1

    .line 523
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v3

    .line 524
    .local v3, "setOfRelevantAccountTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3, v4}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 528
    :goto_1
    return-object v3

    .line 526
    .local v3, "setOfRelevantAccountTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    move-object v3, v4

    .local v3, "setOfRelevantAccountTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_1
.end method

.method private onAccountSelected(Landroid/accounts/Account;)V
    .locals 3
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    .line 416
    const-string/jumbo v0, "AccountChooser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "selected account "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Landroid/accounts/ChooseTypeAndAccountActivity;->setResultAndFinish(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    return-void
.end method

.method private overrideDescriptionIfSupplied(Ljava/lang/String;)V
    .locals 2
    .param p1, "descriptionOverride"    # Ljava/lang/String;

    .prologue
    .line 553
    const v1, 0x1020305

    invoke-virtual {p0, v1}, Landroid/accounts/ChooseTypeAndAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 554
    .local v0, "descriptionView":Landroid/widget/TextView;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 555
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    :goto_0
    return-void

    .line 557
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private final populateUIAccountList([Ljava/lang/String;)V
    .locals 4
    .param p1, "listItems"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 566
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Landroid/accounts/ChooseTypeAndAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 567
    .local v0, "list":Landroid/widget/ListView;
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 568
    const v2, 0x109000f

    .line 567
    invoke-direct {v1, p0, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 569
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 570
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 572
    new-instance v1, Landroid/accounts/ChooseTypeAndAccountActivity$1;

    invoke-direct {v1, p0}, Landroid/accounts/ChooseTypeAndAccountActivity$1;-><init>(Landroid/accounts/ChooseTypeAndAccountActivity;)V

    .line 571
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 579
    iget v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 580
    iget v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 581
    const-string/jumbo v1, "AccountChooser"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 582
    const-string/jumbo v1, "AccountChooser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "List item "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " should be selected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_0
    return-void
.end method

.method private setNonLabelThemeAndCallSuperCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 411
    const v0, 0x103023c

    invoke-virtual {p0, v0}, Landroid/accounts/ChooseTypeAndAccountActivity;->setTheme(I)V

    .line 412
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 410
    return-void
.end method

.method private setResultAndFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;

    .prologue
    .line 421
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 422
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "authAccount"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-string/jumbo v1, "accountType"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Landroid/accounts/ChooseTypeAndAccountActivity;->setResult(ILandroid/content/Intent;)V

    .line 425
    const-string/jumbo v1, "AccountChooser"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    const-string/jumbo v1, "AccountChooser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ChooseTypeAndAccountActivity.setResultAndFinish: selected account "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 427
    const-string/jumbo v3, ", "

    .line 426
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_0
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->finish()V

    .line 420
    return-void
.end method

.method private startChooseAccountTypeActivity()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 433
    const-string/jumbo v1, "AccountChooser"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    const-string/jumbo v1, "AccountChooser"

    const-string/jumbo v2, "ChooseAccountTypeActivity.startChooseAccountTypeActivity()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/accounts/ChooseAccountTypeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 437
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 438
    const-string/jumbo v1, "allowableAccountTypes"

    .line 439
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "allowableAccountTypes"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 438
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    const-string/jumbo v1, "addAccountOptions"

    .line 441
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "addAccountOptions"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 440
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 442
    const-string/jumbo v1, "addAccountRequiredFeatures"

    .line 443
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "addAccountRequiredFeatures"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 442
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    const-string/jumbo v1, "authTokenType"

    .line 445
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "authTokenType"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 444
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    invoke-virtual {p0, v0, v4}, Landroid/accounts/ChooseTypeAndAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 447
    iput v4, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    .line 432
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 291
    const-string/jumbo v7, "AccountChooser"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 292
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 293
    :cond_0
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 294
    :goto_0
    const-string/jumbo v7, "AccountChooser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ChooseTypeAndAccountActivity.onActivityResult(reqCode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 295
    const-string/jumbo v9, ", resCode="

    .line 294
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 295
    const-string/jumbo v9, ", extras="

    .line 294
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 295
    const-string/jumbo v9, ")"

    .line 294
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_1
    const/4 v7, 0x0

    iput v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    .line 301
    if-nez p2, :cond_5

    .line 304
    iget-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/ArrayList;

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 305
    :cond_2
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mIsCanceled:Z

    .line 306
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/accounts/ChooseTypeAndAccountActivity;->setResult(I)V

    .line 307
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->finish()V

    .line 309
    :cond_3
    return-void

    .line 293
    :cond_4
    const/4 v5, 0x0

    .local v5, "extras":Landroid/os/Bundle;
    goto :goto_0

    .line 312
    .end local v5    # "extras":Landroid/os/Bundle;
    :cond_5
    const/4 v7, -0x1

    if-ne p2, v7, :cond_8

    .line 313
    const/4 v7, 0x1

    if-ne p1, v7, :cond_a

    .line 314
    if-eqz p3, :cond_6

    .line 315
    const-string/jumbo v7, "accountType"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 316
    .local v3, "accountType":Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 317
    invoke-virtual {p0, v3}, Landroid/accounts/ChooseTypeAndAccountActivity;->runAddAccountForAuthenticator(Ljava/lang/String;)V

    .line 318
    return-void

    .line 321
    .end local v3    # "accountType":Ljava/lang/String;
    :cond_6
    const-string/jumbo v7, "AccountChooser"

    const-string/jumbo v8, "ChooseTypeAndAccountActivity.onActivityResult: unable to find account type, pretending the request was canceled"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_7
    const-string/jumbo v7, "AccountChooser"

    const-string/jumbo v8, "ChooseTypeAndAccountActivity.onActivityResult: unable to find added account, pretending the request was canceled"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_8
    const-string/jumbo v7, "AccountChooser"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 357
    const-string/jumbo v7, "AccountChooser"

    const-string/jumbo v8, "ChooseTypeAndAccountActivity.onActivityResult: canceled"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_9
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/accounts/ChooseTypeAndAccountActivity;->setResult(I)V

    .line 360
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->finish()V

    .line 290
    return-void

    .line 323
    :cond_a
    const/4 v7, 0x2

    if-ne p1, v7, :cond_7

    .line 324
    const/4 v1, 0x0

    .line 325
    .local v1, "accountName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 327
    .local v3, "accountType":Ljava/lang/String;
    if-eqz p3, :cond_b

    .line 328
    const-string/jumbo v7, "authAccount"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, "accountName":Ljava/lang/String;
    const-string/jumbo v7, "accountType"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 332
    .end local v1    # "accountName":Ljava/lang/String;
    .end local v3    # "accountType":Ljava/lang/String;
    :cond_b
    if-eqz v1, :cond_c

    if-nez v3, :cond_e

    .line 333
    :cond_c
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    .line 334
    iget-object v8, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingPackage:Ljava/lang/String;

    iget v9, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingUid:I

    .line 333
    invoke-virtual {v7, v8, v9}, Landroid/accounts/AccountManager;->getAccountsForPackage(Ljava/lang/String;I)[Landroid/accounts/Account;

    move-result-object v4

    .line 335
    .local v4, "currentAccounts":[Landroid/accounts/Account;
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 336
    .local v6, "preExistingAccounts":Ljava/util/Set;, "Ljava/util/Set<Landroid/accounts/Account;>;"
    iget-object v8, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mExistingAccounts:[Landroid/os/Parcelable;

    const/4 v7, 0x0

    array-length v9, v8

    :goto_1
    if-ge v7, v9, :cond_d

    aget-object v2, v8, v7

    .line 337
    .local v2, "accountParcel":Landroid/os/Parcelable;
    check-cast v2, Landroid/accounts/Account;

    .end local v2    # "accountParcel":Landroid/os/Parcelable;
    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 336
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 339
    :cond_d
    const/4 v7, 0x0

    array-length v8, v4

    :goto_2
    if-ge v7, v8, :cond_e

    aget-object v0, v4, v7

    .line 340
    .local v0, "account":Landroid/accounts/Account;
    invoke-interface {v6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10

    .line 341
    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 342
    .restart local v1    # "accountName":Ljava/lang/String;
    iget-object v3, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 348
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "accountName":Ljava/lang/String;
    .end local v4    # "currentAccounts":[Landroid/accounts/Account;
    .end local v6    # "preExistingAccounts":Ljava/util/Set;, "Ljava/util/Set<Landroid/accounts/Account;>;"
    :cond_e
    if-nez v1, :cond_f

    if-eqz v3, :cond_7

    .line 349
    :cond_f
    invoke-direct {p0, v1, v3}, Landroid/accounts/ChooseTypeAndAccountActivity;->setResultAndFinish(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return-void

    .line 339
    .restart local v0    # "account":Landroid/accounts/Account;
    .restart local v4    # "currentAccounts":[Landroid/accounts/Account;
    .restart local v6    # "preExistingAccounts":Ljava/util/Set;, "Ljava/util/Set<Landroid/accounts/Account;>;"
    :cond_10
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method public onCancelButtonClicked(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 273
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->onBackPressed()V

    .line 272
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 142
    const-string/jumbo v7, "AccountChooser"

    invoke-static {v7, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 143
    const-string/jumbo v7, "AccountChooser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "ChooseTypeAndAccountActivity.onCreate(savedInstanceState="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 144
    const-string/jumbo v11, ")"

    .line 143
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    const/4 v3, 0x0

    .line 150
    .local v3, "message":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    .line 151
    .local v0, "activityToken":Landroid/os/IBinder;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-interface {v7, v0}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v7

    iput v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingUid:I

    .line 152
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-interface {v7, v0}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingPackage:Ljava/lang/String;

    .line 154
    iget v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingUid:I

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingPackage:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 155
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v7

    .line 156
    new-instance v10, Landroid/os/UserHandle;

    iget v11, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingUid:I

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    invoke-direct {v10, v11}, Landroid/os/UserHandle;-><init>(I)V

    .line 155
    invoke-virtual {v7, v10}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v5

    .line 158
    .local v5, "restrictions":Landroid/os/Bundle;
    const-string/jumbo v7, "no_modify_accounts"

    const/4 v10, 0x0

    invoke-virtual {v5, v7, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 157
    iput-boolean v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mDisallowAddAccounts:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v0    # "activityToken":Landroid/os/IBinder;
    .end local v5    # "restrictions":Landroid/os/Bundle;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 168
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_5

    .line 169
    iput-boolean v9, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mIsCanceled:Z

    .line 170
    const-string/jumbo v7, "pendingRequest"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    .line 172
    const-string/jumbo v7, "existingAccounts"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v7

    .line 171
    iput-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mExistingAccounts:[Landroid/os/Parcelable;

    .line 176
    const-string/jumbo v7, "selectedAccountName"

    .line 175
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedAccountName:Ljava/lang/String;

    .line 179
    const-string/jumbo v7, "selectedAddAccount"

    .line 178
    invoke-virtual {p1, v7, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedAddNewAccount:Z

    .line 180
    const-string/jumbo v7, "accountList"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/ArrayList;

    .line 192
    :cond_2
    :goto_1
    const-string/jumbo v7, "AccountChooser"

    invoke-static {v7, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 193
    const-string/jumbo v7, "AccountChooser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "selected account name is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedAccountName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_3
    invoke-direct {p0, v1}, Landroid/accounts/ChooseTypeAndAccountActivity;->getAllowableAccountSet(Landroid/content/Intent;)Ljava/util/Set;

    move-result-object v7

    iput-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSetOfAllowableAccounts:Ljava/util/Set;

    .line 198
    invoke-direct {p0, v1}, Landroid/accounts/ChooseTypeAndAccountActivity;->getReleventAccountTypes(Landroid/content/Intent;)Ljava/util/Set;

    move-result-object v7

    iput-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSetOfRelevantAccountTypes:Ljava/util/Set;

    .line 199
    const-string/jumbo v7, "descriptionTextOverride"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mDescriptionOverride:Ljava/lang/String;

    .line 201
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/accounts/ChooseTypeAndAccountActivity;->getAcceptableAccountChoices(Landroid/accounts/AccountManager;)Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/ArrayList;

    .line 202
    iget-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 203
    iget-boolean v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mDisallowAddAccounts:Z

    .line 202
    if-eqz v7, :cond_4

    .line 204
    invoke-virtual {p0, v8}, Landroid/accounts/ChooseTypeAndAccountActivity;->requestWindowFeature(I)Z

    .line 205
    const v7, 0x1090033

    invoke-virtual {p0, v7}, Landroid/accounts/ChooseTypeAndAccountActivity;->setContentView(I)V

    .line 206
    iput-boolean v8, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mDontShowPicker:Z

    .line 209
    :cond_4
    iget-boolean v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mDontShowPicker:Z

    if-eqz v7, :cond_6

    .line 210
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 211
    return-void

    .line 160
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v4

    .line 162
    .local v4, "re":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unable to get caller identity \n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 182
    .end local v4    # "re":Landroid/os/RemoteException;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_5
    iput v9, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    .line 183
    iput-object v12, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mExistingAccounts:[Landroid/os/Parcelable;

    .line 186
    const-string/jumbo v7, "selectedAccount"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/accounts/Account;

    .line 187
    .local v6, "selectedAccount":Landroid/accounts/Account;
    if-eqz v6, :cond_2

    .line 188
    iget-object v7, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedAccountName:Ljava/lang/String;

    goto/16 :goto_1

    .line 218
    .end local v6    # "selectedAccount":Landroid/accounts/Account;
    :cond_6
    iget v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    if-nez v7, :cond_7

    iget-boolean v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mIsCanceled:Z

    if-nez v7, :cond_7

    .line 221
    iget-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 222
    invoke-direct {p0, p1}, Landroid/accounts/ChooseTypeAndAccountActivity;->setNonLabelThemeAndCallSuperCreate(Landroid/os/Bundle;)V

    .line 223
    iget-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSetOfRelevantAccountTypes:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    if-ne v7, v8, :cond_8

    .line 224
    iget-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSetOfRelevantAccountTypes:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v7}, Landroid/accounts/ChooseTypeAndAccountActivity;->runAddAccountForAuthenticator(Ljava/lang/String;)V

    .line 231
    :cond_7
    :goto_2
    iget-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/ArrayList;

    invoke-direct {p0, v7}, Landroid/accounts/ChooseTypeAndAccountActivity;->getListOfDisplayableOptions(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "listItems":[Ljava/lang/String;
    iget-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/ArrayList;

    iget-object v10, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedAccountName:Ljava/lang/String;

    iget-boolean v11, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedAddNewAccount:Z

    .line 232
    invoke-direct {p0, v7, v10, v11}, Landroid/accounts/ChooseTypeAndAccountActivity;->getItemIndexToSelect(Ljava/util/ArrayList;Ljava/lang/String;Z)I

    move-result v7

    iput v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    .line 235
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 236
    const v7, 0x1090041

    invoke-virtual {p0, v7}, Landroid/accounts/ChooseTypeAndAccountActivity;->setContentView(I)V

    .line 237
    iget-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mDescriptionOverride:Ljava/lang/String;

    invoke-direct {p0, v7}, Landroid/accounts/ChooseTypeAndAccountActivity;->overrideDescriptionIfSupplied(Ljava/lang/String;)V

    .line 238
    invoke-direct {p0, v2}, Landroid/accounts/ChooseTypeAndAccountActivity;->populateUIAccountList([Ljava/lang/String;)V

    .line 241
    const v7, 0x102001a

    invoke-virtual {p0, v7}, Landroid/accounts/ChooseTypeAndAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mOkButton:Landroid/widget/Button;

    .line 242
    iget-object v10, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mOkButton:Landroid/widget/Button;

    iget v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    const/4 v11, -0x1

    if-eq v7, v11, :cond_9

    move v7, v8

    :goto_3
    invoke-virtual {v10, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 141
    return-void

    .line 226
    .end local v2    # "listItems":[Ljava/lang/String;
    :cond_8
    invoke-direct {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->startChooseAccountTypeActivity()V

    goto :goto_2

    .restart local v2    # "listItems":[Ljava/lang/String;
    :cond_9
    move v7, v9

    .line 242
    goto :goto_3
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 247
    const-string/jumbo v0, "AccountChooser"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    const-string/jumbo v0, "AccountChooser"

    const-string/jumbo v1, "ChooseTypeAndAccountActivity.onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 246
    return-void
.end method

.method public onOkButtonClicked(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 277
    iget v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    iget-object v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 279
    invoke-direct {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->startChooseAccountTypeActivity()V

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    iget v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 281
    iget-object v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/ArrayList;

    iget v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    invoke-direct {p0, v0}, Landroid/accounts/ChooseTypeAndAccountActivity;->onAccountSelected(Landroid/accounts/Account;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 255
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 256
    const-string/jumbo v0, "pendingRequest"

    iget v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 257
    iget v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 258
    const-string/jumbo v0, "existingAccounts"

    iget-object v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mExistingAccounts:[Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 260
    :cond_0
    iget v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 261
    iget v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    iget-object v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 262
    const-string/jumbo v0, "selectedAddAccount"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 269
    :cond_1
    :goto_0
    const-string/jumbo v0, "accountList"

    iget-object v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 254
    return-void

    .line 264
    :cond_2
    const-string/jumbo v0, "selectedAddAccount"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 265
    const-string/jumbo v1, "selectedAccountName"

    .line 266
    iget-object v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/ArrayList;

    iget v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 265
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 380
    .local p1, "accountManagerFuture":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 382
    .local v0, "accountManagerResult":Landroid/os/Bundle;
    const-string/jumbo v6, "intent"

    .line 381
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 383
    .local v5, "intent":Landroid/content/Intent;
    if-eqz v5, :cond_0

    .line 384
    const/4 v6, 0x2

    iput v6, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    .line 385
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    iget-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingPackage:Ljava/lang/String;

    .line 386
    iget v8, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingUid:I

    .line 385
    invoke-virtual {v6, v7, v8}, Landroid/accounts/AccountManager;->getAccountsForPackage(Ljava/lang/String;I)[Landroid/accounts/Account;

    move-result-object v6

    iput-object v6, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mExistingAccounts:[Landroid/os/Parcelable;

    .line 387
    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const v7, -0x10000001

    and-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 388
    const/4 v6, 0x2

    invoke-virtual {p0, v5, v6}, Landroid/accounts/ChooseTypeAndAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    .line 389
    return-void

    .line 391
    .end local v0    # "accountManagerResult":Landroid/os/Bundle;
    .end local v5    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 392
    .local v3, "e":Landroid/accounts/OperationCanceledException;
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Landroid/accounts/ChooseTypeAndAccountActivity;->setResult(I)V

    .line 393
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->finish()V

    .line 394
    return-void

    .line 395
    .end local v3    # "e":Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v4

    .line 398
    :cond_0
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 399
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "errorMessage"

    const-string/jumbo v7, "error communicating with server"

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v6, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {p0, v7, v6}, Landroid/accounts/ChooseTypeAndAccountActivity;->setResult(ILandroid/content/Intent;)V

    .line 401
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->finish()V

    .line 378
    return-void

    .line 396
    .end local v1    # "bundle":Landroid/os/Bundle;
    :catch_2
    move-exception v2

    .local v2, "e":Landroid/accounts/AuthenticatorException;
    goto :goto_0
.end method

.method protected runAddAccountForAuthenticator(Ljava/lang/String;)V
    .locals 8
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 364
    const-string/jumbo v0, "AccountChooser"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    const-string/jumbo v0, "AccountChooser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "runAddAccountForAuthenticator: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_0
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 368
    const-string/jumbo v1, "addAccountOptions"

    .line 367
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 369
    .local v4, "options":Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 370
    const-string/jumbo v1, "addAccountRequiredFeatures"

    .line 369
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 371
    .local v3, "requiredFeatures":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 372
    const-string/jumbo v1, "authTokenType"

    .line 371
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 373
    .local v2, "authTokenType":Ljava/lang/String;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    move-object v1, p1

    move-object v6, p0

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 363
    return-void
.end method
