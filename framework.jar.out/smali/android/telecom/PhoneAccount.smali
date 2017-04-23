.class public final Landroid/telecom/PhoneAccount;
.super Ljava/lang/Object;
.source "PhoneAccount.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/PhoneAccount$Builder;,
        Landroid/telecom/PhoneAccount$1;
    }
.end annotation


# static fields
.field public static final CAPABILITY_CALL_PROVIDER:I = 0x2

.field public static final CAPABILITY_CALL_SUBJECT:I = 0x40

.field public static final CAPABILITY_CDMA_CALL_PROVIDER:I = 0x200

.field public static final CAPABILITY_CONNECTION_MANAGER:I = 0x1

.field public static final CAPABILITY_MULTI_USER:I = 0x20

.field public static final CAPABILITY_PLACE_EMERGENCY_CALLS:I = 0x10

.field public static final CAPABILITY_SIM_SUBSCRIPTION:I = 0x4

.field public static final CAPABILITY_UNAVAILABLE_FOR_CALL:I = 0x800

.field public static final CAPABILITY_VIDEO_CALLING:I = 0x8

.field public static final CAPABILITY_VOLTE_CALLING:I = 0x80

.field public static final CAPABILITY_VOLTE_CONFERENCE_ENHANCED:I = 0x100

.field public static final CAPABILITY_WIFI_CALLING:I = 0x400

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/PhoneAccount;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_HIGHLIGHT_COLOR:I = 0x0

.field public static final NO_ICON_TINT:I = 0x0

.field public static final NO_RESOURCE_ID:I = -0x1

.field public static final SCHEME_SIP:Ljava/lang/String; = "sip"

.field public static final SCHEME_TEL:Ljava/lang/String; = "tel"

.field public static final SCHEME_VOICEMAIL:Ljava/lang/String; = "voicemail"


# instance fields
.field private final mAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private final mAddress:Landroid/net/Uri;

.field private final mCapabilities:I

.field private final mHighlightColor:I

.field private final mIcon:Landroid/graphics/drawable/Icon;

.field private mIsEnabled:Z

.field private final mLabel:Ljava/lang/CharSequence;

.field private final mShortDescription:Ljava/lang/CharSequence;

.field private final mSubscriptionAddress:Landroid/net/Uri;

