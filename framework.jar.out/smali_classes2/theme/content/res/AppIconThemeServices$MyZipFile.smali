.class Ltheme/content/res/AppIconThemeServices$MyZipFile;
.super Ljava/util/zip/ZipFile;
.source "AppIconThemeServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltheme/content/res/AppIconThemeServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyZipFile"
.end annotation


# instance fields
.field mEntryCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ltheme/content/res/AppIconThemeServices;


# direct methods
.method public constructor <init>(Ltheme/content/res/AppIconThemeServices;Ljava/io/File;)V
    .locals 4
    .param p1, "this$0"    # Ltheme/content/res/AppIconThemeServices;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 679
    iput-object p1, p0, Ltheme/content/res/AppIconThemeServices$MyZipFile;->this$0:Ltheme/content/res/AppIconThemeServices;

    .line 680
    invoke-direct {p0, p2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 678
    new-instance v2, Ljava/util/HashMap;

    invoke-virtual {p0}, Ltheme/content/res/AppIconThemeServices$MyZipFile;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Ltheme/content/res/AppIconThemeServices$MyZipFile;->mEntryCache:Ljava/util/HashMap;

    .line 681
    invoke-virtual {p0}, Ltheme/content/res/AppIconThemeServices$MyZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 682
    .local v1, "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 683
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 685
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 687
    iget-object v2, p0, Ltheme/content/res/AppIconThemeServices$MyZipFile;->mEntryCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 679
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 694
    invoke-super {p0}, Ljava/util/zip/ZipFile;->close()V

    .line 695
    iget-object v0, p0, Ltheme/content/res/AppIconThemeServices$MyZipFile;->mEntryCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 693
    return-void
.end method

.method public getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 1
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 691
    iget-object v0, p0, Ltheme/content/res/AppIconThemeServices$MyZipFile;->mEntryCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    return-object v0
.end method
