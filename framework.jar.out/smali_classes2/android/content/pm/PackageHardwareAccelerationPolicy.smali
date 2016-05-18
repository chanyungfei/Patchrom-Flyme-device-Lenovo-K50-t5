.class public final Landroid/content/pm/PackageHardwareAccelerationPolicy;
.super Ljava/lang/Object;
.source "PackageHardwareAccelerationPolicy.java"


# static fields
.field private static sWhistlist:Ljava/util/List;
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
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/content/pm/PackageHardwareAccelerationPolicy;->sWhistlist:Ljava/util/List;

    .line 56
    sget-object v0, Landroid/content/pm/PackageHardwareAccelerationPolicy;->sWhistlist:Ljava/util/List;

    const-string v1, "com.shoujiduoduo.ringtone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Landroid/content/pm/PackageHardwareAccelerationPolicy;->sWhistlist:Ljava/util/List;

    const-string v1, "com.sdu.didi.psnger"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Landroid/content/pm/PackageHardwareAccelerationPolicy;->sWhistlist:Ljava/util/List;

    const-string v1, "com.tencent.qqpimsecure"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Landroid/content/pm/PackageHardwareAccelerationPolicy;->sWhistlist:Ljava/util/List;

    const-string v1, "com.xfplay.play"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Landroid/content/pm/PackageHardwareAccelerationPolicy;->sWhistlist:Ljava/util/List;

    const-string v1, "com.pplive.androidphone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Landroid/content/pm/PackageHardwareAccelerationPolicy;->sWhistlist:Ljava/util/List;

    const-string v1, "com.jingdong.app.mall"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Landroid/content/pm/PackageHardwareAccelerationPolicy;->sWhistlist:Ljava/util/List;

    const-string v1, "cn.opda.a.phonoalbumshoushou"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Landroid/content/pm/PackageHardwareAccelerationPolicy;->sWhistlist:Ljava/util/List;

    const-string v1, "com.youdao.dict"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Landroid/content/pm/PackageHardwareAccelerationPolicy;->sWhistlist:Ljava/util/List;

    const-string v1, "com.baidu.input"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Landroid/content/pm/PackageHardwareAccelerationPolicy;->sWhistlist:Ljava/util/List;

    const-string v1, "com.popcap.pvz2cthdlx"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getList()Ljava/util/List;
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
    .line 70
    sget-object v0, Landroid/content/pm/PackageHardwareAccelerationPolicy;->sWhistlist:Ljava/util/List;

    return-object v0
.end method

.method public static match(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 79
    sget-object v0, Landroid/content/pm/PackageHardwareAccelerationPolicy;->sWhistlist:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
