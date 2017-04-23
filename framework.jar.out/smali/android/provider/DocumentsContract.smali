.class public final Landroid/provider/DocumentsContract;
.super Ljava/lang/Object;
.source "DocumentsContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/DocumentsContract$Document;,
        Landroid/provider/DocumentsContract$Root;
    }
.end annotation


# static fields
.field public static final ACTION_BROWSE_DOCUMENT_ROOT:Ljava/lang/String; = "android.provider.action.BROWSE_DOCUMENT_ROOT"

.field public static final ACTION_DOCUMENT_ROOT_SETTINGS:Ljava/lang/String; = "android.provider.action.DOCUMENT_ROOT_SETTINGS"

.field public static final ACTION_MANAGE_DOCUMENT:Ljava/lang/String; = "android.provider.action.MANAGE_DOCUMENT"

.field public static final ACTION_MANAGE_ROOT:Ljava/lang/String; = "android.provider.action.MANAGE_ROOT"

.field public static final EXTRA_ERROR:Ljava/lang/String; = "error"

.field public static final EXTRA_EXCLUDE_SELF:Ljava/lang/String; = "android.provider.extra.EXCLUDE_SELF"

.field public static final EXTRA_INFO:Ljava/lang/String; = "info"

.field public static final EXTRA_LOADING:Ljava/lang/String; = "loading"

.field public static final EXTRA_ORIENTATION:Ljava/lang/String; = "android.content.extra.ORIENTATION"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.content.extra.PACKAGE_NAME"

.field public static final EXTRA_PROMPT:Ljava/lang/String; = "android.provider.extra.PROMPT"

.field public static final EXTRA_SHOW_ADVANCED:Ljava/lang/String; = "android.content.extra.SHOW_ADVANCED"

.field public static final EXTRA_URI:Ljava/lang/String; = "uri"

.field public static final METHOD_CREATE_DOCUMENT:Ljava/lang/String; = "android:createDocument"

.field public static final METHOD_DELETE_DOCUMENT:Ljava/lang/String; = "android:deleteDocument"

.field public static final METHOD_RENAME_DOCUMENT:Ljava/lang/String; = "android:renameDocument"

.field private static final PARAM_MANAGE:Ljava/lang/String; = "manage"

.field private static final PARAM_QUERY:Ljava/lang/String; = "query"

.field private static final PATH_CHILDREN:Ljava/lang/String; = "children"

.field private static final PATH_DOCUMENT:Ljava/lang/String; = "document"

.field private static final PATH_RECENT:Ljava/lang/String; = "recent"

.field private static final PATH_ROOT:Ljava/lang/String; = "root"

.field private static final PATH_SEARCH:Ljava/lang/String; = "search"

.field private static final PATH_TREE:Ljava/lang/String; = "tree"

.field public static final PROVIDER_INTERFACE:Ljava/lang/String; = "android.content.action.DOCUMENTS_PROVIDER"

.field private static final TAG:Ljava/lang/String; = "Documents"

