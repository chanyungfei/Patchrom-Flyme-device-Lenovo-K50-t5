.class public Landroid/provider/ContactsContract$Contacts;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/ContactsContract$ContactsColumns;
.implements Landroid/provider/ContactsContract$ContactOptionsColumns;
.implements Landroid/provider/ContactsContract$ContactNameColumns;
.implements Landroid/provider/ContactsContract$ContactStatusColumns;
.implements Landroid/provider/ContactsContract$ContactCounts;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Contacts"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/ContactsContract$Contacts$Data;,
        Landroid/provider/ContactsContract$Contacts$Entity;,
        Landroid/provider/ContactsContract$Contacts$StreamItems;,
        Landroid/provider/ContactsContract$Contacts$AggregationSuggestions;,
        Landroid/provider/ContactsContract$Contacts$Photo;
    }
.end annotation


# static fields
.field public static final CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final CONTENT_FREQUENT_URI:Landroid/net/Uri;

.field public static final CONTENT_GROUP_URI:Landroid/net/Uri;

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/contact"

.field public static final CONTENT_LOOKUP_URI:Landroid/net/Uri;

.field public static final CONTENT_MULTI_VCARD_URI:Landroid/net/Uri;

.field public static final CONTENT_STREQUENT_FILTER_URI:Landroid/net/Uri;

.field public static final CONTENT_STREQUENT_URI:Landroid/net/Uri;

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/contact"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_VCARD_TYPE:Ljava/lang/String; = "text/x-vcard"

.field public static final CONTENT_VCARD_URI:Landroid/net/Uri;

.field public static final CORP_CONTENT_URI:Landroid/net/Uri;

.field public static ENTERPRISE_CONTACT_ID_BASE:J = 0x0L

.field public static ENTERPRISE_CONTACT_LOOKUP_PREFIX:Ljava/lang/String; = null

.field public static final QUERY_PARAMETER_VCARD_NO_PHOTO:Ljava/lang/String; = "no_photo"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1523
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "contacts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 1535
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 1536
    const-string/jumbo v1, "contacts_corp"

    .line 1535
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$Contacts;->CORP_CONTENT_URI:Landroid/net/Uri;

    .line 1554
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 1555
    const-string/jumbo v1, "lookup"

    .line 1554
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    .line 1565
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 1566
    const-string/jumbo v1, "as_vcard"

    .line 1565
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    .line 1619
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 1620
    const-string/jumbo v1, "as_multi_vcard"

    .line 1619
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_MULTI_VCARD_URI:Landroid/net/Uri;

    .line 1718
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "filter"

    .line 1717
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 1726
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "strequent"

    .line 1725
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_STREQUENT_URI:Landroid/net/Uri;

    .line 1732
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "frequent"

    .line 1731
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_FREQUENT_URI:Landroid/net/Uri;

    .line 1741
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_STREQUENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "filter"

    .line 1740
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_STREQUENT_FILTER_URI:Landroid/net/Uri;

    .line 1744
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "group"

    .line 1743
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_GROUP_URI:Landroid/net/Uri;

    .line 1770
    const-wide/32 v0, 0x3b9aca00

    sput-wide v0, Landroid/provider/ContactsContract$Contacts;->ENTERPRISE_CONTACT_ID_BASE:J

    .line 1778
    const-string/jumbo v0, "c-"

    sput-object v0, Landroid/provider/ContactsContract$Contacts;->ENTERPRISE_CONTACT_LOOKUP_PREFIX:Ljava/lang/String;

    .line 1513
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "contactId"    # J
    .param p2, "lookupKey"    # Ljava/lang/String;

    .prologue
    .line 1657
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1658
    const/4 v0, 0x0

    return-object v0

    .line 1660
    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v0, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 10
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1630
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    .line 1631
    const-string/jumbo v0, "lookup"

    aput-object v0, v2, v1

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v4

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 1630
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1633
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 1634
    return-object v3

    .line 1638
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1639
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1640
    .local v7, "lookupKey":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1641
    .local v8, "contactId":J
    invoke-static {v8, v9, v7}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1644
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1641
    return-object v0

    .line 1644
    .end local v7    # "lookupKey":Ljava/lang/String;
    .end local v8    # "contactId":J
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1646
    return-object v3

    .line 1643
    :catchall_0
    move-exception v0

    .line 1644
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1643
    throw v0
.end method

.method public static isEnterpriseContactId(J)Z
    .locals 4
    .param p0, "contactId"    # J

    .prologue
    const/4 v0, 0x0

    .line 1786
    sget-wide v2, Landroid/provider/ContactsContract$Contacts;->ENTERPRISE_CONTACT_ID_BASE:J

    cmp-long v1, p0, v2

    if-ltz v1, :cond_0

    const-wide v2, 0x7fffffff80000000L

    cmp-long v1, p0, v2

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 10
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "lookupUri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1670
    if-nez p1, :cond_0

    .line 1671
    return-object v3

    .line 1674
    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1675
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 1676
    return-object v3

    .line 1680
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1681
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1682
    .local v8, "contactId":J
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1685
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1682
    return-object v0

    .line 1685
    .end local v8    # "contactId":J
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1687
    return-object v3

    .line 1684
    :catchall_0
    move-exception v0

    .line 1685
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1684
    throw v0
.end method

.method public static markAsContacted(Landroid/content/ContentResolver;J)V
    .locals 7
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "contactId"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1704
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1705
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1707
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "last_time_contacted"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1708
    invoke-virtual {p0, v0, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1703
    return-void
.end method

.method public static openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 2179
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;
    .locals 11
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "preferHighres"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2132
    if-eqz p2, :cond_0

    .line 2134
    const-string/jumbo v0, "display_photo"

    .line 2133
    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 2137
    .local v8, "displayPhotoUri":Landroid/net/Uri;
    :try_start_0
    const-string/jumbo v0, "r"

    invoke-virtual {p0, v8, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v10

    .line 2138
    .local v10, "fd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v10}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 2139
    .end local v10    # "fd":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v9

    .line 2144
    .end local v8    # "displayPhotoUri":Landroid/net/Uri;
    :cond_0
    const-string/jumbo v0, "photo"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2145
    .local v1, "photoUri":Landroid/net/Uri;
    if-nez v1, :cond_1

    .line 2146
    return-object v3

    .line 2149
    :cond_1
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    .line 2150
    const-string/jumbo v0, "data15"

    aput-object v0, v2, v4

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    .line 2148
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2153
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2156
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 2157
    .local v7, "data":[B
    if-nez v7, :cond_5

    .line 2162
    if-eqz v6, :cond_2

    .line 2163
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2158
    :cond_2
    return-object v3

    .line 2162
    .end local v7    # "data":[B
    :cond_3
    if-eqz v6, :cond_4

    .line 2163
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2154
    :cond_4
    return-object v3

    .line 2160
    .restart local v7    # "data":[B
    :cond_5
    :try_start_2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2162
    if-eqz v6, :cond_6

    .line 2163
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2160
    :cond_6
    return-object v0

    .line 2161
    .end local v7    # "data":[B
    :catchall_0
    move-exception v0

    .line 2162
    if-eqz v6, :cond_7

    .line 2163
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2161
    :cond_7
    throw v0
.end method
