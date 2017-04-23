.class public Landroid/provider/Browser;
.super Ljava/lang/Object;
.source "Browser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Browser$BookmarkColumns;,
        Landroid/provider/Browser$SearchColumns;
    }
.end annotation


# static fields
.field public static final BOOKMARKS_URI:Landroid/net/Uri;

.field public static final EXTRA_APPLICATION_ID:Ljava/lang/String; = "com.android.browser.application_id"

.field public static final EXTRA_CREATE_NEW_TAB:Ljava/lang/String; = "create_new_tab"

.field public static final EXTRA_HEADERS:Ljava/lang/String; = "com.android.browser.headers"

.field public static final EXTRA_SHARE_FAVICON:Ljava/lang/String; = "share_favicon"

.field public static final EXTRA_SHARE_SCREENSHOT:Ljava/lang/String; = "share_screenshot"

.field public static final HISTORY_PROJECTION:[Ljava/lang/String;

.field public static final HISTORY_PROJECTION_BOOKMARK_INDEX:I = 0x4

.field public static final HISTORY_PROJECTION_DATE_INDEX:I = 0x3

.field public static final HISTORY_PROJECTION_FAVICON_INDEX:I = 0x6

.field public static final HISTORY_PROJECTION_ID_INDEX:I = 0x0

.field public static final HISTORY_PROJECTION_THUMBNAIL_INDEX:I = 0x7

.field public static final HISTORY_PROJECTION_TITLE_INDEX:I = 0x5

.field public static final HISTORY_PROJECTION_TOUCH_ICON_INDEX:I = 0x8

.field public static final HISTORY_PROJECTION_URL_INDEX:I = 0x1

.field public static final HISTORY_PROJECTION_VISITS_INDEX:I = 0x2

.field public static final INITIAL_ZOOM_LEVEL:Ljava/lang/String; = "browser.initialZoomLevel"

.field private static final LOGTAG:Ljava/lang/String; = "browser"

.field private static final MAX_HISTORY_COUNT:I = 0xfa

.field public static final SEARCHES_PROJECTION:[Ljava/lang/String;

.field public static final SEARCHES_PROJECTION_DATE_INDEX:I = 0x2

.field public static final SEARCHES_PROJECTION_SEARCH_INDEX:I = 0x1

.field public static final SEARCHES_URI:Landroid/net/Uri;

.field public static final TRUNCATE_HISTORY_PROJECTION:[Ljava/lang/String;

.field public static final TRUNCATE_HISTORY_PROJECTION_ID_INDEX:I = 0x0

.field public static final TRUNCATE_N_OLDEST:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    const-string/jumbo v0, "content://browser/bookmarks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    .line 78
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 79
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 80
    const-string/jumbo v1, "url"

    aput-object v1, v0, v4

    .line 81
    const-string/jumbo v1, "visits"

    aput-object v1, v0, v5

    .line 82
    const-string/jumbo v1, "date"

    aput-object v1, v0, v6

    .line 83
    const-string/jumbo v1, "bookmark"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 84
    const-string/jumbo v1, "title"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 85
    const-string/jumbo v1, "favicon"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 86
    const-string/jumbo v1, "thumbnail"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 87
    const-string/jumbo v1, "touch_icon"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 88
    const-string/jumbo v1, "user_entered"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 78
    sput-object v0, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    .line 121
    new-array v0, v5, [Ljava/lang/String;

    .line 122
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 123
    const-string/jumbo v1, "date"

    aput-object v1, v0, v4

    .line 121
    sput-object v0, Landroid/provider/Browser;->TRUNCATE_HISTORY_PROJECTION:[Ljava/lang/String;

    .line 137
    const-string/jumbo v0, "content://browser/searches"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Browser;->SEARCHES_URI:Landroid/net/Uri;

    .line 144
    new-array v0, v6, [Ljava/lang/String;

    .line 146
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 147
    const-string/jumbo v1, "search"

    aput-object v1, v0, v4

    .line 148
    const-string/jumbo v1, "date"

    aput-object v1, v0, v5

    .line 144
    sput-object v0, Landroid/provider/Browser;->SEARCHES_PROJECTION:[Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final addOrUrlEquals(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 272
    const-string/jumbo v0, " OR url = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    return-void
.end method

.method public static final addSearchUrl(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "search"    # Ljava/lang/String;

    .prologue
    .line 545
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 546
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "search"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const-string/jumbo v1, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 548
    sget-object v1, Landroid/provider/BrowserContract$Searches;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 543
    return-void
.end method

.method public static final canClearHistory(Landroid/content/ContentResolver;)Z
    .locals 9
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 442
    const/4 v6, 0x0

    .line 443
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 445
    .local v8, "ret":Z
    :try_start_0
    sget-object v1, Landroid/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    .line 446
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string/jumbo v0, "visits"

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 447
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 445
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 448
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_1

    const/4 v8, 0x1

    .line 452
    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 454
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_1
    return v8

    .line 448
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 449
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 450
    .local v7, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    const-string/jumbo v0, "browser"

    const-string/jumbo v1, "canClearHistory"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 452
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 451
    .end local v7    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v0

    .line 452
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 451
    :cond_2
    throw v0
.end method

.method public static final clearHistory(Landroid/content/ContentResolver;)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 465
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/provider/Browser;->deleteHistoryWhere(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 464
    return-void
.end method

.method public static final clearSearches(Landroid/content/ContentResolver;)V
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 561
    :try_start_0
    sget-object v1, Landroid/provider/BrowserContract$Searches;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    :goto_0
    return-void

    .line 562
    :catch_0
    move-exception v0

    .line 563
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v1, "browser"

    const-string/jumbo v2, "clearSearches"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static final deleteFromHistory(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 533
    sget-object v0, Landroid/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "url=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 532
    return-void
.end method

.method public static final deleteHistoryTimeFrame(Landroid/content/ContentResolver;JJ)V
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "begin"    # J
    .param p3, "end"    # J

    .prologue
    const-wide/16 v4, -0x1

    .line 508
    const-string/jumbo v0, "date"

    .line 509
    .local v0, "date":Ljava/lang/String;
    cmp-long v2, v4, p1

    if-nez v2, :cond_1

    .line 510
    cmp-long v2, v4, p3

    if-nez v2, :cond_0

    .line 511
    invoke-static {p0}, Landroid/provider/Browser;->clearHistory(Landroid/content/ContentResolver;)V

    .line 512
    return-void

    .line 514
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 521
    .local v1, "whereClause":Ljava/lang/String;
    :goto_0
    invoke-static {p0, v1}, Landroid/provider/Browser;->deleteHistoryWhere(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 506
    return-void

    .line 515
    .end local v1    # "whereClause":Ljava/lang/String;
    :cond_1
    cmp-long v2, v4, p3

    if-nez v2, :cond_2

    .line 516
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "whereClause":Ljava/lang/String;
    goto :goto_0

    .line 518
    .end local v1    # "whereClause":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 519
    const-string/jumbo v3, " < "

    .line 518
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 519
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 518
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "whereClause":Ljava/lang/String;
    goto :goto_0
.end method

.method private static final deleteHistoryWhere(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 8
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "whereClause"    # Ljava/lang/String;

    .prologue
    .line 480
    const/4 v6, 0x0

    .line 482
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "url"

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 483
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    .line 482
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 484
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    sget-object v0, Landroid/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 479
    :cond_1
    return-void

    .line 487
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 488
    .local v7, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    const-string/jumbo v0, "browser"

    const-string/jumbo v1, "deleteHistoryWhere"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 491
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 489
    :cond_2
    return-void

    .line 490
    .end local v7    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v0

    .line 491
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 490
    :cond_3
    throw v0
.end method

.method public static final getAllBookmarks(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 252
    sget-object v1, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    .line 253
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "url"

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 254
    const-string/jumbo v3, "folder = 0"

    move-object v0, p0

    move-object v5, v4

    .line 252
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final getAllVisitedUrls(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 266
    sget-object v1, Landroid/provider/BrowserContract$Combined;->CONTENT_URI:Landroid/net/Uri;

    .line 267
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "url"

    const/4 v4, 0x0

    aput-object v0, v2, v4

    .line 268
    const-string/jumbo v5, "created ASC"

    move-object v0, p0

    move-object v4, v3

    .line 266
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final getVisitedHistory(Landroid/content/ContentResolver;)[Ljava/lang/String;
    .locals 10
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 376
    const/4 v6, 0x0

    .line 377
    .local v6, "c":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 379
    .local v9, "str":[Ljava/lang/String;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    .line 380
    const-string/jumbo v0, "url"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    .line 382
    .local v2, "projection":[Ljava/lang/String;
    sget-object v1, Landroid/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "visits > 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 383
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 383
    :cond_0
    return-object v0

    .line 384
    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v9, v0, [Ljava/lang/String;

    .line 385
    .local v9, "str":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 386
    .local v8, "i":I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 387
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v8
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 394
    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 396
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v8    # "i":I
    :cond_3
    :goto_1
    return-object v9

    .line 390
    .end local v9    # "str":[Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 391
    .local v7, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    const-string/jumbo v0, "browser"

    const-string/jumbo v1, "getVisitedHistory"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 392
    const/4 v0, 0x0

    new-array v9, v0, [Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 394
    .restart local v9    # "str":[Ljava/lang/String;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 393
    .end local v7    # "e":Ljava/lang/IllegalStateException;
    .end local v9    # "str":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 394
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 393
    :cond_4
    throw v0
.end method

.method private static final getVisitedLike(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 276
    const/4 v7, 0x0

    .line 277
    .local v7, "secure":Z
    move-object v6, p1

    .line 278
    .local v6, "compareString":Ljava/lang/String;
    const-string/jumbo v0, "http://"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 279
    const/4 v0, 0x7

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 284
    :cond_0
    :goto_0
    const-string/jumbo v0, "www."

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 287
    :cond_1
    const/4 v8, 0x0

    .line 288
    .local v8, "whereClause":Ljava/lang/StringBuilder;
    if-eqz v7, :cond_3

    .line 289
    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8    # "whereClause":Ljava/lang/StringBuilder;
    const-string/jumbo v0, "url = "

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    .local v8, "whereClause":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 292
    invoke-static {v8}, Landroid/provider/Browser;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "https://www."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 310
    :goto_1
    sget-object v1, Landroid/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string/jumbo v0, "visits"

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 311
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    .line 310
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 280
    .end local v8    # "whereClause":Ljava/lang/StringBuilder;
    :cond_2
    const-string/jumbo v0, "https://"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 282
    const/4 v7, 0x1

    goto :goto_0

    .line 296
    .local v8, "whereClause":Ljava/lang/StringBuilder;
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8    # "whereClause":Ljava/lang/StringBuilder;
    const-string/jumbo v0, "url = "

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 297
    .local v8, "whereClause":Ljava/lang/StringBuilder;
    invoke-static {v8, v6}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 299
    invoke-static {v8}, Landroid/provider/Browser;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "www."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 301
    .local v9, "wwwString":Ljava/lang/String;
    invoke-static {v8, v9}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 303
    invoke-static {v8}, Landroid/provider/Browser;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 304
    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 306
    invoke-static {v8}, Landroid/provider/Browser;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public static final requestAllIcons(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/webkit/WebIconDatabase$IconListener;)V
    .locals 0
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/webkit/WebIconDatabase$IconListener;

    .prologue
    .line 580
    return-void
.end method

.method public static final saveBookmark(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 176
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 177
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 175
    return-void
.end method

.method public static final sendString(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 213
    const v0, 0x104037f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public static final sendString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "stringToSend"    # Ljava/lang/String;
    .param p2, "chooserDialogTitle"    # Ljava/lang/String;

    .prologue
    .line 229
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 230
    .local v2, "send":Landroid/content/Intent;
    const-string/jumbo v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const-string/jumbo v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    :try_start_0
    invoke-static {v2, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 236
    .local v1, "i":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 237
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v1    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 238
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    goto :goto_0
.end method

.method public static final truncateHistory(Landroid/content/ContentResolver;)V
    .locals 9
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 411
    const/4 v6, 0x0

    .line 415
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    .line 416
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string/jumbo v0, "url"

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string/jumbo v0, "date"

    const/4 v3, 0x2

    aput-object v0, v2, v3

    .line 417
    const-string/jumbo v5, "date ASC"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    .line 415
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 419
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v1, 0xfa

    if-lt v0, v1, :cond_0

    .line 421
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/4 v0, 0x5

    if-ge v8, v0, :cond_0

    .line 422
    sget-object v0, Landroid/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 423
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 422
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 424
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 430
    .end local v8    # "i":I
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 409
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_1
    return-void

    .line 421
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "i":I
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 427
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "i":I
    :catch_0
    move-exception v7

    .line 428
    .local v7, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    const-string/jumbo v0, "browser"

    const-string/jumbo v1, "truncateHistory"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 430
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 429
    .end local v7    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v0

    .line 430
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 429
    :cond_3
    throw v0
.end method

.method public static final updateVisitedHistory(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 10
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "real"    # Z

    .prologue
    .line 326
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 327
    .local v2, "now":J
    const/4 v0, 0x0

    .line 329
    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-static {p0, p1}, Landroid/provider/Browser;->getVisitedLike(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 331
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 332
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 333
    .local v5, "values":Landroid/content/ContentValues;
    if-eqz p2, :cond_1

    .line 334
    const-string/jumbo v7, "visits"

    const/4 v8, 0x1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 338
    :goto_0
    const-string/jumbo v7, "date"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 339
    sget-object v7, Landroid/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 340
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 339
    invoke-virtual {p0, v7, v5, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    :goto_1
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 325
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v5    # "values":Landroid/content/ContentValues;
    :cond_0
    :goto_2
    return-void

    .line 336
    .restart local v0    # "c":Landroid/database/Cursor;
    .restart local v5    # "values":Landroid/content/ContentValues;
    :cond_1
    :try_start_1
    const-string/jumbo v7, "user_entered"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 361
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v5    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 362
    .local v1, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    const-string/jumbo v7, "browser"

    const-string/jumbo v8, "updateVisitedHistory"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 364
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 342
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .restart local v0    # "c":Landroid/database/Cursor;
    :cond_2
    :try_start_3
    invoke-static {p0}, Landroid/provider/Browser;->truncateHistory(Landroid/content/ContentResolver;)V

    .line 343
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 346
    .restart local v5    # "values":Landroid/content/ContentValues;
    if-eqz p2, :cond_4

    .line 347
    const/4 v6, 0x1

    .line 348
    .local v6, "visits":I
    const/4 v4, 0x0

    .line 353
    .local v4, "user_entered":I
    :goto_3
    const-string/jumbo v7, "url"

    invoke-virtual {v5, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string/jumbo v7, "visits"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 355
    const-string/jumbo v7, "date"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 356
    const-string/jumbo v7, "title"

    invoke-virtual {v5, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string/jumbo v7, "created"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 358
    const-string/jumbo v7, "user_entered"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 359
    sget-object v7, Landroid/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 363
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v4    # "user_entered":I
    .end local v5    # "values":Landroid/content/ContentValues;
    .end local v6    # "visits":I
    :catchall_0
    move-exception v7

    .line 364
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 363
    :cond_3
    throw v7

    .line 350
    .restart local v0    # "c":Landroid/database/Cursor;
    .restart local v5    # "values":Landroid/content/ContentValues;
    :cond_4
    const/4 v6, 0x0

    .line 351
    .restart local v6    # "visits":I
    const/4 v4, 0x1

    .restart local v4    # "user_entered":I
    goto :goto_3
.end method
