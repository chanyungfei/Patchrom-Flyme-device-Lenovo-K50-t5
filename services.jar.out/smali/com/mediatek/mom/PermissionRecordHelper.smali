.class Lcom/mediatek/mom/PermissionRecordHelper;
.super Ljava/lang/Object;
.source "PermissionRecordHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mom/PermissionRecordHelper$CacheInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PermissionRecordHelper"

.field private static mInstance:Lcom/mediatek/mom/PermissionRecordHelper;


# instance fields
.field private mParentPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/Permission;",
            ">;"
        }
    .end annotation
.end field

.field private mPkgPermissionCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/mom/PermissionRecordHelper$CacheInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    sput-object v0, Lcom/mediatek/mom/PermissionRecordHelper;->mInstance:Lcom/mediatek/mom/PermissionRecordHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mom/PermissionRecordHelper;->mParentPermissions:Ljava/util/List;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mom/PermissionRecordHelper;->mPkgPermissionCache:Ljava/util/Map;

    .line 104
    invoke-direct {p0}, Lcom/mediatek/mom/PermissionRecordHelper;->initStubSubPermission()V

    .line 105
    return-void
.end method

.method private bindPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 691
    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/mom/PermissionRecordHelper;->bindPermission(Ljava/lang/String;Ljava/lang/String;I)V

    .line 692
    return-void
.end method