.field private final mSupportedUriSchemes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 620
    new-instance v0, Landroid/telecom/PhoneAccount$1;

    invoke-direct {v0}, Landroid/telecom/PhoneAccount$1;-><init>()V

    .line 619
    sput-object v0, Landroid/telecom/PhoneAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 57
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 632
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 633
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    .line 634
    sget-object v0, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    iput-object v0, p0, Landroid/telecom/PhoneAccount;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 638
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    .line 639
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/telecom/PhoneAccount;->mAddress:Landroid/net/Uri;

    .line 643
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_2

    .line 644
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/telecom/PhoneAccount;->mSubscriptionAddress:Landroid/net/Uri;

    .line 648
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/PhoneAccount;->mCapabilities:I

    .line 649
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/PhoneAccount;->mHighlightColor:I

    .line 650
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount;->mLabel:Ljava/lang/CharSequence;

    .line 651
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount;->mShortDescription:Ljava/lang/CharSequence;

    .line 652
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount;->mSupportedUriSchemes:Ljava/util/List;

    .line 653
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_3

    .line 654
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/telecom/PhoneAccount;->mIcon:Landroid/graphics/drawable/Icon;

    .line 658
    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Landroid/telecom/PhoneAccount;->mIsEnabled:Z

    .line 632
    return-void

    .line 636
    :cond_0
    iput-object v3, p0, Landroid/telecom/PhoneAccount;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    goto :goto_0

    .line 641
    :cond_1
    iput-object v3, p0, Landroid/telecom/PhoneAccount;->mAddress:Landroid/net/Uri;

    goto :goto_1

    .line 646
    :cond_2
    iput-object v3, p0, Landroid/telecom/PhoneAccount;->mSubscriptionAddress:Landroid/net/Uri;

    goto :goto_2

    .line 656
    :cond_3
    iput-object v3, p0, Landroid/telecom/PhoneAccount;->mIcon:Landroid/graphics/drawable/Icon;

    goto :goto_3

    :cond_4
    move v0, v2

    .line 658
    goto :goto_4
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telecom/PhoneAccount;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/PhoneAccount;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/net/Uri;ILandroid/graphics/drawable/Icon;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;Z)V
    .locals 1
    .param p1, "account"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "address"    # Landroid/net/Uri;
    .param p3, "subscriptionAddress"    # Landroid/net/Uri;
    .param p4, "capabilities"    # I
    .param p5, "icon"    # Landroid/graphics/drawable/Icon;
    .param p6, "highlightColor"    # I
    .param p7, "label"    # Ljava/lang/CharSequence;
    .param p8, "shortDescription"    # Ljava/lang/CharSequence;
    .param p10, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/PhoneAccountHandle;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "I",
            "Landroid/graphics/drawable/Icon;",
            "I",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 394
    .local p9, "supportedUriSchemes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    iput-object p1, p0, Landroid/telecom/PhoneAccount;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 406
    iput-object p2, p0, Landroid/telecom/PhoneAccount;->mAddress:Landroid/net/Uri;

    .line 407
    iput-object p3, p0, Landroid/telecom/PhoneAccount;->mSubscriptionAddress:Landroid/net/Uri;

    .line 408
    iput p4, p0, Landroid/telecom/PhoneAccount;->mCapabilities:I

    .line 409
    iput-object p5, p0, Landroid/telecom/PhoneAccount;->mIcon:Landroid/graphics/drawable/Icon;

    .line 410
    iput p6, p0, Landroid/telecom/PhoneAccount;->mHighlightColor:I

    .line 411
    iput-object p7, p0, Landroid/telecom/PhoneAccount;->mLabel:Ljava/lang/CharSequence;

    .line 412
    iput-object p8, p0, Landroid/telecom/PhoneAccount;->mShortDescription:Ljava/lang/CharSequence;

    .line 413
    invoke-static {p9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount;->mSupportedUriSchemes:Ljava/util/List;

    .line 414
    iput-boolean p10, p0, Landroid/telecom/PhoneAccount;->mIsEnabled:Z

    .line 404
    return-void
.end method

.method synthetic constructor <init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/net/Uri;ILandroid/graphics/drawable/Icon;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;ZLandroid/telecom/PhoneAccount;)V
    .locals 0
    .param p1, "account"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "address"    # Landroid/net/Uri;
    .param p3, "subscriptionAddress"    # Landroid/net/Uri;
    .param p4, "capabilities"    # I
    .param p5, "icon"    # Landroid/graphics/drawable/Icon;
    .param p6, "highlightColor"    # I
    .param p7, "label"    # Ljava/lang/CharSequence;
    .param p8, "shortDescription"    # Ljava/lang/CharSequence;
    .param p9, "supportedUriSchemes"    # Ljava/util/List;
    .param p10, "isEnabled"    # Z

    .prologue
    invoke-direct/range {p0 .. p10}, Landroid/telecom/PhoneAccount;-><init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/net/Uri;ILandroid/graphics/drawable/Icon;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;Z)V

    return-void
.end method

.method public static builder(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)Landroid/telecom/PhoneAccount$Builder;
    .locals 1
    .param p0, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 420
    new-instance v0, Landroid/telecom/PhoneAccount$Builder;

    invoke-direct {v0, p0, p1}, Landroid/telecom/PhoneAccount$Builder;-><init>(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 581
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 687
    if-eqz p1, :cond_1

    instance-of v2, p1, Landroid/telecom/PhoneAccount;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 691
    check-cast v0, Landroid/telecom/PhoneAccount;

    .line 692
    .local v0, "targetAccount":Landroid/telecom/PhoneAccount;
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getCapabilities()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Landroid/telecom/PhoneAccount;->getCapabilities()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 693
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getHighlightColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Landroid/telecom/PhoneAccount;->getHighlightColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 692
    if-eqz v2, :cond_0

    .line 694
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 692
    if-eqz v2, :cond_0

    .line 695
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getShortDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0}, Landroid/telecom/PhoneAccount;->getShortDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 692
    if-eqz v2, :cond_0

    .line 696
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAddress()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0}, Landroid/telecom/PhoneAccount;->getAddress()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 692
    if-eqz v2, :cond_0

    .line 697
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getSubscriptionAddress()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0}, Landroid/telecom/PhoneAccount;->getSubscriptionAddress()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 692
    if-eqz v2, :cond_0

    .line 698
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getSupportedUriSchemes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Landroid/telecom/PhoneAccount;->getSupportedUriSchemes()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 692
    if-eqz v2, :cond_0

    .line 699
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    invoke-virtual {p0}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 692
    :cond_0
    return v1

    .line 688
    .end local v0    # "targetAccount":Landroid/telecom/PhoneAccount;
    :cond_1
    return v1
.end method

.method public getAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public getAddress()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public getCapabilities()I
    .locals 1

    .prologue
    .line 471
    iget v0, p0, Landroid/telecom/PhoneAccount;->mCapabilities:I

    return v0
.end method