.field private static final THUMBNAIL_BUFFER_SIZE:I = 0x20000


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildChildDocumentsUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "parentDocumentId"    # Ljava/lang/String;

    .prologue
    .line 671
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 672
    const-string/jumbo v1, "document"

    .line 671
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 672
    const-string/jumbo v1, "children"

    .line 671
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildChildDocumentsUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "treeUri"    # Landroid/net/Uri;
    .param p1, "parentDocumentId"    # Ljava/lang/String;

    .prologue
    .line 701
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 702
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 701
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 702
    const-string/jumbo v1, "tree"

    .line 701
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 703
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 701
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 703
    const-string/jumbo v1, "document"

    .line 701
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 704
    const-string/jumbo v1, "children"

    .line 701
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "documentId"    # Ljava/lang/String;

    .prologue
    .line 616
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 617
    const-string/jumbo v1, "document"

    .line 616
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildDocumentUriMaybeUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "baseUri"    # Landroid/net/Uri;
    .param p1, "documentId"    # Ljava/lang/String;

    .prologue
    .line 652
    invoke-static {p0}, Landroid/provider/DocumentsContract;->isTreeUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 655
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/DocumentsContract;->buildDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "treeUri"    # Landroid/net/Uri;
    .param p1, "documentId"    # Ljava/lang/String;

    .prologue
    .line 644
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 645
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 644
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 645
    const-string/jumbo v1, "tree"

    .line 644
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 646
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 644
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 646
    const-string/jumbo v1, "document"

    .line 644
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildRecentDocumentsUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "rootId"    # Ljava/lang/String;

    .prologue
    .line 591
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 592
    const-string/jumbo v1, "root"

    .line 591
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 593
    const-string/jumbo v1, "recent"

    .line 591
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "rootId"    # Ljava/lang/String;

    .prologue
    .line 578
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 579
    const-string/jumbo v1, "root"

    .line 578
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildRootsUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;

    .prologue
    .line 567
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 568
    const-string/jumbo v1, "root"

    .line 567
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildSearchDocumentsUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "rootId"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;

    .prologue
    .line 718
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 719
    const-string/jumbo v1, "root"

    .line 718
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 719
    const-string/jumbo v1, "search"

    .line 718
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 720
    const-string/jumbo v1, "query"

    .line 718
    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildTreeDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "documentId"    # Ljava/lang/String;

    .prologue
    .line 603
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 604
    const-string/jumbo v1, "tree"

    .line 603
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static createDocument(Landroid/content/ContentProviderClient;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .param p0, "client"    # Landroid/content/ContentProviderClient;
    .param p1, "parentDocumentUri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "displayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 951
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 952
    .local v0, "in":Landroid/os/Bundle;
    const-string/jumbo v2, "uri"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 953
    const-string/jumbo v2, "mime_type"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    const-string/jumbo v2, "_display_name"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    const-string/jumbo v2, "android:createDocument"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 957
    .local v1, "out":Landroid/os/Bundle;
    const-string/jumbo v2, "uri"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    return-object v2
.end method

.method public static createDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "parentDocumentUri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "displayName"    # Ljava/lang/String;

    .prologue
    .line 937
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 936
    invoke-virtual {p0, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 939
    .local v0, "client":Landroid/content/ContentProviderClient;
    :try_start_0
    invoke-static {v0, p1, p2, p3}, Landroid/provider/DocumentsContract;->createDocument(Landroid/content/ContentProviderClient;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 944
    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    .line 939
    return-object v2

    .line 940
    :catch_0
    move-exception v1

    .line 941
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v2, "Documents"

    const-string/jumbo v3, "Failed to create document"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 942
    const/4 v2, 0x0

    .line 944
    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    .line 942
    return-object v2

    .line 943
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 944
    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    .line 943
    throw v2
.end method

.method public static deleteDocument(Landroid/content/ContentProviderClient;Landroid/net/Uri;)V
    .locals 3
    .param p0, "client"    # Landroid/content/ContentProviderClient;
    .param p1, "documentUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1022
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1023
    .local v0, "in":Landroid/os/Bundle;
    const-string/jumbo v1, "uri"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1025
    const-string/jumbo v1, "android:deleteDocument"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1021
    return-void
.end method

.method public static deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .locals 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "documentUri"    # Landroid/net/Uri;

    .prologue
    .line 1007
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 1006
    invoke-virtual {p0, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 1009
    .local v0, "client":Landroid/content/ContentProviderClient;
    :try_start_0
    invoke-static {v0, p1}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentProviderClient;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1010
    const/4 v2, 0x1

    .line 1015
    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    .line 1010
    return v2

    .line 1011
    :catch_0
    move-exception v1

    .line 1012
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v2, "Documents"

    const-string/jumbo v3, "Failed to delete document"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1013
    const/4 v2, 0x0

    .line 1015
    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    .line 1013
    return v2

    .line 1014
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 1015
    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    .line 1014
    throw v2
.end method

.method public static getDocumentId(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .param p0, "documentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 782
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 783
    .local v0, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v4, :cond_0

    const-string/jumbo v1, "document"

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 784
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 786
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    const-string/jumbo v1, "tree"

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 787
    const-string/jumbo v1, "document"

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 786
    if-eqz v1, :cond_1

    .line 788
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 790
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getDocumentThumbnail(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/graphics/Point;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;
    .locals 23
    .param p0, "client"    # Landroid/content/ContentProviderClient;
    .param p1, "documentUri"    # Landroid/net/Uri;
    .param p2, "size"    # Landroid/graphics/Point;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 857
    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    .line 858
    .local v17, "openOpts":Landroid/os/Bundle;
    const-string/jumbo v5, "android.content.extra.SIZE"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 860
    const/4 v11, 0x0

    .line 861
    .local v11, "afd":Landroid/content/res/AssetFileDescriptor;
    const/4 v4, 0x0

    .line 863
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    const-string/jumbo v5, "image/*"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/content/ContentProviderClient;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v11

    .line 865
    .local v11, "afd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v11}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v14

    .line 866
    .local v14, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {v11}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v18

    .line 870
    .local v18, "offset":J
    const/16 v16, 0x0

    .line 872
    .local v16, "is":Ljava/io/BufferedInputStream;
    :try_start_1
    sget v5, Landroid/system/OsConstants;->SEEK_SET:I

    move-wide/from16 v0, v18

    invoke-static {v14, v0, v1, v5}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 880
    .end local v16    # "is":Ljava/io/BufferedInputStream;
    :goto_0
    :try_start_2
    new-instance v20, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 881
    .local v20, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    move-object/from16 v0, v20

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 882
    if-eqz v16, :cond_1

    .line 883
    const/4 v5, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-static {v0, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 888
    :goto_1
    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, p2

    iget v6, v0, Landroid/graphics/Point;->x:I

    div-int v22, v5, v6

    .line 889
    .local v22, "widthSample":I
    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move-object/from16 v0, p2

    iget v6, v0, Landroid/graphics/Point;->y:I

    div-int v15, v5, v6

    .line 891
    .local v15, "heightSample":I
    const/4 v5, 0x0

    move-object/from16 v0, v20

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 892
    move/from16 v0, v22

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v5

    move-object/from16 v0, v20

    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 893
    if-eqz v16, :cond_2

    .line 894
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedInputStream;->reset()V

    .line 895
    const/4 v5, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-static {v0, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 908
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    :goto_2
    invoke-virtual {v11}, Landroid/content/res/AssetFileDescriptor;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    .line 909
    .local v13, "extras":Landroid/os/Bundle;
    if-eqz v13, :cond_3

    const-string/jumbo v5, "android.content.extra.ORIENTATION"

    const/4 v6, 0x0

    invoke-virtual {v13, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 910
    .local v21, "orientation":I
    :goto_3
    if-eqz v21, :cond_0

    .line 911
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 912
    .local v7, "width":I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 914
    .local v8, "height":I
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 915
    .local v9, "m":Landroid/graphics/Matrix;
    move/from16 v0, v21

    int-to-float v5, v0

    div-int/lit8 v6, v7, 0x2

    int-to-float v6, v6

    div-int/lit8 v10, v8, 0x2

    int-to-float v10, v10

    invoke-virtual {v9, v5, v6, v10}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 916
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 919
    .end local v7    # "width":I
    .end local v8    # "height":I
    .end local v9    # "m":Landroid/graphics/Matrix;
    :cond_0
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 922
    return-object v4

    .line 873
    .end local v13    # "extras":Landroid/os/Bundle;
    .end local v15    # "heightSample":I
    .end local v20    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v21    # "orientation":I
    .end local v22    # "widthSample":I
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    .restart local v16    # "is":Ljava/io/BufferedInputStream;
    :catch_0
    move-exception v12

    .line 874
    .local v12, "e":Landroid/system/ErrnoException;
    :try_start_3
    new-instance v16, Ljava/io/BufferedInputStream;

    .end local v16    # "is":Ljava/io/BufferedInputStream;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    const/high16 v6, 0x20000

    move-object/from16 v0, v16

    invoke-direct {v0, v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 875
    .local v16, "is":Ljava/io/BufferedInputStream;
    const/high16 v5, 0x20000

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/io/BufferedInputStream;->mark(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 918
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v12    # "e":Landroid/system/ErrnoException;
    .end local v14    # "fd":Ljava/io/FileDescriptor;
    .end local v16    # "is":Ljava/io/BufferedInputStream;
    .end local v18    # "offset":J
    :catchall_0
    move-exception v5

    .line 919
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 918
    throw v5

    .line 885
    .restart local v4    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v11    # "afd":Landroid/content/res/AssetFileDescriptor;
    .restart local v14    # "fd":Ljava/io/FileDescriptor;
    .restart local v18    # "offset":J
    .restart local v20    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    const/4 v5, 0x0

    :try_start_4
    move-object/from16 v0, v20

    invoke-static {v14, v5, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 898
    .restart local v15    # "heightSample":I
    .restart local v22    # "widthSample":I
    :cond_2
    :try_start_5
    sget v5, Landroid/system/OsConstants;->SEEK_SET:I

    move-wide/from16 v0, v18

    invoke-static {v14, v0, v1, v5}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 902
    :goto_4
    const/4 v5, 0x0

    :try_start_6
    move-object/from16 v0, v20

    invoke-static {v14, v5, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .local v4, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 899
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v12

    .line 900
    .restart local v12    # "e":Landroid/system/ErrnoException;
    invoke-virtual {v12}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 909
    .end local v12    # "e":Landroid/system/ErrnoException;
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    .restart local v13    # "extras":Landroid/os/Bundle;
    :cond_3
    const/16 v21, 0x0

    .restart local v21    # "orientation":I
    goto :goto_3
.end method

.method public static getDocumentThumbnail(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/Point;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "documentUri"    # Landroid/net/Uri;
    .param p2, "size"    # Landroid/graphics/Point;
    .param p3, "signal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 840
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 839
    invoke-virtual {p0, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 842
    .local v0, "client":Landroid/content/ContentProviderClient;
    :try_start_0
    invoke-static {v0, p1, p2, p3}, Landroid/provider/DocumentsContract;->getDocumentThumbnail(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/graphics/Point;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 849
    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    .line 842
    return-object v2

    .line 843
    :catch_0
    move-exception v1

    .line 844
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    instance-of v2, v1, Landroid/os/OperationCanceledException;

    if-nez v2, :cond_0

    .line 845
    const-string/jumbo v2, "Documents"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to load thumbnail for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 847
    :cond_0
    const/4 v2, 0x0

    .line 849
    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    .line 847
    return-object v2

    .line 848
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 849
    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    .line 848
    throw v2
.end method

.method public static getRootId(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p0, "rootUri"    # Landroid/net/Uri;

    .prologue
    .line 769
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 770
    .local v0, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    const-string/jumbo v1, "root"

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 771
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 773
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getSearchDocumentsQuery(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "searchDocumentsUri"    # Landroid/net/Uri;

    .prologue
    .line 809
    const-string/jumbo v0, "query"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p0, "documentUri"    # Landroid/net/Uri;

    .prologue
    .line 797
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 798
    .local v0, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    const-string/jumbo v1, "tree"

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 799
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 801
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 731
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 732
    .local v0, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_0

    const-string/jumbo v1, "document"

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 733
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/provider/DocumentsContract;->isDocumentsProvider(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 735
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "tree"

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 736
    const-string/jumbo v1, "document"

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 735
    if-eqz v1, :cond_1

    .line 737
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/provider/DocumentsContract;->isDocumentsProvider(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 739
    :cond_1
    return v3
.end method

.method private static isDocumentsProvider(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 749
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.content.action.DOCUMENTS_PROVIDER"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 750
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 754
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v2, :cond_0

    .line 755
    return v5

    .line 757
    :cond_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 758
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 759
    const/4 v4, 0x1

    return v4

    .line 762
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    :cond_2
    return v5
.end method

.method public static isManageMode(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 819
    const-string/jumbo v0, "manage"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isTreeUri(Landroid/net/Uri;)Z
    .locals 4
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 744
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 745
    .local v0, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    const-string/jumbo v2, "tree"

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public static openImageThumbnail(Ljava/io/File;)Landroid/content/res/AssetFileDescriptor;
    .locals 11
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1037
    const/high16 v0, 0x10000000

    .line 1036
    invoke-static {p0, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 1038
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    const/4 v6, 0x0

    .line 1041
    .local v6, "extras":Landroid/os/Bundle;
    :try_start_0
    new-instance v8, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 1043
    .local v8, "exif":Landroid/media/ExifInterface;
    const-string/jumbo v0, "Orientation"

    const/4 v2, -0x1

    invoke-virtual {v8, v0, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1058
    .end local v6    # "extras":Landroid/os/Bundle;
    :goto_0
    :pswitch_0
    invoke-virtual {v8}, Landroid/media/ExifInterface;->getThumbnailRange()[J

    move-result-object v10

    .line 1059
    .local v10, "thumb":[J
    if-eqz v10, :cond_0

    .line 1060
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    const/4 v2, 0x0

    aget-wide v2, v10, v2

    const/4 v4, 0x1

    aget-wide v4, v10, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJLandroid/os/Bundle;)V

    return-object v0

    .line 1045
    .end local v10    # "thumb":[J
    .restart local v6    # "extras":Landroid/os/Bundle;
    :pswitch_1
    new-instance v9, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v9, v0}, Landroid/os/Bundle;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1046
    .local v9, "extras":Landroid/os/Bundle;
    :try_start_1
    const-string/jumbo v0, "android.content.extra.ORIENTATION"

    .end local v6    # "extras":Landroid/os/Bundle;
    const/16 v2, 0x5a

    invoke-virtual {v9, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v9

    .line 1047
    .end local v9    # "extras":Landroid/os/Bundle;
    .local v6, "extras":Landroid/os/Bundle;
    goto :goto_0

    .line 1049
    .local v6, "extras":Landroid/os/Bundle;
    :pswitch_2
    :try_start_2
    new-instance v9, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v9, v0}, Landroid/os/Bundle;-><init>(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1050
    .restart local v9    # "extras":Landroid/os/Bundle;
    :try_start_3
    const-string/jumbo v0, "android.content.extra.ORIENTATION"

    .end local v6    # "extras":Landroid/os/Bundle;
    const/16 v2, 0xb4

    invoke-virtual {v9, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v6, v9

    .line 1051
    .end local v9    # "extras":Landroid/os/Bundle;
    .local v6, "extras":Landroid/os/Bundle;
    goto :goto_0

    .line 1053
    .local v6, "extras":Landroid/os/Bundle;
    :pswitch_3
    :try_start_4
    new-instance v9, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v9, v0}, Landroid/os/Bundle;-><init>(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1054
    .restart local v9    # "extras":Landroid/os/Bundle;
    :try_start_5
    const-string/jumbo v0, "android.content.extra.ORIENTATION"

    .end local v6    # "extras":Landroid/os/Bundle;
    const/16 v2, 0x10e

    invoke-virtual {v9, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v6, v9

    .line 1055
    .end local v9    # "extras":Landroid/os/Bundle;
    .local v6, "extras":Landroid/os/Bundle;
    goto :goto_0

    .line 1062
    .end local v6    # "extras":Landroid/os/Bundle;
    .end local v8    # "exif":Landroid/media/ExifInterface;
    :catch_0
    move-exception v7

    .line 1065
    :cond_0
    :goto_1
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-direct/range {v0 .. v6}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJLandroid/os/Bundle;)V

    return-object v0

    .line 1062
    .restart local v8    # "exif":Landroid/media/ExifInterface;
    .restart local v9    # "extras":Landroid/os/Bundle;
    :catch_1
    move-exception v7

    .local v7, "e":Ljava/io/IOException;
    move-object v6, v9

    .end local v9    # "extras":Landroid/os/Bundle;
    .restart local v6    # "extras":Landroid/os/Bundle;
    goto :goto_1

    .line 1043
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static renameDocument(Landroid/content/ContentProviderClient;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 5
    .param p0, "client"    # Landroid/content/ContentProviderClient;
    .param p1, "documentUri"    # Landroid/net/Uri;
    .param p2, "displayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 990
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 991
    .local v0, "in":Landroid/os/Bundle;
    const-string/jumbo v3, "uri"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 992
    const-string/jumbo v3, "_display_name"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    const-string/jumbo v3, "android:renameDocument"

    invoke-virtual {p0, v3, v4, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 995
    .local v1, "out":Landroid/os/Bundle;
    const-string/jumbo v3, "uri"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 996
    .local v2, "outUri":Landroid/net/Uri;
    if-eqz v2, :cond_0

    .end local v2    # "outUri":Landroid/net/Uri;
    :goto_0
    return-object v2

    .restart local v2    # "outUri":Landroid/net/Uri;
    :cond_0
    move-object v2, p1

    goto :goto_0
.end method

.method public static renameDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "documentUri"    # Landroid/net/Uri;
    .param p2, "displayName"    # Ljava/lang/String;

    .prologue
    .line 976
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 975
    invoke-virtual {p0, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 978
    .local v0, "client":Landroid/content/ContentProviderClient;
    :try_start_0
    invoke-static {v0, p1, p2}, Landroid/provider/DocumentsContract;->renameDocument(Landroid/content/ContentProviderClient;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 983
    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    .line 978
    return-object v2

    .line 979
    :catch_0
    move-exception v1

    .line 980
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v2, "Documents"

    const-string/jumbo v3, "Failed to rename document"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 981
    const/4 v2, 0x0

    .line 983
    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    .line 981
    return-object v2

    .line 982
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 983
    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    .line 982
    throw v2
.end method

.method public static setManageMode(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 814
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "manage"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