.method private bindPermission(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 695
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    .line 696
    invoke-static {p1, p3, v1}, Lcom/mediatek/mom/PermissionRecordHelper;->createSubPermission(Ljava/lang/String;II)Lcom/mediatek/common/mom/Permission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 699
    iget-object v1, p0, Lcom/mediatek/mom/PermissionRecordHelper;->mParentPermissions:Ljava/util/List;

    new-instance v2, Lcom/mediatek/common/mom/Permission;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, p2, v0, v3, v4}, Lcom/mediatek/common/mom/Permission;-><init>(Ljava/lang/String;Ljava/util/List;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 704
    return-void
.end method

.method private bindPermissions([Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 707
    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/mom/PermissionRecordHelper;->bindPermissions([Ljava/lang/String;Ljava/lang/String;I)V

    .line 708
    return-void
.end method

.method private bindPermissions([Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 711
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 712
    :goto_0
    array-length v3, p1

    if-lt v0, v3, :cond_0

    .line 717
    iget-object v0, p0, Lcom/mediatek/mom/PermissionRecordHelper;->mParentPermissions:Ljava/util/List;

    new-instance v3, Lcom/mediatek/common/mom/Permission;

    const/4 v4, 0x1

    invoke-direct {v3, p2, v2, v1, v4}, Lcom/mediatek/common/mom/Permission;-><init>(Ljava/lang/String;Ljava/util/List;II)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 722
    return-void

    .line 713
    :cond_0
    aget-object v3, p1, v0

    const/4 v4, 0x2

    invoke-static {v3, p3, v4}, Lcom/mediatek/mom/PermissionRecordHelper;->createSubPermission(Ljava/lang/String;II)Lcom/mediatek/common/mom/Permission;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 712
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private copyPermissionSettings(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/Permission;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/Permission;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    if-nez p1, :cond_1

    :cond_0
    const-string/jumbo v0, "PermissionRecordHelper"

    const-string/jumbo v1, "copyPermissionSettings() failed!"

    .line 177
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void

    .line 176
    :cond_1
    if-eqz p2, :cond_0

    .line 180
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 181
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 192
    return-void

    .line 182
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/mom/Permission;

    .line 183
    iget-object v2, v0, Lcom/mediatek/common/mom/Permission;->mPermissionName:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/mediatek/mom/PermissionRecordHelper;->findPermissionByName(Ljava/lang/String;Ljava/util/List;)Lcom/mediatek/common/mom/Permission;

    move-result-object v2

    .line 184
    if-nez v2, :cond_4

    .line 188
    :goto_1
    iget-object v3, v0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 189
    iget-object v2, v2, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    iget-object v0, v0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    invoke-direct {p0, v2, v0}, Lcom/mediatek/mom/PermissionRecordHelper;->copyPermissionSettings(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "PermissionRecordHelper"

    .line 185
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Copy "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/mediatek/common/mom/Permission;->mPermissionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " with status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/mediatek/common/mom/Permission;->getStatus()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {v2}, Lcom/mediatek/common/mom/Permission;->getStatus()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/mediatek/common/mom/Permission;->setStatus(I)V

    goto :goto_1
.end method

.method private static createParentPermission(Ljava/lang/String;IILjava/util/List;)Lcom/mediatek/common/mom/Permission;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/Permission;",
            ">;)",
            "Lcom/mediatek/common/mom/Permission;"
        }
    .end annotation

    .prologue
    .line 736
    invoke-static {p0, p3, p1, p2}, Lcom/mediatek/mom/PermissionRecordHelper;->createPermission(Ljava/lang/String;Ljava/util/List;II)Lcom/mediatek/common/mom/Permission;

    move-result-object v0

    return-object v0
.end method

.method private static createPermission(Ljava/lang/String;Ljava/util/List;II)Lcom/mediatek/common/mom/Permission;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/Permission;",
            ">;II)",
            "Lcom/mediatek/common/mom/Permission;"
        }
    .end annotation

    .prologue
    .line 727
    new-instance v0, Lcom/mediatek/common/mom/Permission;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mediatek/common/mom/Permission;-><init>(Ljava/lang/String;Ljava/util/List;II)V

    return-object v0
.end method

.method private static createSubPermission(Ljava/lang/String;II)Lcom/mediatek/common/mom/Permission;
    .locals 2

    .prologue
    .line 731
    or-int/lit8 v0, p2, 0x2

    const/4 v1, 0x0

    .line 732
    invoke-static {p0, v1, p1, v0}, Lcom/mediatek/mom/PermissionRecordHelper;->createPermission(Ljava/lang/String;Ljava/util/List;II)Lcom/mediatek/common/mom/Permission;

    move-result-object v0

    return-object v0
.end method

.method public static findParentPermissionByName(Ljava/lang/String;Ljava/util/List;)Lcom/mediatek/common/mom/Permission;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/Permission;",
            ">;)",
            "Lcom/mediatek/common/mom/Permission;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 461
    if-nez p0, :cond_1

    .line 462
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "subPermissionName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "permissionList :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_1
    if-eqz p1, :cond_0

    .line 465
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 466
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 477
    return-object v3

    .line 467
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/mom/Permission;

    .line 469
    iget-object v2, v0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 470
    iget-object v2, v0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    invoke-static {p0, v2}, Lcom/mediatek/mom/PermissionRecordHelper;->findPermissionByName(Ljava/lang/String;Ljava/util/List;)Lcom/mediatek/common/mom/Permission;

    move-result-object v2

    .line 471
    if-eqz v2, :cond_2

    .line 473
    return-object v0
.end method

.method public static findPermissionByName(Ljava/lang/String;Ljava/util/List;)Lcom/mediatek/common/mom/Permission;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/Permission;",
            ">;)",
            "Lcom/mediatek/common/mom/Permission;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 437
    if-nez p0, :cond_1

    .line 438
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "permissionName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "permissionList :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_1
    if-eqz p1, :cond_0

    .line 441
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 442
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 454
    return-object v3

    .line 443
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/mom/Permission;

    .line 445
    iget-object v2, v0, Lcom/mediatek/common/mom/Permission;->mPermissionName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 447
    iget-object v2, v0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 448
    iget-object v0, v0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/mediatek/mom/PermissionRecordHelper;->findPermissionByName(Ljava/lang/String;Ljava/util/List;)Lcom/mediatek/common/mom/Permission;

    move-result-object v0

    .line 449
    if-eqz v0, :cond_2

    .line 450
    return-object v0

    .line 446
    :cond_4
    return-object v0
.end method

.method public static getInstance()Lcom/mediatek/mom/PermissionRecordHelper;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/mediatek/mom/PermissionRecordHelper;->mInstance:Lcom/mediatek/mom/PermissionRecordHelper;

    if-eqz v0, :cond_0

    .line 111
    :goto_0
    sget-object v0, Lcom/mediatek/mom/PermissionRecordHelper;->mInstance:Lcom/mediatek/mom/PermissionRecordHelper;

    return-object v0

    .line 109
    :cond_0
    new-instance v0, Lcom/mediatek/mom/PermissionRecordHelper;

    invoke-direct {v0}, Lcom/mediatek/mom/PermissionRecordHelper;-><init>()V

    sput-object v0, Lcom/mediatek/mom/PermissionRecordHelper;->mInstance:Lcom/mediatek/mom/PermissionRecordHelper;

    goto :goto_0
.end method

.method private getPermissionList(Landroid/content/pm/PackageInfo;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/Permission;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 270
    if-eqz p1, :cond_1

    .line 275
    iget-object v5, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 276
    iget-object v6, p1, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    .line 278
    if-nez v5, :cond_2

    :cond_0
    move-object v0, v3

    .line 311
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, "PermissionRecordHelper"

    const-string/jumbo v1, "getPermissionList() failed! null package info"

    .line 271
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return-object v3

    .line 278
    :cond_2
    array-length v0, v5

    if-lez v0, :cond_0

    .line 279
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 281
    :goto_1
    array-length v0, v5

    if-lt v1, v0, :cond_3

    move-object v0, v4

    goto :goto_0

    .line 282
    :cond_3
    aget v0, v6, v1

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 288
    aget-object v0, v5, v1

    iget-object v7, p0, Lcom/mediatek/mom/PermissionRecordHelper;->mParentPermissions:Ljava/util/List;

    invoke-static {v0, v7}, Lcom/mediatek/mom/PermissionRecordHelper;->findPermissionByName(Ljava/lang/String;Ljava/util/List;)Lcom/mediatek/common/mom/Permission;

    move-result-object v0

    .line 290
    if-nez v0, :cond_5

    .line 281
    :cond_4
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 292
    :cond_5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 293
    iget-object v0, v0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 296
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 303
    new-instance v0, Lcom/mediatek/common/mom/Permission;

    aget-object v8, v5, v1

    const/4 v9, 0x1

    invoke-direct {v0, v8, v7, v2, v9}, Lcom/mediatek/common/mom/Permission;-><init>(Ljava/lang/String;Ljava/util/List;II)V

    .line 307
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 297
    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/mom/Permission;

    .line 298
    new-instance v9, Lcom/mediatek/common/mom/Permission;

    iget-object v10, v0, Lcom/mediatek/common/mom/Permission;->mPermissionName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/mediatek/common/mom/Permission;->getStatus()I

    move-result v11

    invoke-virtual {v0}, Lcom/mediatek/common/mom/Permission;->getFlag()I

    move-result v0

    invoke-direct {v9, v10, v3, v11, v0}, Lcom/mediatek/common/mom/Permission;-><init>(Ljava/lang/String;Ljava/util/List;II)V

    .line 299
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method private initStubSubPermission()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 599
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "sub-permission.MODIFY_SMS"

    aput-object v1, v0, v3

    const-string/jumbo v1, "sub-permission.MODIFY_MMS"

    aput-object v1, v0, v4

    const-string/jumbo v1, "sub-permission.SEND_SMS"

    aput-object v1, v0, v5

    const-string/jumbo v1, "android.permission.SEND_SMS"

    .line 603
    invoke-direct {p0, v0, v1}, Lcom/mediatek/mom/PermissionRecordHelper;->bindPermissions([Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "sub-permission.SEND_MMS"

    aput-object v1, v0, v3

    const-string/jumbo v1, "sub-permission.SEND_EMAIL"

    aput-object v1, v0, v4

    const-string/jumbo v1, "android.permission.INTERNET"

    .line 611
    invoke-direct {p0, v0, v1}, Lcom/mediatek/mom/PermissionRecordHelper;->bindPermissions([Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "sub-permission.QUERY_SMS"

    aput-object v1, v0, v3

    const-string/jumbo v1, "sub-permission.QUERY_MMS"

    aput-object v1, v0, v4

    const-string/jumbo v1, "android.permission.READ_SMS"

    .line 617
    invoke-direct {p0, v0, v1}, Lcom/mediatek/mom/PermissionRecordHelper;->bindPermissions([Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sub-permission.QUERY_CONTACTS"

    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    .line 621
    invoke-direct {p0, v0, v1}, Lcom/mediatek/mom/PermissionRecordHelper;->bindPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sub-permission.MODIFY_CONTACTS"

    const-string/jumbo v1, "android.permission.WRITE_CONTACTS"

    .line 624
    invoke-direct {p0, v0, v1}, Lcom/mediatek/mom/PermissionRecordHelper;->bindPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sub-permission.QUERY_CALL_LOG"

    const-string/jumbo v1, "android.permission.READ_CALL_LOG"

    .line 627
    invoke-direct {p0, v0, v1}, Lcom/mediatek/mom/PermissionRecordHelper;->bindPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sub-permission.MODIFY_CALL_LOG"

    const-string/jumbo v1, "android.permission.WRITE_CALL_LOG"

    .line 630
    invoke-direct {p0, v0, v1}, Lcom/mediatek/mom/PermissionRecordHelper;->bindPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sub-permission.ACCESS_LOCATION"

    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 633
    invoke-direct {p0, v0, v1}, Lcom/mediatek/mom/PermissionRecordHelper;->bindPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sub-permission.RECORD_MIC"

    const-string/jumbo v1, "android.permission.RECORD_AUDIO"

    .line 636
    invoke-direct {p0, v0, v1}, Lcom/mediatek/mom/PermissionRecordHelper;->bindPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sub-permission.OPEN_CAMERA"

    const-string/jumbo v1, "android.permission.CAMERA"

    .line 639
    invoke-direct {p0, v0, v1}, Lcom/mediatek/mom/PermissionRecordHelper;->bindPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "sub-permission.MAKE_CALL"

    aput-object v1, v0, v3

    const-string/jumbo v1, "sub-permission.MAKE_CONFERENCE_CALL"

    aput-object v1, v0, v4

    const-string/jumbo v1, "android.permission.CALL_PHONE"

    .line 645
    invoke-direct {p0, v0, v1}, Lcom/mediatek/mom/PermissionRecordHelper;->bindPermissions([Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sub-permission.READ_PHONE_IMEI"

    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    .line 648
    invoke-direct {p0, v0, v1}, Lcom/mediatek/mom/PermissionRecordHelper;->bindPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sub-permission.CHANGE_NETWORK_STATE_ON"

    const-string/jumbo v1, "android.permission.CHANGE_NETWORK_STATE"

    .line 651
    invoke-direct {p0, v0, v1}, Lcom/mediatek/mom/PermissionRecordHelper;->bindPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sub-permission.CHANGE_WIFI_STATE_ON"

    const-string/jumbo v1, "android.permission.CHANGE_WIFI_STATE"

    .line 654
    invoke-direct {p0, v0, v1}, Lcom/mediatek/mom/PermissionRecordHelper;->bindPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sub-permission.CHANGE_BT_STATE_ON"

    const-string/jumbo v1, "android.permission.BLUETOOTH_ADMIN"

    .line 657
    invoke-direct {p0, v0, v1}, Lcom/mediatek/mom/PermissionRecordHelper;->bindPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ro.mtk_hotknot_support"

    .line 660
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    const-string/jumbo v0, "ro.mtk_op01_rcs"

    .line 665
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 688
    :goto_1
    return-void

    :cond_0
    const-string/jumbo v0, "sub-permission.ACCESS_HOTKNOT"

    const-string/jumbo v1, "android.permission.HOTKNOT"

    .line 661
    invoke-direct {p0, v0, v1}, Lcom/mediatek/mom/PermissionRecordHelper;->bindPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "sub-permission.RCS_SET_PROFILE_INFO"

    const-string/jumbo v1, "com.cmcc.ccs.WRITE_PROFILE"

    .line 667
    invoke-direct {p0, v0, v1}, Lcom/mediatek/mom/PermissionRecordHelper;->bindPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x7

    .line 670
    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "sub-permission.RCS_SET_GROUP_CHAIRMEN"

    aput-object v1, v0, v3

    const-string/jumbo v1, "sub-permission.RCS_MODIFY_GROUP_SUBJECT"

    aput-object v1, v0, v4

    const-string/jumbo v1, "sub-permission.RCS_ACCEPT_GROUP_INVITE"

    aput-object v1, v0, v5

    const-string/jumbo v1, "sub-permission.RCS_REMOVE_PARTICIPANTS"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string/jumbo v2, "sub-permission.RCS_MODIFY_SELF_NICKNAME"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "sub-permission.RCS_QUIT_CONVERSATION"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "sub-permission.RCS_ABORT_CONVERSATION"

    aput-object v2, v0, v1

    const-string/jumbo v1, "com.cmcc.ccs.WRITE_GROUP_CHAT"

    .line 678
    invoke-direct {p0, v0, v1}, Lcom/mediatek/mom/PermissionRecordHelper;->bindPermissions([Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "sub-permission.RCS_REPORT_PA"

    aput-object v1, v0, v3

    const-string/jumbo v1, "sub-permission.RCS_FOLLOW_PA"

    aput-object v1, v0, v4

    const-string/jumbo v1, "sub-permission.RCS_UNFOLLOW_PA"

    aput-object v1, v0, v5

    const-string/jumbo v1, "com.cmcc.ccs.WRITE_PUBLICACCOUNT"

    .line 685
    invoke-direct {p0, v0, v1}, Lcom/mediatek/mom/PermissionRecordHelper;->bindPermissions([Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static isSubPermission(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 492
    and-int/lit8 v1, p0, 0x2

    if-gtz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSystemPermission(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 488
    and-int/lit8 v1, p0, 0x8

    if-gtz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isUserConfirmPermission(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 484
    and-int/lit8 v1, p0, 0x4

    if-gtz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private preparePermissionCache(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/mom/PermissionRecordHelper$CacheInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 196
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 199
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 209
    return-object v2

    .line 201
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 203
    invoke-direct {p0, v0}, Lcom/mediatek/mom/PermissionRecordHelper;->getPermissionList(Landroid/content/pm/PackageInfo;)Ljava/util/List;

    move-result-object v3

    .line 204
    if-eqz v3, :cond_0

    .line 205
    new-instance v4, Lcom/mediatek/mom/PermissionRecordHelper$CacheInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v4, p0, v0, v3}, Lcom/mediatek/mom/PermissionRecordHelper$CacheInfo;-><init>(Lcom/mediatek/mom/PermissionRecordHelper;Ljava/lang/String;Ljava/util/List;)V

    .line 206
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private resetPermissionCache(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/Permission;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 573
    if-nez p1, :cond_1

    .line 583
    :cond_0
    return-void

    .line 574
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 575
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/mom/Permission;

    .line 577
    invoke-virtual {v0, v3}, Lcom/mediatek/common/mom/Permission;->setStatus(I)V

    .line 578
    iget-object v2, v0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 579
    iget-object v0, v0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/mediatek/mom/PermissionRecordHelper;->resetPermissionCache(Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public dump()V
    .locals 9

    .prologue
    .line 319
    iget-object v2, p0, Lcom/mediatek/mom/PermissionRecordHelper;->mPkgPermissionCache:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    const-string/jumbo v0, "PermissionRecordHelper"

    const-string/jumbo v1, "[Dump Permission Cache for all monitored packages]"

    .line 320
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v0, p0, Lcom/mediatek/mom/PermissionRecordHelper;->mPkgPermissionCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 324
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 362
    monitor-exit v2

    .line 363
    return-void

    .line 325
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 326
    iget-object v1, p0, Lcom/mediatek/mom/PermissionRecordHelper;->mPkgPermissionCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 328
    if-eqz v1, :cond_0

    const-string/jumbo v4, "PermissionRecordHelper"

    .line 329
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "<User ID>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 331
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/PermissionRecordHelper$CacheInfo;

    .line 333
    invoke-virtual {v0}, Lcom/mediatek/mom/PermissionRecordHelper$CacheInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 334
    invoke-virtual {v0}, Lcom/mediatek/mom/PermissionRecordHelper$CacheInfo;->getPermissions()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v5, "PermissionRecordHelper"

    .line 335
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "    PackageName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 338
    if-nez v4, :cond_3

    const-string/jumbo v0, "PermissionRecordHelper"

    const-string/jumbo v4, " - No granted permission"

    .line 357
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 362
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 340
    :cond_2
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/mom/Permission;

    const-string/jumbo v5, "PermissionRecordHelper"

    .line 341
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "     - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/mediatek/common/mom/Permission;->mPermissionName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/mediatek/common/mom/Permission;->getStatus()I

    move-result v7

    invoke-static {v7}, Lcom/mediatek/mom/PermissionController;->status2String(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/mediatek/common/mom/Permission;->getFlag()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v5, v0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    if-nez v5, :cond_4

    .line 339
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    .line 346
    :cond_4
    iget-object v0, v0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 348
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 349
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/mom/Permission;

    const-string/jumbo v6, "PermissionRecordHelper"

    .line 350
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "         - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/mediatek/common/mom/Permission;->mPermissionName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/mediatek/common/mom/Permission;->getStatus()I

    move-result v8

    invoke-static {v8}, Lcom/mediatek/mom/PermissionController;->status2String(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/mediatek/common/mom/Permission;->getFlag()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, ")"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public getPackageCachePermissions(ILjava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/Permission;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 417
    iget-object v1, p0, Lcom/mediatek/mom/PermissionRecordHelper;->mPkgPermissionCache:Ljava/util/Map;

    monitor-enter v1

    .line 418
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/PermissionRecordHelper;->mPkgPermissionCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 419
    if-nez v0, :cond_1

    .line 428
    :cond_0
    monitor-exit v1

    .line 429
    return-object v4

    .line 420
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 421
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/PermissionRecordHelper$CacheInfo;

    .line 423
    invoke-virtual {v0}, Lcom/mediatek/mom/PermissionRecordHelper$CacheInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 424
    invoke-virtual {v0}, Lcom/mediatek/mom/PermissionRecordHelper$CacheInfo;->getPermissions()Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 428
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getParentPermission(Ljava/lang/String;)Lcom/mediatek/common/mom/Permission;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/mediatek/mom/PermissionRecordHelper;->mParentPermissions:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/mediatek/mom/PermissionRecordHelper;->findParentPermissionByName(Ljava/lang/String;Ljava/util/List;)Lcom/mediatek/common/mom/Permission;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionStatusByPackage(ILjava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 529
    if-nez p2, :cond_1

    .line 530
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "permissionName :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :cond_1
    if-eqz p3, :cond_0

    .line 533
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/mom/PermissionRecordHelper;->searchPermissionCache(ILjava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/mom/Permission;

    move-result-object v1

    .line 534
    if-nez v1, :cond_2

    .line 538
    :goto_0
    return v0

    .line 535
    :cond_2
    invoke-virtual {v1}, Lcom/mediatek/common/mom/Permission;->getStatus()I

    move-result v0

    goto :goto_0
.end method

.method public getStrictPermissionForUid(ILjava/lang/String;[Ljava/lang/String;)Lcom/mediatek/common/mom/PermissionRecord;
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 375
    array-length v5, p3

    move v3, v0

    move v2, v0

    move-object v0, v4

    :goto_0
    if-lt v3, v5, :cond_0

    .line 399
    if-nez v0, :cond_5

    .line 402
    return-object v4

    .line 375
    :cond_0
    aget-object v1, p3, v3

    .line 376
    invoke-virtual {p0, p1, v1, p2}, Lcom/mediatek/mom/PermissionRecordHelper;->searchPermissionCache(ILjava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/mom/Permission;

    move-result-object v6

    .line 377
    if-nez v6, :cond_1

    move v1, v2

    .line 375
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_0

    .line 378
    :cond_1
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v1, v2

    goto :goto_1

    .line 380
    :pswitch_1
    invoke-virtual {v6}, Lcom/mediatek/common/mom/Permission;->getStatus()I

    move-result v7

    if-ne v7, v9, :cond_3

    .line 382
    :cond_2
    invoke-virtual {v6}, Lcom/mediatek/common/mom/Permission;->getStatus()I

    move-result v0

    const-string/jumbo v2, "PermissionRecordHelper"

    .line 384
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getStrictPermissionForUid() found package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v1

    move v1, v0

    move-object v0, v10

    goto :goto_1

    .line 380
    :cond_3
    invoke-virtual {v6}, Lcom/mediatek/common/mom/Permission;->getStatus()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2

    move v1, v2

    goto :goto_1

    .line 388
    :pswitch_2
    invoke-virtual {v6}, Lcom/mediatek/common/mom/Permission;->getStatus()I

    move-result v7

    if-eq v7, v9, :cond_4

    move v1, v2

    goto :goto_1

    .line 389
    :cond_4
    invoke-virtual {v6}, Lcom/mediatek/common/mom/Permission;->getStatus()I

    move-result v0

    const-string/jumbo v2, "PermissionRecordHelper"

    .line 391
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getStrictPermissionForUid() found package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v1

    move v1, v0

    move-object v0, v10

    goto :goto_1

    .line 400
    :cond_5
    new-instance v1, Lcom/mediatek/common/mom/PermissionRecord;

    invoke-direct {v1, v0, p2, v2}, Lcom/mediatek/common/mom/PermissionRecord;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v1

    .line 378
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public initPkgPermissionCache(ILjava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 123
    if-eqz p2, :cond_0

    .line 127
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 129
    iget-object v1, p0, Lcom/mediatek/mom/PermissionRecordHelper;->mPkgPermissionCache:Ljava/util/Map;

    monitor-enter v1

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/PermissionRecordHelper;->mPkgPermissionCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    :goto_0
    invoke-direct {p0, p2}, Lcom/mediatek/mom/PermissionRecordHelper;->preparePermissionCache(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 135
    iget-object v2, p0, Lcom/mediatek/mom/PermissionRecordHelper;->mPkgPermissionCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v0, "PermissionRecordHelper"

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initPkgPermissionCache() Done with userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v0, 0x1

    return v0

    :cond_0
    const-string/jumbo v0, "PermissionRecordHelper"

    const-string/jumbo v1, "initPkgPermissionCache() failed with null pkgInfo"

    .line 124
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return v2

    :cond_1
    :try_start_1
    const-string/jumbo v0, "PermissionRecordHelper"

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Update package data with userId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {p0, p1}, Lcom/mediatek/mom/PermissionRecordHelper;->removePermissionCacheByUser(I)V

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public purnPkgPermissionCache(ILjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    if-eqz p2, :cond_0

    .line 151
    :goto_0
    invoke-direct {p0, p2}, Lcom/mediatek/mom/PermissionRecordHelper;->preparePermissionCache(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 152
    iget-object v4, p0, Lcom/mediatek/mom/PermissionRecordHelper;->mPkgPermissionCache:Ljava/util/Map;

    monitor-enter v4

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/PermissionRecordHelper;->mPkgPermissionCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    :goto_1
    iget-object v0, p0, Lcom/mediatek/mom/PermissionRecordHelper;->mPkgPermissionCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    return-void

    :cond_0
    const-string/jumbo v0, "PermissionRecordHelper"

    const-string/jumbo v1, "purnPkgPermissionCache() failed with null pkgInfo"

    .line 148
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 154
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/mom/PermissionRecordHelper;->mPkgPermissionCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 155
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 156
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 167
    iget-object v0, p0, Lcom/mediatek/mom/PermissionRecordHelper;->mPkgPermissionCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 157
    :cond_3
    :try_start_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mom/PermissionRecordHelper$CacheInfo;

    .line 158
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 159
    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 160
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/mom/PermissionRecordHelper$CacheInfo;

    .line 162
    invoke-virtual {v1}, Lcom/mediatek/mom/PermissionRecordHelper$CacheInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/mediatek/mom/PermissionRecordHelper$CacheInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 163
    invoke-virtual {v2}, Lcom/mediatek/mom/PermissionRecordHelper$CacheInfo;->getPermissions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lcom/mediatek/mom/PermissionRecordHelper$CacheInfo;->getPermissions()Ljava/util/List;

    move-result-object v7

    invoke-direct {p0, v2, v7}, Lcom/mediatek/mom/PermissionRecordHelper;->copyPermissionSettings(Ljava/util/List;Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public removePermissionCache(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 252
    iget-object v1, p0, Lcom/mediatek/mom/PermissionRecordHelper;->mPkgPermissionCache:Ljava/util/Map;

    monitor-enter v1

    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/PermissionRecordHelper;->mPkgPermissionCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 254
    if-nez v0, :cond_1

    .line 263
    :cond_0
    monitor-exit v1

    .line 264
    return-void

    .line 255
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 256
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/PermissionRecordHelper$CacheInfo;

    .line 258
    invoke-virtual {v0}, Lcom/mediatek/mom/PermissionRecordHelper$CacheInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 259
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removePermissionCacheByUser(I)V
    .locals 3

    .prologue
    .line 213
    iget-object v1, p0, Lcom/mediatek/mom/PermissionRecordHelper;->mPkgPermissionCache:Ljava/util/Map;

    monitor-enter v1

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/PermissionRecordHelper;->mPkgPermissionCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    monitor-exit v1

    .line 216
    return-void

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetPermissionCache(I)V
    .locals 3

    .prologue
    .line 545
    iget-object v1, p0, Lcom/mediatek/mom/PermissionRecordHelper;->mPkgPermissionCache:Ljava/util/Map;

    monitor-enter v1

    .line 546
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/PermissionRecordHelper;->mPkgPermissionCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 547
    if-nez v0, :cond_1

    .line 554
    :cond_0
    monitor-exit v1

    .line 555
    return-void

    .line 548
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 549
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/PermissionRecordHelper$CacheInfo;

    .line 551
    invoke-virtual {v0}, Lcom/mediatek/mom/PermissionRecordHelper$CacheInfo;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/mom/PermissionRecordHelper;->resetPermissionCache(Ljava/util/List;)V

    goto :goto_0

    .line 554
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetPermissionCacheByPackage(ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 558
    iget-object v1, p0, Lcom/mediatek/mom/PermissionRecordHelper;->mPkgPermissionCache:Ljava/util/Map;

    monitor-enter v1

    .line 559
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/PermissionRecordHelper;->mPkgPermissionCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 560
    if-nez v0, :cond_1

    .line 569
    :cond_0
    monitor-exit v1

    .line 570
    return-void

    .line 561
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 562
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/PermissionRecordHelper$CacheInfo;

    .line 564
    invoke-virtual {v0}, Lcom/mediatek/mom/PermissionRecordHelper$CacheInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 565
    invoke-virtual {v0}, Lcom/mediatek/mom/PermissionRecordHelper$CacheInfo;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/mom/PermissionRecordHelper;->resetPermissionCache(Ljava/util/List;)V

    goto :goto_0

    .line 569
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public searchPermissionCache(ILjava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/mom/Permission;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 501
    iget-object v2, p0, Lcom/mediatek/mom/PermissionRecordHelper;->mPkgPermissionCache:Ljava/util/Map;

    monitor-enter v2

    .line 502
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/PermissionRecordHelper;->mPkgPermissionCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 503
    if-nez v0, :cond_1

    .line 518
    :cond_0
    monitor-exit v2

    .line 519
    return-object v1

    .line 504
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 505
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/PermissionRecordHelper$CacheInfo;

    .line 507
    invoke-virtual {v0}, Lcom/mediatek/mom/PermissionRecordHelper$CacheInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object v0, v1

    :goto_1
    move-object v1, v0

    .line 516
    goto :goto_0

    .line 508
    :cond_2
    invoke-virtual {v0}, Lcom/mediatek/mom/PermissionRecordHelper$CacheInfo;->getPermissions()Ljava/util/List;

    move-result-object v0

    .line 509
    if-nez v0, :cond_3

    const-string/jumbo v0, "PermissionRecordHelper"

    .line 512
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Not monitored packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " permissionName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " in user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_1

    .line 510
    :cond_3
    invoke-static {p3, v0}, Lcom/mediatek/mom/PermissionRecordHelper;->findPermissionByName(Ljava/lang/String;Ljava/util/List;)Lcom/mediatek/common/mom/Permission;

    move-result-object v0

    goto :goto_1

    .line 518
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updatePermissionCache(ILandroid/content/pm/PackageInfo;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 219
    iget-object v3, p0, Lcom/mediatek/mom/PermissionRecordHelper;->mPkgPermissionCache:Ljava/util/Map;

    monitor-enter v3

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/PermissionRecordHelper;->mPkgPermissionCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 224
    if-nez v0, :cond_1

    .line 248
    :cond_0
    :goto_0
    monitor-exit v3

    .line 249
    return-void

    .line 225
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 226
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    .line 240
    :goto_1
    if-nez v1, :cond_0

    .line 241
    invoke-direct {p0, p2}, Lcom/mediatek/mom/PermissionRecordHelper;->getPermissionList(Landroid/content/pm/PackageInfo;)Ljava/util/List;

    move-result-object v1

    .line 242
    if-eqz v1, :cond_0

    .line 243
    new-instance v2, Lcom/mediatek/mom/PermissionRecordHelper$CacheInfo;

    iget-object v4, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v2, p0, v4, v1}, Lcom/mediatek/mom/PermissionRecordHelper$CacheInfo;-><init>(Lcom/mediatek/mom/PermissionRecordHelper;Ljava/lang/String;Ljava/util/List;)V

    .line 244
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 227
    :cond_3
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mom/PermissionRecordHelper$CacheInfo;

    .line 228
    invoke-virtual {v1}, Lcom/mediatek/mom/PermissionRecordHelper$CacheInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 229
    invoke-direct {p0, p2}, Lcom/mediatek/mom/PermissionRecordHelper;->getPermissionList(Landroid/content/pm/PackageInfo;)Ljava/util/List;

    move-result-object v2

    .line 230
    if-nez v2, :cond_4

    .line 233
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 235
    :goto_2
    const/4 v1, 0x1

    goto :goto_1

    .line 231
    :cond_4
    invoke-virtual {v1, v2}, Lcom/mediatek/mom/PermissionRecordHelper$CacheInfo;->setPermissions(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method
