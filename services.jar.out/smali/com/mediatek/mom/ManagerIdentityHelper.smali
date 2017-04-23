.class Lcom/mediatek/mom/ManagerIdentityHelper;
.super Ljava/lang/Object;
.source "ManagerIdentityHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;
    }
.end annotation


# static fields
.field public static final IDENTITY_DEBUG:I = 0x3e8

.field public static final IDENTITY_IN_HOUSE:I = 0x3e9

.field public static final IDENTITY_MOBILE_MANAGER_START:I = 0x64

.field public static final IDENTITY_NONE:I = 0x0

.field public static final IDENTITY_PERMISSION_CONTROL_START:I = 0x3e8

.field public static final IDENTITY_TCMANAGER:I = 0x64

.field public static final IDENTITY_TCUSER:I = 0x3ea

.field private static final INVALID_APPID:I = -0x1

.field public static final TAG:Ljava/lang/String; = "ManagerIdentityHelper"

.field private static TAG_PLATFORM:Ljava/lang/String;

.field private static TAG_TENCENT:Ljava/lang/String;

.field private static final TencentSignature:Landroid/content/pm/Signature;

.field private static mInstance:Lcom/mediatek/mom/ManagerIdentityHelper;

.field private static mManagerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 58
    sput-object v4, Lcom/mediatek/mom/ManagerIdentityHelper;->mInstance:Lcom/mediatek/mom/ManagerIdentityHelper;

    const-string/jumbo v0, "platform"

    .line 72
    sput-object v0, Lcom/mediatek/mom/ManagerIdentityHelper;->TAG_PLATFORM:Ljava/lang/String;

    const-string/jumbo v0, "mobilemanager"

    .line 73
    sput-object v0, Lcom/mediatek/mom/ManagerIdentityHelper;->TAG_TENCENT:Ljava/lang/String;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mediatek/mom/ManagerIdentityHelper;->mManagerList:Ljava/util/List;

    .line 146
    new-instance v0, Landroid/content/pm/Signature;

    const-string/jumbo v1, "30820239308201a2a00302010202044c96f48f300d06092a864886f70d01010505003060310b300906035504061302434e310b300906035504081302474431123010060355040713094775616e677a686f753110300e060355040a130754656e63656e74310b3009060355040b130233473111300f0603550403130857696c736f6e57753020170d3130303932303035343334335a180f32303635303632333035343334335a3060310b300906035504061302434e310b300906035504081302474431123010060355040713094775616e677a686f753110300e060355040a130754656e63656e74310b3009060355040b130233473111300f0603550403130857696c736f6e577530819f300d06092a864886f70d010101050003818d0030818902818100b56e79dbb1185a79e52d792bb3d0bb3da8010d9b87da92ec69f7dc5ad66ab6bfdff2a6a1ed285dd2358f28b72a468be7c10a2ce30c4c27323ed4edcc936080e5bedc2cbbca0b7e879c08a631182793f44bb3ea284179b263410c298e5f6831032c9702ba4a74e2ccfc9ef857f12201451602fc8e774ac59d6398511586c83d1d0203010001300d06092a864886f70d0101050500038181002475615bb65b8d8786b890535802948840387d06b1692ff3ea47ef4c435719ba1865b81e6bfa6293ce31747c3cd6b34595b485cc1563fd90107ba5845c28b95c79138f0dec288940395bc10f92f2b69d8dc410999deb38900974ce9984b678030edfba8816582f56160d87e38641288d8588d2a31e20b89f223d788dd35cc9c8"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mediatek/mom/ManagerIdentityHelper;->TencentSignature:Landroid/content/pm/Signature;

    .line 169
    sget-object v7, Lcom/mediatek/mom/ManagerIdentityHelper;->mManagerList:Ljava/util/List;

    new-instance v0, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;

    const/16 v1, 0x64

    sget-object v2, Lcom/mediatek/mom/ManagerIdentityHelper;->TAG_TENCENT:Ljava/lang/String;

    const-string/jumbo v3, "com.tencent.qqpimsecure"

    sget-object v5, Lcom/mediatek/mom/ManagerIdentityHelper;->TencentSignature:Landroid/content/pm/Signature;

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/Signature;Z)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    sget-object v0, Lcom/mediatek/mom/ManagerIdentityHelper;->mManagerList:Ljava/util/List;

    new-instance v7, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;

    const/16 v8, 0x3ea

    sget-object v9, Lcom/mediatek/mom/ManagerIdentityHelper;->TAG_TENCENT:Ljava/lang/String;

    const-string/jumbo v10, "com.tencent.tcuser"

    const-string/jumbo v11, "com.tencent.tcuser.ztool.service.PermissionService"

    sget-object v12, Lcom/mediatek/mom/ManagerIdentityHelper;->TencentSignature:Landroid/content/pm/Signature;

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/Signature;Z)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    sget-object v0, Lcom/mediatek/mom/ManagerIdentityHelper;->mManagerList:Ljava/util/List;

    new-instance v5, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;

    const/16 v6, 0x3e9

    sget-object v7, Lcom/mediatek/mom/ManagerIdentityHelper;->TAG_PLATFORM:Ljava/lang/String;

    const-string/jumbo v8, "com.mediatek.security"

    const-string/jumbo v9, "com.mediatek.security.service.PermControlService"

    move-object v10, v4

    move v11, v14

    invoke-direct/range {v5 .. v11}, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/Signature;Z)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    sget-object v7, Lcom/mediatek/mom/ManagerIdentityHelper;->mManagerList:Ljava/util/List;

    new-instance v0, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;

    const/16 v1, 0x3e8

    sget-object v2, Lcom/mediatek/mom/ManagerIdentityHelper;->TAG_PLATFORM:Ljava/lang/String;

    const-string/jumbo v3, "com.mediatek.mom.test.app.mgremu"

    move-object v5, v4

    move v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/Signature;Z)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSignature(ILandroid/content/pm/Signature;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 424
    sget-object v0, Lcom/mediatek/mom/ManagerIdentityHelper;->mManagerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 425
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "ManagerIdentityHelper"

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "check C with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    return v4

    .line 426
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;

    .line 427
    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->getIdentity()I

    move-result v2

    if-ne p0, v2, :cond_0

    .line 428
    sget-object v2, Lcom/mediatek/mom/ManagerIdentityHelper;->TAG_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 431
    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->getSignature()Landroid/content/pm/Signature;

    move-result-object v0

    .line 432
    if-eqz v0, :cond_3

    .line 436
    invoke-virtual {v0, p1}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    return v5

    .line 429
    :cond_2
    return v5

    .line 434
    :cond_3
    return v5
.end method

.method private static findIdentity(I)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 400
    sget-object v0, Lcom/mediatek/mom/ManagerIdentityHelper;->mManagerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 401
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 407
    return v2

    .line 402
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;

    .line 403
    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->getIdentity()I

    move-result v0

    if-ne p0, v0, :cond_0

    .line 404
    const/4 v0, 0x1

    return v0
.end method

.method public static getAuthorizedIdentity(ILjava/lang/String;Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 285
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 286
    sget-object v0, Lcom/mediatek/mom/ManagerIdentityHelper;->mManagerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 287
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 299
    return v5

    .line 288
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;

    .line 289
    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 290
    sget-object v3, Lcom/mediatek/mom/ManagerIdentityHelper;->TAG_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 295
    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->getIdentity()I

    move-result v0

    return v0

    :cond_2
    const/16 v3, 0x3e8

    .line 291
    if-ne v1, v3, :cond_0

    .line 292
    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->getIdentity()I

    move-result v0

    return v0
.end method

.method public static getIdentityList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mediatek/mom/ManagerIdentityHelper;->getIdentityListInner(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getIdentityListInner(Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 246
    sget-object v0, Lcom/mediatek/mom/ManagerIdentityHelper;->mManagerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 247
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 257
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 258
    return-object v1

    .line 248
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;

    const/4 v3, 0x1

    .line 249
    if-eq p0, v3, :cond_2

    .line 254
    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->getIdentity()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 250
    :cond_2
    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->getIdentity()I

    move-result v3

    const/16 v4, 0x3e8

    if-lt v3, v4, :cond_0

    .line 251
    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->getIdentity()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getInstance()Lcom/mediatek/mom/ManagerIdentityHelper;
    .locals 1

    .prologue
    .line 206
    sget-object v0, Lcom/mediatek/mom/ManagerIdentityHelper;->mInstance:Lcom/mediatek/mom/ManagerIdentityHelper;

    if-eqz v0, :cond_0

    .line 209
    :goto_0
    sget-object v0, Lcom/mediatek/mom/ManagerIdentityHelper;->mInstance:Lcom/mediatek/mom/ManagerIdentityHelper;

    return-object v0

    .line 207
    :cond_0
    new-instance v0, Lcom/mediatek/mom/ManagerIdentityHelper;

    invoke-direct {v0}, Lcom/mediatek/mom/ManagerIdentityHelper;-><init>()V

    sput-object v0, Lcom/mediatek/mom/ManagerIdentityHelper;->mInstance:Lcom/mediatek/mom/ManagerIdentityHelper;

    goto :goto_0
.end method

.method public static getManagerAppId(I)I
    .locals 3

    .prologue
    .line 356
    sget-object v0, Lcom/mediatek/mom/ManagerIdentityHelper;->mManagerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 357
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    .line 363
    return v0

    .line 358
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;

    .line 359
    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->getIdentity()I

    move-result v2

    if-ne p0, v2, :cond_0

    .line 360
    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->getAppId()I

    move-result v0

    return v0
.end method

.method public static getManagerIdentity(I)I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 367
    sget-object v0, Lcom/mediatek/mom/ManagerIdentityHelper;->mManagerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 368
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 374
    return v4

    .line 369
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;

    .line 370
    if-ltz p0, :cond_0

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->getAppId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 371
    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->getIdentity()I

    move-result v0

    return v0
.end method

.method public static getManagerIdentity(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 378
    sget-object v0, Lcom/mediatek/mom/ManagerIdentityHelper;->mManagerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 379
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 385
    return v3

    .line 380
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;

    .line 381
    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 382
    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->getIdentity()I

    move-result v0

    return v0
.end method

.method public static getManagerIdentityInstalled(I)Z
    .locals 1

    .prologue
    .line 348
    invoke-static {p0}, Lcom/mediatek/mom/ManagerIdentityHelper;->getManagerIdentityObject(I)Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;

    move-result-object v0

    .line 349
    if-nez v0, :cond_0

    .line 352
    const/4 v0, 0x0

    return v0

    .line 350
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->isInstalled()Z

    move-result v0

    return v0
.end method

.method public static getManagerIdentityObject(I)Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;
    .locals 3

    .prologue
    .line 389
    sget-object v0, Lcom/mediatek/mom/ManagerIdentityHelper;->mManagerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 390
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 396
    return-object v0

    .line 391
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;

    .line 392
    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->getIdentity()I

    move-result v2

    if-ne p0, v2, :cond_0

    .line 393
    return-object v0
.end method

.method public static getManagerInitService(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 273
    sget-object v0, Lcom/mediatek/mom/ManagerIdentityHelper;->mManagerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 274
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 280
    return-object v0

    .line 275
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;

    .line 276
    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->getIdentity()I

    move-result v2

    if-ne p0, v2, :cond_0

    .line 277
    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->getInitSrvName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getManagerPackage(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 262
    sget-object v0, Lcom/mediatek/mom/ManagerIdentityHelper;->mManagerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 263
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 269
    return-object v0

    .line 264
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;

    .line 265
    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->getIdentity()I

    move-result v2

    if-ne p0, v2, :cond_0

    .line 266
    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPermControlIdentityList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/mediatek/mom/ManagerIdentityHelper;->getIdentityListInner(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 214
    new-instance v0, Lcom/mediatek/common/jpe/a;

    invoke-direct {v0}, Lcom/mediatek/common/jpe/a;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/common/jpe/a;->a()V

    new-instance v0, Lcom/mediatek/common/jpe/a;

    invoke-direct {v0}, Lcom/mediatek/common/jpe/a;-><init>()V

    .line 215
    invoke-virtual {v0}, Lcom/mediatek/common/jpe/a;->a()V

    .line 217
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    .line 218
    :goto_0
    sget-object v0, Lcom/mediatek/mom/ManagerIdentityHelper;->mManagerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 234
    return-void

    .line 219
    :cond_0
    sget-object v0, Lcom/mediatek/mom/ManagerIdentityHelper;->mManagerList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;

    .line 221
    :try_start_0
    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2200

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 224
    if-nez v3, :cond_1

    .line 218
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 225
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->setInstalled(Z)V

    .line 226
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->setAppId(I)V

    const-string/jumbo v3, "ManagerIdentityHelper"

    .line 227
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Manager identity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->getIdentity()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " installed with appId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->getAppId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 232
    :catch_0
    move-exception v3

    const-string/jumbo v3, "ManagerIdentityHelper"

    .line 230
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t find manager package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static initManagerIdentity(II)V
    .locals 2

    .prologue
    .line 331
    invoke-static {p0}, Lcom/mediatek/mom/ManagerIdentityHelper;->getManagerIdentityObject(I)Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;

    move-result-object v0

    .line 332
    if-nez v0, :cond_0

    .line 337
    :goto_0
    return-void

    .line 333
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->setInstalled(Z)V

    .line 334
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->setAppId(I)V

    .line 335
    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->resetVerified()Z

    goto :goto_0
.end method

.method public static isBootControlIdetity(I)Z
    .locals 2

    .prologue
    const/16 v1, 0x3e8

    const/16 v0, 0x64

    .line 311
    if-ge p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x3e9

    if-ne p0, v0, :cond_3

    .line 314
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/mediatek/mom/ManagerIdentityHelper;->findIdentity(I)Z

    move-result v0

    return v0

    .line 311
    :cond_2
    if-ge p0, v1, :cond_0

    goto :goto_0

    :cond_3
    if-eq p0, v1, :cond_1

    .line 316
    const/4 v0, 0x0

    return v0
.end method

.method public static isMobileManagerIdetity(I)Z
    .locals 1

    .prologue
    const/16 v0, 0x64

    .line 303
    if-ge p0, v0, :cond_1

    .line 305
    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/16 v0, 0x3e8

    .line 303
    if-ge p0, v0, :cond_0

    .line 307
    invoke-static {p0}, Lcom/mediatek/mom/ManagerIdentityHelper;->findIdentity(I)Z

    move-result v0

    return v0
.end method

.method public static isPermControlIdentity(I)Z
    .locals 1

    .prologue
    const/16 v0, 0x3e8

    .line 320
    if-lt p0, v0, :cond_0

    .line 323
    invoke-static {p0}, Lcom/mediatek/mom/ManagerIdentityHelper;->findIdentity(I)Z

    move-result v0

    return v0

    .line 321
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isValidIdentity(I)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 327
    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static needVerifyProtocol(I)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 411
    sget-object v0, Lcom/mediatek/mom/ManagerIdentityHelper;->mManagerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 412
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 420
    return v3

    .line 413
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;

    .line 414
    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->getIdentity()I

    move-result v2

    if-ne p0, v2, :cond_0

    .line 415
    sget-object v2, Lcom/mediatek/mom/ManagerIdentityHelper;->TAG_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    const/4 v0, 0x1

    return v0
.end method

.method public static uninitManagerIdentity(I)V
    .locals 2

    .prologue
    .line 340
    invoke-static {p0}, Lcom/mediatek/mom/ManagerIdentityHelper;->getManagerIdentityObject(I)Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;

    move-result-object v0

    .line 341
    if-nez v0, :cond_0

    .line 345
    :goto_0
    return-void

    .line 342
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->setInstalled(Z)V

    const/4 v1, -0x1

    .line 343
    invoke-virtual {v0, v1}, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->setAppId(I)V

    goto :goto_0
.end method
