.class public Landroid/text/util/Linkify;
.super Ljava/lang/Object;
.source "Linkify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/util/Linkify$MatchFilter;,
        Landroid/text/util/Linkify$TransformFilter;,
        Landroid/text/util/Linkify$1;,
        Landroid/text/util/Linkify$2;,
        Landroid/text/util/Linkify$3;
    }
.end annotation


# static fields
.field public static final ALL:I = 0xf

.field public static final EMAIL_ADDRESSES:I = 0x2

.field public static final MAP_ADDRESSES:I = 0x8

.field public static final PHONE_NUMBERS:I = 0x4

.field private static final PHONE_NUMBER_MINIMUM_DIGITS:I = 0x5

.field public static final WEB_URLS:I = 0x1

.field private static sAddLinkMask:I

.field public static final sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

.field public static final sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

.field public static final sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    new-instance v0, Landroid/text/util/Linkify$1;

    invoke-direct {v0}, Landroid/text/util/Linkify$1;-><init>()V

    sput-object v0, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    .line 140
    new-instance v0, Landroid/text/util/Linkify$2;

    invoke-direct {v0}, Landroid/text/util/Linkify$2;-><init>()V

    sput-object v0, Landroid/text/util/Linkify;->sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    .line 163
    new-instance v0, Landroid/text/util/Linkify$3;

    invoke-direct {v0}, Landroid/text/util/Linkify$3;-><init>()V

    sput-object v0, Landroid/text/util/Linkify;->sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addLenovoLinks(Landroid/text/Spannable;I)Z
    .locals 12
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "mask"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 294
    if-nez p1, :cond_0

    .line 295
    return v10

    .line 298
    :cond_0
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {p0, v10, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/URLSpan;

    .line 300
    .local v9, "old":[Landroid/text/style/URLSpan;
    array-length v1, v9

    add-int/lit8 v6, v1, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_1

    .line 301
    aget-object v1, v9, v6

    invoke-interface {p0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 300
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 304
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .local v0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_2

    .line 307
    sget-object v2, Landroid/util/Patterns;->LENOVO_WEB_URL:Ljava/util/regex/Pattern;

    .line 308
    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v1, "http://"

    aput-object v1, v3, v10

    const-string/jumbo v1, "https://"

    aput-object v1, v3, v11

    const-string/jumbo v1, "rtsp://"

    const/4 v4, 0x2

    aput-object v1, v3, v4

    .line 309
    sget-object v4, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    move-object v1, p0

    .line 307
    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->gatherLenovoLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 312
    :cond_2
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_3

    .line 313
    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    .line 314
    new-array v3, v11, [Ljava/lang/String;

    const-string/jumbo v1, "mailto:"

    aput-object v1, v3, v10

    move-object v1, p0

    move-object v4, v5

    .line 313
    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 317
    :cond_3
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    .line 321
    invoke-static {v0, p0}, Landroid/text/util/Linkify;->gatherTelLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 325
    :cond_4
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_5

    .line 326
    invoke-static {v0, p0}, Landroid/text/util/Linkify;->gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 329
    :cond_5
    invoke-static {v0}, Landroid/text/util/Linkify;->pruneOverlaps(Ljava/util/ArrayList;)V

    .line 331
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_6

    .line 332
    return v10

    .line 335
    :cond_6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "link$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/text/util/LinkSpec;

    .line 336
    .local v7, "link":Landroid/text/util/LinkSpec;
    iget-object v1, v7, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    iget v2, v7, Landroid/text/util/LinkSpec;->start:I

    iget v3, v7, Landroid/text/util/LinkSpec;->end:I

    invoke-static {v1, v2, v3, p0}, Landroid/text/util/Linkify;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    goto :goto_1

    .line 339
    .end local v7    # "link":Landroid/text/util/LinkSpec;
    :cond_7
    return v11
.end method

.method private static final addLinkMovementMethod(Landroid/widget/TextView;)V
    .locals 2
    .param p0, "t"    # Landroid/widget/TextView;

    .prologue
    .line 396
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 398
    .local v0, "m":Landroid/text/method/MovementMethod;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/text/method/LinkMovementMethod;

    if-eqz v1, :cond_1

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0
.end method

.method public static final addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .locals 1
    .param p0, "text"    # Landroid/widget/TextView;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "scheme"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 418
    invoke-static {p0, p1, p2, v0, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 417
    return-void
.end method

.method public static final addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 2
    .param p0, "text"    # Landroid/widget/TextView;
    .param p1, "p"    # Ljava/util/regex/Pattern;
    .param p2, "scheme"    # Ljava/lang/String;
    .param p3, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p4, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;

    .prologue
    .line 438
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 440
    .local v0, "s":Landroid/text/SpannableString;
    invoke-static {v0, p1, p2, p3, p4}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 441
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    invoke-static {p0}, Landroid/text/util/Linkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    .line 437
    :cond_0
    return-void
.end method

.method public static final addLinks(Landroid/text/Spannable;I)Z
    .locals 15
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "mask"    # I

    .prologue
    .line 226
    if-nez p1, :cond_0

    .line 227
    const/4 v1, 0x0

    return v1

    .line 230
    :cond_0
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v4, Landroid/text/style/URLSpan;

    const/4 v5, 0x0

    invoke-interface {p0, v5, v1, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/text/style/URLSpan;

    .line 232
    .local v13, "old":[Landroid/text/style/URLSpan;
    array-length v1, v13

    add-int/lit8 v10, v1, -0x1

    .local v10, "i":I
    :goto_0
    if-ltz v10, :cond_1

    .line 233
    aget-object v1, v13, v10

    invoke-interface {p0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 232
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 236
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_2

    .line 241
    const-class v1, Lcom/mediatek/common/util/IWebProtocolNames;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 240
    invoke-static {v1}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/mediatek/common/util/IWebProtocolNames;

    .line 242
    .local v14, "plugin":Lcom/mediatek/common/util/IWebProtocolNames;
    if-eqz v14, :cond_6

    .line 243
    invoke-interface {v14}, Lcom/mediatek/common/util/IWebProtocolNames;->getWebProtocolNames()[Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, "webProtocolNames":[Ljava/lang/String;
    invoke-static {}, Landroid/util/Patterns;->getWebUrlPattern()Ljava/util/regex/Pattern;

    move-result-object v2

    .line 246
    .local v2, "webUrlPattern":Ljava/util/regex/Pattern;
    const/4 v1, 0x1

    sput v1, Landroid/text/util/Linkify;->sAddLinkMask:I

    .line 248
    sget-object v4, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    const/4 v5, 0x0

    move-object v1, p0

    .line 247
    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 258
    .end local v2    # "webUrlPattern":Ljava/util/regex/Pattern;
    .end local v3    # "webProtocolNames":[Ljava/lang/String;
    .end local v14    # "plugin":Lcom/mediatek/common/util/IWebProtocolNames;
    :cond_2
    :goto_1
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_3

    .line 260
    const/4 v1, 0x2

    sput v1, Landroid/text/util/Linkify;->sAddLinkMask:I

    .line 261
    sget-object v6, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    .line 262
    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    const-string/jumbo v1, "mailto:"

    const/4 v4, 0x0

    aput-object v1, v7, v4

    .line 263
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    move-object v5, p0

    .line 261
    invoke-static/range {v4 .. v9}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 266
    :cond_3
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    .line 267
    invoke-static {v0, p0}, Landroid/text/util/Linkify;->gatherTelLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 270
    :cond_4
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_5

    .line 271
    invoke-static {v0, p0}, Landroid/text/util/Linkify;->gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 274
    :cond_5
    invoke-static {v0}, Landroid/text/util/Linkify;->pruneOverlaps(Ljava/util/ArrayList;)V

    .line 276
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7

    .line 277
    const/4 v1, 0x0

    return v1

    .line 250
    .restart local v14    # "plugin":Lcom/mediatek/common/util/IWebProtocolNames;
    :cond_6
    const-string/jumbo v1, "Linkify"

    const-string/jumbo v4, "addLinks(), IWebProtocolNames fail to create plugin instance"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    sget-object v6, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    .line 252
    const/4 v1, 0x3

    new-array v7, v1, [Ljava/lang/String;

    const-string/jumbo v1, "http://"

    const/4 v4, 0x0

    aput-object v1, v7, v4

    const-string/jumbo v1, "https://"

    const/4 v4, 0x1

    aput-object v1, v7, v4

    const-string/jumbo v1, "rtsp://"

    const/4 v4, 0x2

    aput-object v1, v7, v4

    .line 253
    sget-object v8, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    const/4 v9, 0x0

    move-object v4, v0

    move-object v5, p0

    .line 251
    invoke-static/range {v4 .. v9}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    goto :goto_1

    .line 280
    .end local v14    # "plugin":Lcom/mediatek/common/util/IWebProtocolNames;
    :cond_7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "link$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/text/util/LinkSpec;

    .line 281
    .local v11, "link":Landroid/text/util/LinkSpec;
    iget-object v1, v11, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    iget v4, v11, Landroid/text/util/LinkSpec;->start:I

    iget v5, v11, Landroid/text/util/LinkSpec;->end:I

    invoke-static {v1, v4, v5, p0}, Landroid/text/util/Linkify;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    goto :goto_2

    .line 284
    .end local v11    # "link":Landroid/text/util/LinkSpec;
    :cond_8
    const/4 v1, 0x1

    return v1
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    .locals 1
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "scheme"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 458
    invoke-static {p0, p1, p2, v0, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v0

    return v0
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z
    .locals 10
    .param p0, "s"    # Landroid/text/Spannable;
    .param p1, "p"    # Ljava/util/regex/Pattern;
    .param p2, "scheme"    # Ljava/lang/String;
    .param p3, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p4, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;

    .prologue
    const/4 v9, 0x0

    .line 478
    const/4 v2, 0x0

    .line 479
    .local v2, "hasMatches":Z
    if-nez p2, :cond_2

    const-string/jumbo v4, ""

    .line 480
    .local v4, "prefix":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 482
    .local v3, "m":Ljava/util/regex/Matcher;
    :cond_0
    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 483
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    .line 484
    .local v5, "start":I
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 485
    .local v1, "end":I
    const/4 v0, 0x1

    .line 487
    .local v0, "allowed":Z
    if-eqz p3, :cond_1

    .line 488
    invoke-interface {p3, p0, v5, v1}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v0

    .line 491
    .end local v0    # "allowed":Z
    :cond_1
    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    aput-object v4, v8, v9

    invoke-static {v7, v8, v3, p4}, Landroid/text/util/Linkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v6

    .line 495
    .local v6, "url":Ljava/lang/String;
    invoke-static {v6, v5, v1, p0}, Landroid/text/util/Linkify;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    .line 496
    const/4 v2, 0x1

    goto :goto_1

    .line 479
    .end local v1    # "end":I
    .end local v3    # "m":Ljava/util/regex/Matcher;
    .end local v4    # "prefix":Ljava/lang/String;
    .end local v5    # "start":I
    .end local v6    # "url":Ljava/lang/String;
    :cond_2
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "prefix":Ljava/lang/String;
    goto :goto_0

    .line 500
    .restart local v3    # "m":Ljava/util/regex/Matcher;
    :cond_3
    return v2
.end method

.method public static final addLinks(Landroid/widget/TextView;I)Z
    .locals 5
    .param p0, "text"    # Landroid/widget/TextView;
    .param p1, "mask"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 368
    if-nez p1, :cond_0

    .line 369
    return v3

    .line 372
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 374
    .local v1, "t":Ljava/lang/CharSequence;
    instance-of v2, v1, Landroid/text/Spannable;

    if-eqz v2, :cond_2

    .line 375
    check-cast v1, Landroid/text/Spannable;

    .end local v1    # "t":Ljava/lang/CharSequence;
    invoke-static {v1, p1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 376
    invoke-static {p0}, Landroid/text/util/Linkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    .line 377
    return v4

    .line 380
    :cond_1
    return v3

    .line 382
    .restart local v1    # "t":Ljava/lang/CharSequence;
    :cond_2
    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 384
    .local v0, "s":Landroid/text/SpannableString;
    invoke-static {v0, p1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 385
    invoke-static {p0}, Landroid/text/util/Linkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    .line 386
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    return v4

    .line 391
    :cond_3
    return v3
.end method

.method private static final applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "text"    # Landroid/text/Spannable;

    .prologue
    .line 504
    new-instance v0, Landroid/text/style/URLSpan;

    invoke-direct {v0, p0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 506
    .local v0, "span":Landroid/text/style/URLSpan;
    const/16 v1, 0x21

    invoke-interface {p3, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 503
    return-void
.end method

.method private static final gatherLenovoLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 7
    .param p1, "s"    # Landroid/text/Spannable;
    .param p2, "pattern"    # Ljava/util/regex/Pattern;
    .param p3, "schemes"    # [Ljava/lang/String;
    .param p4, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p5, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            "Landroid/text/util/Linkify$TransformFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 345
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 346
    .local v1, "b":Landroid/text/SpannableStringBuilder;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 347
    invoke-interface {p1, v6}, Landroid/text/Spannable;->charAt(I)C

    move-result v0

    const/16 v2, 0x80

    if-lt v0, v2, :cond_0

    .line 348
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 346
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 350
    :cond_0
    invoke-interface {p1, v6}, Landroid/text/Spannable;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    :cond_1
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 354
    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 344
    return-void
.end method

.method private static final gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 10
    .param p1, "s"    # Landroid/text/Spannable;
    .param p2, "pattern"    # Ljava/util/regex/Pattern;
    .param p3, "schemes"    # [Ljava/lang/String;
    .param p4, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p5, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            "Landroid/text/util/Linkify$TransformFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 542
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 544
    .local v1, "m":Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 545
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    .line 546
    .local v4, "start":I
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 549
    .local v0, "end":I
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 550
    .local v7, "urlstr":Ljava/lang/String;
    sget v8, Landroid/text/util/Linkify;->sAddLinkMask:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1

    .line 551
    const-class v8, Lcom/mediatek/common/util/IPatterns;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/util/IPatterns;

    .line 552
    .local v2, "plugin":Lcom/mediatek/common/util/IPatterns;
    if-eqz v2, :cond_3

    .line 553
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8, v4, v0}, Lcom/mediatek/common/util/IPatterns;->getWebUrl(Ljava/lang/String;II)Lcom/mediatek/common/util/IPatterns$UrlData;

    move-result-object v6

    .line 554
    .local v6, "urlData":Lcom/mediatek/common/util/IPatterns$UrlData;
    iget-object v7, v6, Lcom/mediatek/common/util/IPatterns$UrlData;->urlStr:Ljava/lang/String;

    .line 555
    iget v8, v6, Lcom/mediatek/common/util/IPatterns$UrlData;->start:I

    const/4 v9, 0x0

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 556
    iget v8, v6, Lcom/mediatek/common/util/IPatterns$UrlData;->end:I

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 562
    .end local v2    # "plugin":Lcom/mediatek/common/util/IPatterns;
    .end local v6    # "urlData":Lcom/mediatek/common/util/IPatterns$UrlData;
    :cond_1
    :goto_1
    if-eqz p4, :cond_2

    invoke-interface {p4, p1, v4, v0}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 563
    :cond_2
    new-instance v3, Landroid/text/util/LinkSpec;

    invoke-direct {v3}, Landroid/text/util/LinkSpec;-><init>()V

    .line 564
    .local v3, "spec":Landroid/text/util/LinkSpec;
    invoke-static {v7, p3, v1, p5}, Landroid/text/util/Linkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v5

    .line 566
    .local v5, "url":Ljava/lang/String;
    iput-object v5, v3, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    .line 567
    iput v4, v3, Landroid/text/util/LinkSpec;->start:I

    .line 568
    iput v0, v3, Landroid/text/util/LinkSpec;->end:I

    .line 570
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 558
    .end local v3    # "spec":Landroid/text/util/LinkSpec;
    .end local v5    # "url":Ljava/lang/String;
    .restart local v2    # "plugin":Lcom/mediatek/common/util/IPatterns;
    :cond_3
    const-string/jumbo v8, "Linkify"

    const-string/jumbo v9, "gatherLinks(), IPatterns fail to create plugin instance"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 541
    .end local v0    # "end":I
    .end local v2    # "plugin":Lcom/mediatek/common/util/IPatterns;
    .end local v4    # "start":I
    .end local v7    # "urlstr":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private static final gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .locals 14
    .param p1, "s"    # Landroid/text/Spannable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 589
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    invoke-interface {p1}, Landroid/text/Spannable;->toString()Ljava/lang/String;

    move-result-object v10

    .line 591
    .local v10, "string":Ljava/lang/String;
    const/4 v1, 0x0

    .line 594
    .local v1, "base":I
    :goto_0
    :try_start_0
    invoke-static {v10}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "address":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 595
    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 597
    .local v9, "start":I
    if-gez v9, :cond_1

    .line 588
    .end local v9    # "start":I
    :cond_0
    return-void

    .line 601
    .restart local v9    # "start":I
    :cond_1
    new-instance v8, Landroid/text/util/LinkSpec;

    invoke-direct {v8}, Landroid/text/util/LinkSpec;-><init>()V

    .line 602
    .local v8, "spec":Landroid/text/util/LinkSpec;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    .line 603
    .local v7, "length":I
    add-int v6, v9, v7

    .line 605
    .local v6, "end":I
    add-int v11, v1, v9

    iput v11, v8, Landroid/text/util/LinkSpec;->start:I

    .line 606
    add-int v11, v1, v6

    iput v11, v8, Landroid/text/util/LinkSpec;->end:I

    .line 607
    invoke-virtual {v10, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .line 608
    add-int/2addr v1, v6

    .line 610
    const/4 v5, 0x0

    .line 613
    .local v5, "encodedAddress":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v11, "UTF-8"

    invoke-static {v0, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 618
    .local v5, "encodedAddress":Ljava/lang/String;
    :try_start_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "geo:0,0?q="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    .line 619
    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 621
    .end local v0    # "address":Ljava/lang/String;
    .end local v5    # "encodedAddress":Ljava/lang/String;
    .end local v6    # "end":I
    .end local v7    # "length":I
    .end local v8    # "spec":Landroid/text/util/LinkSpec;
    .end local v9    # "start":I
    :catch_0
    move-exception v4

    .line 625
    .local v4, "e":Ljava/lang/UnsupportedOperationException;
    return-void

    .line 627
    .end local v4    # "e":Ljava/lang/UnsupportedOperationException;
    :catch_1
    move-exception v3

    .line 628
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "Linkify"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "exception string:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 629
    return-void

    .line 614
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "address":Ljava/lang/String;
    .local v5, "encodedAddress":Ljava/lang/String;
    .restart local v6    # "end":I
    .restart local v7    # "length":I
    .restart local v8    # "spec":Landroid/text/util/LinkSpec;
    .restart local v9    # "start":I
    :catch_2
    move-exception v2

    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method private static final gatherTelLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .locals 10
    .param p1, "s"    # Landroid/text/Spannable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 576
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    .line 577
    .local v0, "phoneUtil":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    invoke-interface {p1}, Landroid/text/Spannable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 578
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->POSSIBLE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    const-wide v4, 0x7fffffffffffffffL

    .line 577
    invoke-virtual/range {v0 .. v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)Ljava/lang/Iterable;

    move-result-object v8

    .line 579
    .local v8, "matches":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/i18n/phonenumbers/PhoneNumberMatch;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "match$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    .line 580
    .local v6, "match":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    new-instance v9, Landroid/text/util/LinkSpec;

    invoke-direct {v9}, Landroid/text/util/LinkSpec;-><init>()V

    .line 581
    .local v9, "spec":Landroid/text/util/LinkSpec;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->rawString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    .line 582
    invoke-virtual {v6}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->start()I

    move-result v1

    iput v1, v9, Landroid/text/util/LinkSpec;->start:I

    .line 583
    invoke-virtual {v6}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->end()I

    move-result v1

    iput v1, v9, Landroid/text/util/LinkSpec;->end:I

    .line 584
    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 575
    .end local v6    # "match":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .end local v9    # "spec":Landroid/text/util/LinkSpec;
    :cond_0
    return-void
.end method

.method private static final makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;
    .locals 9
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "prefixes"    # [Ljava/lang/String;
    .param p2, "m"    # Ljava/util/regex/Matcher;
    .param p3, "filter"    # Landroid/text/util/Linkify$TransformFilter;

    .prologue
    const/4 v2, 0x0

    .line 511
    if-eqz p3, :cond_0

    .line 512
    invoke-interface {p3, p2, p0}, Landroid/text/util/Linkify$TransformFilter;->transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 515
    :cond_0
    const/4 v7, 0x0

    .line 517
    .local v7, "hasPrefix":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, p1

    if-ge v8, v0, :cond_1

    .line 518
    aget-object v3, p1, v8

    .line 519
    aget-object v0, p1, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    .line 518
    const/4 v1, 0x1

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 520
    const/4 v7, 0x1

    .line 523
    aget-object v4, p1, v8

    .line 524
    aget-object v0, p1, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    move-object v1, p0

    move v3, v2

    move v5, v2

    .line 523
    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p1, v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 532
    :cond_1
    if-nez v7, :cond_2

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 536
    :cond_2
    return-object p0

    .line 517
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method private static final pruneOverlaps(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/LinkSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 635
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    new-instance v2, Landroid/text/util/Linkify$4;

    invoke-direct {v2}, Landroid/text/util/Linkify$4;-><init>()V

    .line 657
    .local v2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/text/util/LinkSpec;>;"
    invoke-static {p0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 659
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 660
    .local v4, "len":I
    const/4 v3, 0x0

    .line 662
    .local v3, "i":I
    :goto_0
    add-int/lit8 v6, v4, -0x1

    if-ge v3, v6, :cond_4

    .line 663
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/util/LinkSpec;

    .line 664
    .local v0, "a":Landroid/text/util/LinkSpec;
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/util/LinkSpec;

    .line 665
    .local v1, "b":Landroid/text/util/LinkSpec;
    const/4 v5, -0x1

    .line 667
    .local v5, "remove":I
    iget v6, v0, Landroid/text/util/LinkSpec;->start:I

    iget v7, v1, Landroid/text/util/LinkSpec;->start:I

    if-gt v6, v7, :cond_3

    iget v6, v0, Landroid/text/util/LinkSpec;->end:I

    iget v7, v1, Landroid/text/util/LinkSpec;->start:I

    if-le v6, v7, :cond_3

    .line 668
    iget v6, v1, Landroid/text/util/LinkSpec;->end:I

    iget v7, v0, Landroid/text/util/LinkSpec;->end:I

    if-gt v6, v7, :cond_1

    .line 669
    add-int/lit8 v5, v3, 0x1

    .line 676
    :cond_0
    :goto_1
    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 677
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 678
    add-int/lit8 v4, v4, -0x1

    .line 679
    goto :goto_0

    .line 670
    :cond_1
    iget v6, v0, Landroid/text/util/LinkSpec;->end:I

    iget v7, v0, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v6, v7

    iget v7, v1, Landroid/text/util/LinkSpec;->end:I

    iget v8, v1, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_2

    .line 671
    add-int/lit8 v5, v3, 0x1

    goto :goto_1

    .line 672
    :cond_2
    iget v6, v0, Landroid/text/util/LinkSpec;->end:I

    iget v7, v0, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v6, v7

    iget v7, v1, Landroid/text/util/LinkSpec;->end:I

    iget v8, v1, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v7, v8

    if-ge v6, v7, :cond_0

    .line 673
    move v5, v3

    goto :goto_1

    .line 684
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 634
    .end local v0    # "a":Landroid/text/util/LinkSpec;
    .end local v1    # "b":Landroid/text/util/LinkSpec;
    .end local v5    # "remove":I
    :cond_4
    return-void
.end method