.method public getHighlightColor()I
    .locals 1

    .prologue
    .line 558
    iget v0, p0, Landroid/telecom/PhoneAccount;->mHighlightColor:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getShortDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mShortDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSubscriptionAddress()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mSubscriptionAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public getSupportedUriSchemes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 509
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mSupportedUriSchemes:Ljava/util/List;

    return-object v0
.end method

.method public hasCapabilities(I)Z
    .locals 1
    .param p1, "capability"    # I

    .prologue
    .line 482
    iget v0, p0, Landroid/telecom/PhoneAccount;->mCapabilities:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 528
    iget-boolean v0, p0, Landroid/telecom/PhoneAccount;->mIsEnabled:Z

    return v0
.end method

.method public setIsEnabled(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .prologue
    .line 567
    iget-boolean v0, p0, Landroid/telecom/PhoneAccount;->mIsEnabled:Z

    if-eq v0, p1, :cond_0

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[setIsEnabled]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/PhoneAccount;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 569
    iget-boolean v1, p0, Landroid/telecom/PhoneAccount;->mIsEnabled:Z

    .line 568
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 569
    const-string/jumbo v1, " -> "

    .line 568
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 572
    :cond_0
    iput-boolean p1, p0, Landroid/telecom/PhoneAccount;->mIsEnabled:Z

    .line 565
    return-void
.end method

.method public supportsUriScheme(Ljava/lang/String;)Z
    .locals 4
    .param p1, "uriScheme"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 540
    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mSupportedUriSchemes:Ljava/util/List;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 541
    :cond_0
    return v3

    .line 544
    :cond_1
    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mSupportedUriSchemes:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "scheme$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 545
    .local v0, "scheme":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 546
    const/4 v2, 0x1

    return v2

    .line 549
    .end local v0    # "scheme":Ljava/lang/String;
    :cond_3
    return v3
.end method

.method public toBuilder()Landroid/telecom/PhoneAccount$Builder;
    .locals 1

    .prologue
    .line 428
    new-instance v0, Landroid/telecom/PhoneAccount$Builder;

    invoke-direct {v0, p0}, Landroid/telecom/PhoneAccount$Builder;-><init>(Landroid/telecom/PhoneAccount;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 663
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 664
    iget-boolean v3, p0, Landroid/telecom/PhoneAccount;->mIsEnabled:Z

    if-eqz v3, :cond_0

    const/16 v3, 0x58

    .line 663
    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 665
    const-string/jumbo v4, "] PhoneAccount: "

    .line 663
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 666
    iget-object v4, p0, Landroid/telecom/PhoneAccount;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 663
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 667
    const-string/jumbo v4, " Capabilities: "

    .line 663
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 668
    iget v4, p0, Landroid/telecom/PhoneAccount;->mCapabilities:I

    .line 663
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 669
    const-string/jumbo v4, " Schemes: "

    .line 663
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 670
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Landroid/telecom/PhoneAccount;->mSupportedUriSchemes:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "scheme$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 671
    .local v1, "scheme":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 672
    const-string/jumbo v4, " "

    .line 671
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 664
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "scheme":Ljava/lang/String;
    .end local v2    # "scheme$iterator":Ljava/util/Iterator;
    :cond_0
    const/16 v3, 0x20

    goto :goto_0

    .line 674
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    .restart local v2    # "scheme$iterator":Ljava/util/Iterator;
    :cond_1
    const-string/jumbo v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 586
    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    if-nez v2, :cond_0

    .line 587
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 592
    :goto_0
    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mAddress:Landroid/net/Uri;

    if-nez v2, :cond_1

    .line 593
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 598
    :goto_1
    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mSubscriptionAddress:Landroid/net/Uri;

    if-nez v2, :cond_2

    .line 599
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 604
    :goto_2
    iget v2, p0, Landroid/telecom/PhoneAccount;->mCapabilities:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 605
    iget v2, p0, Landroid/telecom/PhoneAccount;->mHighlightColor:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 606
    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 607
    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mShortDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 608
    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mSupportedUriSchemes:Ljava/util/List;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 610
    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mIcon:Landroid/graphics/drawable/Icon;

    if-nez v2, :cond_3

    .line 611
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 616
    :goto_3
    iget-boolean v2, p0, Landroid/telecom/PhoneAccount;->mIsEnabled:Z

    if-eqz v2, :cond_4

    :goto_4
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 585
    return-void

    .line 589
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 590
    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v2, p1, p2}, Landroid/telecom/PhoneAccountHandle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 595
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 596
    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mAddress:Landroid/net/Uri;

    invoke-virtual {v2, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 601
    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 602
    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mSubscriptionAddress:Landroid/net/Uri;

    invoke-virtual {v2, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 613
    :cond_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 614
    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_4
    move v0, v1

    .line 616
    goto :goto_4
.end method
