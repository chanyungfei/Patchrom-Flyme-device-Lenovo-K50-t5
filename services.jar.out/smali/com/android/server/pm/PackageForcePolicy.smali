.class public final Lcom/android/server/pm/PackageForcePolicy;
.super Ljava/lang/Object;
.source "PackageForcePolicy.java"


# static fields
.field private static sDefaultWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sForceArmeabiWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sForceWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageForcePolicy;->sDefaultWhiteList:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceWhiteList:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceArmeabiWhiteList:Ljava/util/List;

    .line 15
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sDefaultWhiteList:Ljava/util/List;

    const-string/jumbo v1, "hugh.android.app.zidian"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sDefaultWhiteList:Ljava/util/List;

    const-string/jumbo v1, "com.bibill.basketball"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sDefaultWhiteList:Ljava/util/List;

    const-string/jumbo v1, "danxian.pop_star.gzlt"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sDefaultWhiteList:Ljava/util/List;

    const-string/jumbo v1, "com.hspare.shudu"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sDefaultWhiteList:Ljava/util/List;

    const-string/jumbo v1, "cn.com.bmac.swpsim"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sDefaultWhiteList:Ljava/util/List;

    const-string/jumbo v1, "com.when.android.note"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sDefaultWhiteList:Ljava/util/List;

    return-object v0
.end method

.method public static getForceArmeabiList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceArmeabiWhiteList:Ljava/util/List;

    return-object v0
.end method

.method public static getForceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceWhiteList:Ljava/util/List;

    return-object v0
.end method

.method public static matchDefault(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 43
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sDefaultWhiteList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static matchForce(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 61
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceWhiteList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static matchForceArmeabi(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 79
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceArmeabiWhiteList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
