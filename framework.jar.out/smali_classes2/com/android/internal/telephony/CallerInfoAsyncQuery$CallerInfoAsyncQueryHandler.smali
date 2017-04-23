.class Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallerInfoAsyncQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallerInfoAsyncQueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;
    }
.end annotation


# instance fields
.field private mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

.field private mContext:Landroid/content/Context;

.field private mQueryUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/internal/telephony/CallerInfoAsyncQuery;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/internal/telephony/CallerInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    return-object p1
.end method

.method private constructor <init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/telephony/CallerInfoAsyncQuery;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->this$0:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 234
    invoke-static {p2}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->getCurrentProfileContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 235
    iput-object p2, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    .line 233
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery;Landroid/content/Context;Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/CallerInfoAsyncQuery;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;-><init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 240
    new-instance v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;-><init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 11
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x0

    .line 255
    const-string/jumbo v0, "CallerInfoAsyncQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "##### onQueryComplete() #####   query complete for token: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, p2

    .line 258
    check-cast v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;

    .line 259
    .local v8, "cw":Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;
    if-nez v8, :cond_1

    .line 264
    const-string/jumbo v0, "CallerInfoAsyncQuery"

    const-string/jumbo v1, "Cookie is null, ignoring onQueryComplete() request."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    if-eqz p3, :cond_0

    .line 266
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 268
    :cond_0
    return-void

    .line 271
    :cond_1
    iget v0, v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    if-ne v0, v6, :cond_3

    .line 272
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->this$0:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-static {v0}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->-wrap1(Lcom/android/internal/telephony/CallerInfoAsyncQuery;)V

    .line 273
    if-eqz p3, :cond_2

    .line 274
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 276
    :cond_2
    return-void

    .line 280
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    if-nez v0, :cond_7

    .line 281
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    if-nez v0, :cond_5

    .line 282
    :cond_4
    new-instance v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$QueryPoolException;

    .line 283
    const-string/jumbo v1, "Bad context or query uri, or CallerInfoAsyncQuery already released."

    .line 282
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$QueryPoolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_5
    iget v0, v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    .line 294
    new-instance v0, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallerInfo;->markAsEmergency(Landroid/content/Context;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 296
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget v1, v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->subId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v10

    .line 297
    .local v10, "phoneType":I
    const/4 v0, 0x2

    if-ne v10, v0, :cond_6

    .line 298
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 299
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 353
    .end local v10    # "phoneType":I
    :cond_6
    :goto_0
    const-string/jumbo v0, "CallerInfoAsyncQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "constructing CallerInfo object for token: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    new-instance v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;)V

    .line 357
    .local v2, "endMarker":Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;
    iput v6, v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    move-object v0, p0

    move v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    .line 358
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    .end local v2    # "endMarker":Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;
    :cond_7
    iget-object v0, v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    if-eqz v0, :cond_8

    .line 363
    const-string/jumbo v0, "CallerInfoAsyncQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying listener: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 364
    const-string/jumbo v3, " for token: "

    .line 363
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 364
    iget-object v3, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 363
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v0, v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    iget-object v1, v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-interface {v0, p1, v1, v3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;->onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V

    .line 368
    :cond_8
    if-eqz p3, :cond_9

    .line 369
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 254
    :cond_9
    return-void

    .line 302
    :cond_a
    iget v0, v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_b

    .line 303
    new-instance v0, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    iget v1, v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->subId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallerInfo;->markAsVoiceMail(I)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    goto/16 :goto_0

    .line 308
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    iget v4, v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->subId:I

    invoke-static {v0, v1, p3, v4}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;I)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 310
    const-string/jumbo v0, "CallerInfoAsyncQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "==> Got mCallerInfo: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    iget-object v1, v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 312
    invoke-static {v0, v1, v4}, Lcom/android/internal/telephony/CallerInfo;->doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v9

    .line 314
    .local v9, "newCallerInfo":Lcom/android/internal/telephony/CallerInfo;
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    if-eq v9, v0, :cond_c

    .line 315
    iput-object v9, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 316
    const-string/jumbo v0, "CallerInfoAsyncQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "#####async contact look up with numeric username"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 317
    iget-object v4, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 316
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_c
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 335
    const-string/jumbo v0, "ro.mtk_phone_number_geo"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 333
    if-eqz v0, :cond_e

    .line 341
    :cond_d
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    iget-object v4, v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/CallerInfo;->updateGeoDescription(Landroid/content/Context;Ljava/lang/String;)V

    .line 346
    :cond_e
    iget-object v0, v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 347
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    .line 348
    iget-object v4, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v4, v4, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    .line 349
    iget-object v5, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/telephony/CallerInfo;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 347
    invoke-static {v1, v4, v5}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto/16 :goto_0
.end method
