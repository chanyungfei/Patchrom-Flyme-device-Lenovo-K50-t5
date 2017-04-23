.class public Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
.super Ljava/lang/Object;
.source "CustomAccountRemoteViews.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/widget/CustomAccountRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIcon:Landroid/graphics/Bitmap;

.field private mIconId:I

.field private mIntent:Landroid/content/Intent;

.field private mIsActive:Z

.field private mIsSimAccount:Z

.field private mLabel:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 523
    new-instance v0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo$1;

    invoke-direct {v0}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo$1;-><init>()V

    .line 522
    sput-object v0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 342
    return-void
.end method

.method public constructor <init>(ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Z)V
    .locals 8
    .param p1, "iconId"    # I
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "isActive"    # Z

    .prologue
    .line 385
    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;-><init>(ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZZ)V

    .line 384
    return-void
.end method

.method public constructor <init>(ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZZ)V
    .locals 0
    .param p1, "iconId"    # I
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "isActive"    # Z
    .param p7, "isSimAccount"    # Z

    .prologue
    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    iput p1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIconId:I

    .line 401
    iput-object p2, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 402
    iput-object p3, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mLabel:Ljava/lang/String;

    .line 403
    iput-object p4, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mNumber:Ljava/lang/String;

    .line 404
    iput-object p5, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIntent:Landroid/content/Intent;

    .line 405
    iput-boolean p6, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIsActive:Z

    .line 406
    iput-boolean p7, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIsSimAccount:Z

    .line 399
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 8
    .param p1, "iconId"    # I
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;

    .prologue
    .line 371
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;-><init>(ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZZ)V

    .line 370
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 8
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 359
    const/4 v7, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, v1

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;-><init>(ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZZ)V

    .line 358
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 512
    invoke-virtual {p0}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 513
    .local v0, "loader":Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIconId:I

    .line 514
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 515
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mLabel:Ljava/lang/String;

    .line 516
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mNumber:Ljava/lang/String;

    .line 517
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIntent:Landroid/content/Intent;

    .line 518
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIsActive:Z

    .line 519
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIsSimAccount:Z

    .line 511
    return-void

    :cond_0
    move v1, v3

    .line 518
    goto :goto_0

    :cond_1
    move v2, v3

    .line 519
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 497
    const/4 v0, 0x0

    return v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 425
    iget-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIcon:Landroid/graphics/Bitmap;

    return-object v0

    .line 428
    :cond_0
    return-object v1
.end method

.method public getIconId()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 414
    iget v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIconId:I

    if-eqz v0, :cond_0

    .line 415
    iget v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIconId:I

    return v0

    .line 417
    :cond_0
    return v1
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 468
    iget-boolean v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIsActive:Z

    return v0
.end method

.method public isSimAccount()Z
    .locals 1

    .prologue
    .line 484
    iget-boolean v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIsSimAccount:Z

    return v0
.end method

.method public setActiveStatus(Z)V
    .locals 0
    .param p1, "active"    # Z

    .prologue
    .line 476
    iput-boolean p1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIsActive:Z

    .line 475
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 452
    iput-object p1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIntent:Landroid/content/Intent;

    .line 451
    return-void
.end method

.method public setSimAccount(Z)V
    .locals 0
    .param p1, "isSimAccount"    # Z

    .prologue
    .line 492
    iput-boolean p1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIsSimAccount:Z

    .line 491
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 502
    iget v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIconId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 503
    iget-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 504
    iget-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 505
    iget-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 506
    iget-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 507
    iget-boolean v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIsActive:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    iget-boolean v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIsSimAccount:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    return-void

    :cond_0
    move v0, v2

    .line 507
    goto :goto_0

    :cond_1
    move v1, v2

    .line 508
    goto :goto_1
.end method
