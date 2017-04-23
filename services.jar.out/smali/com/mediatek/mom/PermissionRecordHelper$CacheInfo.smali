.class Lcom/mediatek/mom/PermissionRecordHelper$CacheInfo;
.super Ljava/lang/Object;
.source "PermissionRecordHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mom/PermissionRecordHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheInfo"
.end annotation


# instance fields
.field mPackageName:Ljava/lang/String;

.field mPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/Permission;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mediatek/mom/PermissionRecordHelper;


# direct methods
.method public constructor <init>(Lcom/mediatek/mom/PermissionRecordHelper;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/Permission;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 85
    iput-object p1, p0, Lcom/mediatek/mom/PermissionRecordHelper$CacheInfo;->this$0:Lcom/mediatek/mom/PermissionRecordHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object v0, p0, Lcom/mediatek/mom/PermissionRecordHelper$CacheInfo;->mPackageName:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lcom/mediatek/mom/PermissionRecordHelper$CacheInfo;->mPermissions:Ljava/util/List;

    .line 86
    iput-object p2, p0, Lcom/mediatek/mom/PermissionRecordHelper$CacheInfo;->mPackageName:Ljava/lang/String;

    .line 87
    iput-object p3, p0, Lcom/mediatek/mom/PermissionRecordHelper$CacheInfo;->mPermissions:Ljava/util/List;

    .line 88
    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mediatek/mom/PermissionRecordHelper$CacheInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/Permission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/mediatek/mom/PermissionRecordHelper$CacheInfo;->mPermissions:Ljava/util/List;

    return-object v0
.end method

.method public setPermissions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/Permission;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    iput-object p1, p0, Lcom/mediatek/mom/PermissionRecordHelper$CacheInfo;->mPermissions:Ljava/util/List;

    .line 100
    return-void
.end method
