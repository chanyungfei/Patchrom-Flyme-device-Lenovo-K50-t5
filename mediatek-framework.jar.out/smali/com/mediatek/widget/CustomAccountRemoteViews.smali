.class public Lcom/mediatek/widget/CustomAccountRemoteViews;
.super Ljava/lang/Object;
.source "CustomAccountRemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/widget/CustomAccountRemoteViews$IdIndex;,
        Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    }
.end annotation


# static fields
.field private static final MOSTACCOUNTNUMBER:I = 0x8

.field private static final ROWACCOUNTNUMBER:I = 0x4

.field private static final TAG:Ljava/lang/String; = "CustomAccountRemoteViews"


# instance fields
.field private final RESOURCE_ID:[[I

.field private mBigRemoteViews:Landroid/widget/RemoteViews;

.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNormalRemoteViews:Landroid/widget/RemoteViews;

.field private mOtherAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestCode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/widget/CustomAccountRemoteViews;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "data":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;>;"
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mOtherAccounts:Ljava/util/List;

    .line 35
    new-array v0, v3, [[I

    .line 36
    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    .line 40
    new-array v1, v3, [I

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 44
    new-array v1, v3, [I

    fill-array-data v1, :array_2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 48
    new-array v1, v3, [I

    fill-array-data v1, :array_3

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 52
    new-array v1, v3, [I

    fill-array-data v1, :array_4

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 56
    new-array v1, v3, [I

    fill-array-data v1, :array_5

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 60
    new-array v1, v3, [I

    fill-array-data v1, :array_6

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 64
    new-array v1, v3, [I

    fill-array-data v1, :array_7

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 35
    iput-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->RESOURCE_ID:[[I

    .line 103
    new-instance v0, Landroid/widget/RemoteViews;

    .line 104
    const v1, 0x807001b

    .line 103
    invoke-direct {v0, p2, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mNormalRemoteViews:Landroid/widget/RemoteViews;

    .line 105
    new-instance v0, Landroid/widget/RemoteViews;

    .line 106
    const v1, 0x807000e

    .line 105
    invoke-direct {v0, p2, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    .line 108
    iput-object p3, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mData:Ljava/util/List;

    .line 109
    iput-object p1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mContext:Landroid/content/Context;

    .line 110
    iput v4, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mRequestCode:I

    .line 101
    return-void

    .line 36
    nop

    :array_0
    .array-data 4
        0x811008e
        0x8110032
        0x8110037
        0x8110038
        0x8110033
        0x8110034
        0x8110035
        0x8110036
    .end array-data

    .line 40
    :array_1
    .array-data 4
        0x811008f
        0x811000f
        0x8110014
        0x8110015
        0x8110010
        0x8110011
        0x8110012
        0x8110013
    .end array-data

    .line 44
    :array_2
    .array-data 4
        0x8110090
        0x811002b
        0x8110030
        0x8110031
        0x811002c
        0x811002d
        0x811002e
        0x811002f
    .end array-data

    .line 48
    :array_3
    .array-data 4
        0x8110091
        0x8110024
        0x8110029
        0x811002a
        0x8110025
        0x8110026
        0x8110027
        0x8110028
    .end array-data

    .line 52
    :array_4
    .array-data 4
        0x8110007
        0x8110008
        0x811000d
        0x811000e
        0x8110009
        0x811000a
        0x811000b
        0x811000c
    .end array-data

    .line 56
    :array_5
    .array-data 4
        0x8110093
        0x8110000
        0x8110005
        0x8110006
        0x8110001
        0x8110002
        0x8110003
        0x8110004
    .end array-data

    .line 60
    :array_6
    .array-data 4
        0x8110094
        0x811001d
        0x8110022
        0x8110023
        0x811001e
        0x811001f
        0x8110020
        0x8110021
    .end array-data

    .line 64
    :array_7
    .array-data 4
        0x8110095
        0x8110016
        0x811001b
        0x811001c
        0x8110017
        0x8110018
        0x8110019
        0x811001a
    .end array-data
.end method

.method private configureAccount([ILcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;)V
    .locals 9
    .param p1, "resourceId"    # [I
    .param p2, "accountInfo"    # Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 267
    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 268
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    aget v2, p1, v5

    invoke-virtual {v1, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 269
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    const/4 v2, 0x1

    aget v2, p1, v2

    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 277
    :goto_0
    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 278
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    const/4 v2, 0x2

    aget v2, p1, v2

    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 284
    :goto_1
    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getNumber()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 285
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    const/4 v2, 0x3

    aget v2, p1, v2

    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 291
    :goto_2
    const-string/jumbo v1, "CustomAccountRemoteViews"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "active: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->isActive()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->isActive()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 294
    const-string/jumbo v1, "SELECT_OTHER_ACCOUNTS"

    .line 295
    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 294
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 296
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    const/4 v2, 0x7

    aget v2, p1, v2

    invoke-virtual {v1, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 298
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    aget v2, p1, v7

    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 300
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    aget v2, p1, v6

    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 301
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    aget v2, p1, v8

    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 335
    :goto_3
    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 336
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mRequestCode:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mRequestCode:I

    .line 337
    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x8000000

    .line 336
    invoke-static {v1, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 338
    .local v0, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    aget v2, p1, v5

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 265
    .end local v0    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_0
    return-void

    .line 270
    :cond_1
    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getIconId()I

    move-result v1

    if-eqz v1, :cond_2

    .line 271
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    aget v2, p1, v5

    invoke-virtual {v1, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 272
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    const/4 v2, 0x1

    aget v2, p1, v2

    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getIconId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0

    .line 274
    :cond_2
    const-string/jumbo v1, "CustomAccountRemoteViews"

    const-string/jumbo v2, "--- The icon of account is null ---"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 280
    :cond_3
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    const/4 v2, 0x2

    aget v2, p1, v2

    invoke-virtual {v1, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 281
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    const/4 v2, 0x2

    aget v2, p1, v2

    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 287
    :cond_4
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    const/4 v2, 0x3

    aget v2, p1, v2

    invoke-virtual {v1, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 288
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    const/4 v2, 0x3

    aget v2, p1, v2

    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 304
    :cond_5
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    aget v2, p1, v7

    invoke-virtual {v1, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 306
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    const/4 v2, 0x7

    aget v2, p1, v2

    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 308
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    aget v2, p1, v8

    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 310
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    aget v2, p1, v6

    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_3

    .line 313
    :cond_6
    const-string/jumbo v1, "SELECT_OTHER_ACCOUNTS"

    .line 314
    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 313
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 315
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    aget v2, p1, v8

    invoke-virtual {v1, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 317
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    aget v2, p1, v6

    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 319
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    const/4 v2, 0x7

    aget v2, p1, v2

    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 321
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    aget v2, p1, v7

    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_3

    .line 324
    :cond_7
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    aget v2, p1, v6

    invoke-virtual {v1, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 326
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    aget v2, p1, v8

    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 328
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    aget v2, p1, v7

    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 330
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    const/4 v2, 0x7

    aget v2, p1, v2

    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_3
.end method

.method private generateOtherAccount()Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    .locals 5

    .prologue
    .line 248
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "SELECT_OTHER_ACCOUNTS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    .local v1, "otherIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mContext:Landroid/content/Context;

    const v4, 0x80500d0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 250
    .local v2, "other_accounts":Ljava/lang/String;
    new-instance v0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;

    const v3, 0x8020004

    .line 251
    const/4 v4, 0x0

    .line 250
    invoke-direct {v0, v3, v2, v4, v1}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 253
    .local v0, "otherAccount":Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    return-object v0
.end method

.method private generateOtherAccount(Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;)Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    .locals 9
    .param p1, "accountInfo"    # Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;

    .prologue
    .line 257
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v1, "SELECT_OTHER_ACCOUNTS"

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    .local v5, "otherIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mContext:Landroid/content/Context;

    const v2, 0x80500d0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 259
    .local v8, "other_accounts":Ljava/lang/String;
    new-instance v0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;

    invoke-virtual {p1}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getIconId()I

    move-result v1

    invoke-virtual {p1}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 260
    invoke-virtual {p1}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getNumber()Ljava/lang/String;

    move-result-object v4

    .line 261
    invoke-virtual {p1}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->isActive()Z

    move-result v6

    invoke-virtual {p1}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->isSimAccount()Z

    move-result v7

    .line 259
    invoke-direct/range {v0 .. v7}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;-><init>(ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZZ)V

    .line 262
    .local v0, "otherAccount":Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    return-object v0
.end method

.method private getActiveAccount(Ljava/util/List;)Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;",
            ">;)",
            "Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "account$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;

    .line 240
    .local v0, "account":Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    invoke-virtual {v0}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    return-object v0

    .line 244
    .end local v0    # "account":Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private hasActiveAccount(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 230
    .local p1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "account$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;

    .line 231
    .local v0, "account":Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    invoke-virtual {v0}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    const/4 v2, 0x1

    return v2

    .line 235
    .end local v0    # "account":Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private resetAccounts()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 221
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 222
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->RESOURCE_ID:[[I

    aget-object v2, v2, v0

    aget v2, v2, v3

    invoke-virtual {v1, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    :cond_0
    const/4 v0, 0x4

    :goto_1
    if-ge v0, v5, :cond_1

    .line 225
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->RESOURCE_ID:[[I

    aget-object v2, v2, v0

    aget v2, v2, v3

    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 220
    :cond_1
    return-void
.end method


# virtual methods
.method public configureView()V
    .locals 13

    .prologue
    .line 148
    iget-object v10, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mData:Ljava/util/List;

    if-eqz v10, :cond_a

    .line 150
    const-string/jumbo v10, "CustomAccountRemoteViews"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "---configureView---"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mData:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-direct {p0}, Lcom/mediatek/widget/CustomAccountRemoteViews;->resetAccounts()V

    .line 155
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v9, "simAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;>;"
    iget-object v10, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mData:Ljava/util/List;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "account$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;

    .line 157
    .local v0, "account":Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    invoke-virtual {v0}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->isSimAccount()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 158
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    :cond_0
    iget-object v10, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mOtherAccounts:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 165
    .end local v0    # "account":Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    :cond_1
    iget-object v10, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mOtherAccounts:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_4

    .line 166
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v5, v10, 0x1

    .line 167
    .local v5, "itemCount":I
    const/4 v10, 0x4

    if-le v5, v10, :cond_3

    const/4 v8, 0x1

    .line 173
    .local v8, "showRowTwo":Z
    :goto_1
    if-eqz v8, :cond_6

    .line 174
    iget-object v10, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    const v11, 0x8110092

    .line 175
    const/4 v12, 0x0

    .line 174
    invoke-virtual {v10, v11, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 181
    :goto_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v5, :cond_b

    const/16 v10, 0x8

    if-ge v4, v10, :cond_b

    .line 182
    const-string/jumbo v10, "CustomAccountRemoteViews"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "--- configure account id: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", mOtherAccounts.size = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 183
    iget-object v12, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mOtherAccounts:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    .line 182
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    add-int/lit8 v10, v5, -0x1

    if-ne v4, v10, :cond_9

    iget-object v10, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mOtherAccounts:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_9

    .line 186
    iget-object v10, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mOtherAccounts:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_8

    .line 187
    iget-object v10, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mOtherAccounts:Ljava/util/List;

    invoke-direct {p0, v10}, Lcom/mediatek/widget/CustomAccountRemoteViews;->hasActiveAccount(Ljava/util/List;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 188
    iget-object v10, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mOtherAccounts:Ljava/util/List;

    invoke-direct {p0, v10}, Lcom/mediatek/widget/CustomAccountRemoteViews;->getActiveAccount(Ljava/util/List;)Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;

    move-result-object v3

    .line 189
    .local v3, "activeAccount":Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    invoke-direct {p0, v3}, Lcom/mediatek/widget/CustomAccountRemoteViews;->generateOtherAccount(Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;)Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;

    move-result-object v6

    .line 190
    .local v6, "otherAccount":Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    iget-object v10, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->RESOURCE_ID:[[I

    aget-object v10, v10, v4

    invoke-direct {p0, v10, v6}, Lcom/mediatek/widget/CustomAccountRemoteViews;->configureAccount([ILcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;)V

    .line 181
    .end local v3    # "activeAccount":Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    .end local v6    # "otherAccount":Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    :cond_2
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 167
    .end local v4    # "i":I
    .end local v8    # "showRowTwo":Z
    :cond_3
    const/4 v8, 0x0

    .restart local v8    # "showRowTwo":Z
    goto :goto_1

    .line 169
    .end local v5    # "itemCount":I
    .end local v8    # "showRowTwo":Z
    :cond_4
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    .line 170
    .restart local v5    # "itemCount":I
    const/4 v10, 0x4

    if-le v5, v10, :cond_5

    const/4 v8, 0x1

    .restart local v8    # "showRowTwo":Z
    goto :goto_1

    .end local v8    # "showRowTwo":Z
    :cond_5
    const/4 v8, 0x0

    .restart local v8    # "showRowTwo":Z
    goto :goto_1

    .line 177
    :cond_6
    iget-object v10, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    const v11, 0x8110092

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_2

    .line 192
    .restart local v4    # "i":I
    :cond_7
    invoke-direct {p0}, Lcom/mediatek/widget/CustomAccountRemoteViews;->generateOtherAccount()Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;

    move-result-object v6

    .line 193
    .restart local v6    # "otherAccount":Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->setActiveStatus(Z)V

    .line 194
    iget-object v10, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->RESOURCE_ID:[[I

    aget-object v10, v10, v4

    invoke-direct {p0, v10, v6}, Lcom/mediatek/widget/CustomAccountRemoteViews;->configureAccount([ILcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;)V

    goto :goto_4

    .line 196
    .end local v6    # "otherAccount":Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    :cond_8
    iget-object v10, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mOtherAccounts:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 197
    iget-object v10, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mOtherAccounts:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;

    .line 198
    .local v2, "accountInfo":Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    iget-object v10, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->RESOURCE_ID:[[I

    aget-object v7, v10, v4

    .line 199
    .local v7, "resourceId":[I
    invoke-direct {p0, v7, v2}, Lcom/mediatek/widget/CustomAccountRemoteViews;->configureAccount([ILcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;)V

    goto :goto_4

    .line 202
    .end local v2    # "accountInfo":Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    .end local v7    # "resourceId":[I
    :cond_9
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;

    .line 203
    .restart local v2    # "accountInfo":Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    iget-object v10, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->RESOURCE_ID:[[I

    aget-object v7, v10, v4

    .line 204
    .restart local v7    # "resourceId":[I
    invoke-direct {p0, v7, v2}, Lcom/mediatek/widget/CustomAccountRemoteViews;->configureAccount([ILcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;)V

    goto :goto_4

    .line 209
    .end local v1    # "account$iterator":Ljava/util/Iterator;
    .end local v2    # "accountInfo":Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    .end local v4    # "i":I
    .end local v5    # "itemCount":I
    .end local v7    # "resourceId":[I
    .end local v8    # "showRowTwo":Z
    .end local v9    # "simAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;>;"
    :cond_a
    const-string/jumbo v10, "CustomAccountRemoteViews"

    const-string/jumbo v11, "Data can not be null"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_b
    return-void
.end method

.method public getBigRemoteViews()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public getNormalRemoteViews()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mNormalRemoteViews:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public getOtherAccounts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mOtherAccounts:Ljava/util/List;

    return-object v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;>;"
    iput-object p1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mData:Ljava/util/List;

    .line 136
    return-void
.end method
