.class final Lcom/android/server/pm/Settings$RuntimePermissionPersistence;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RuntimePermissionPersistence"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;
    }
.end annotation


# static fields
.field private static final MAX_WRITE_PERMISSIONS_DELAY_MILLIS:J = 0x7d0L

.field private static final WRITE_PERMISSIONS_DELAY_MILLIS:J = 0xc8L


# instance fields
.field private final mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mFingerprints:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mWriteScheduled:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/Settings;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->onUserRemoved(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsSync(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/Settings;Ljava/lang/Object;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/pm/Settings;
    .param p2, "lock"    # Ljava/lang/Object;

    .prologue
    .line 4684
    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4665
    new-instance v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;

    invoke-direct {v0, p0}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;-><init>(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    .line 4670
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    .line 4674
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;

    .line 4678
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    .line 4682
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    .line 4685
    iput-object p2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    .line 4684
    return-void
.end method

.method private onUserRemoved(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 4825
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4827
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "sb$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4828
    .local v0, "sb":Lcom/android/server/pm/SettingBase;
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->revokeRuntimePermissionsAndClearFlags(Lcom/android/server/pm/SettingBase;I)V

    goto :goto_0

    .line 4831
    .end local v0    # "sb":Lcom/android/server/pm/SettingBase;
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    .line 4832
    .restart local v0    # "sb":Lcom/android/server/pm/SettingBase;
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->revokeRuntimePermissionsAndClearFlags(Lcom/android/server/pm/SettingBase;I)V

    goto :goto_1

    .line 4823
    .end local v0    # "sb":Lcom/android/server/pm/SettingBase;
    :cond_1
    return-void
.end method

.method private parsePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PermissionsState;I)V
    .locals 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "permissionsState"    # Lcom/android/server/pm/PermissionsState;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 4925
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 4927
    .local v6, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, "type":I
    const/4 v8, 0x1

    if-eq v7, v8, :cond_6

    .line 4928
    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v6, :cond_6

    .line 4929
    :cond_1
    const/4 v8, 0x3

    if-eq v7, v8, :cond_0

    const/4 v8, 0x4

    if-eq v7, v8, :cond_0

    .line 4933
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "item"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 4935
    const-string/jumbo v8, "name"

    const/4 v9, 0x0

    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4936
    .local v5, "name":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v8, v8, Lcom/android/server/pm/Settings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BasePermission;

    .line 4937
    .local v0, "bp":Lcom/android/server/pm/BasePermission;
    if-nez v0, :cond_2

    .line 4938
    const-string/jumbo v8, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown permission:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4939
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 4943
    :cond_2
    const-string/jumbo v8, "granted"

    const/4 v9, 0x0

    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4944
    .local v4, "grantedStr":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 4945
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 4947
    :goto_1
    const-string/jumbo v8, "flags"

    const/4 v9, 0x0

    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4948
    .local v2, "flagsStr":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 4949
    const/16 v8, 0x10

    invoke-static {v2, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 4951
    .local v1, "flags":I
    :goto_2
    if-eqz v3, :cond_5

    .line 4952
    invoke-virtual {p2, v0, p3}, Lcom/android/server/pm/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/BasePermission;I)I

    .line 4954
    const/16 v8, 0xff

    .line 4953
    invoke-virtual {p2, v0, p3, v8, v1}, Lcom/android/server/pm/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/BasePermission;III)Z

    goto :goto_0

    .line 4944
    .end local v1    # "flags":I
    .end local v2    # "flagsStr":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x1

    .local v3, "granted":Z
    goto :goto_1

    .line 4949
    .end local v3    # "granted":Z
    .restart local v2    # "flagsStr":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "flags":I
    goto :goto_2

    .line 4957
    :cond_5
    const/16 v8, 0xff

    .line 4956
    invoke-virtual {p2, v0, p3, v8, v1}, Lcom/android/server/pm/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/BasePermission;III)Z

    goto/16 :goto_0

    .line 4924
    .end local v0    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v1    # "flags":I
    .end local v2    # "flagsStr":Ljava/lang/String;
    .end local v4    # "grantedStr":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method private parseRuntimePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    .line 4882
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 4884
    .local v3, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, "type":I
    const/4 v7, 0x1

    if-eq v6, v7, :cond_6

    .line 4885
    if-ne v6, v11, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v3, :cond_6

    .line 4886
    :cond_1
    if-eq v6, v11, :cond_0

    const/4 v7, 0x4

    if-eq v6, v7, :cond_0

    .line 4890
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "runtime-permissions"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 4892
    const-string/jumbo v7, "fingerprint"

    invoke-interface {p1, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4893
    .local v1, "fingerprint":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v7, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4894
    sget-object v7, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 4895
    .local v0, "defaultsGranted":Z
    iget-object v7, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, p2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    .line 4890
    .end local v0    # "defaultsGranted":Z
    .end local v1    # "fingerprint":Ljava/lang/String;
    :cond_2
    const-string/jumbo v8, "pkg"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 4899
    const-string/jumbo v7, "name"

    invoke-interface {p1, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4900
    .local v2, "name":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v7, v7, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 4901
    .local v4, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v4, :cond_4

    .line 4902
    const-string/jumbo v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unknown package:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4903
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 4890
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_3
    const-string/jumbo v8, "shared-user"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4910
    const-string/jumbo v7, "name"

    invoke-interface {p1, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4911
    .restart local v2    # "name":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v7, v7, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/SharedUserSetting;

    .line 4912
    .local v5, "sus":Lcom/android/server/pm/SharedUserSetting;
    if-nez v5, :cond_5

    .line 4913
    const-string/jumbo v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unknown shared user:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4914
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 4906
    .end local v5    # "sus":Lcom/android/server/pm/SharedUserSetting;
    .restart local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_4
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v7

    invoke-direct {p0, p1, v7, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->parsePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PermissionsState;I)V

    goto/16 :goto_0

    .line 4917
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v5    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_5
    invoke-virtual {v5}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v7

    invoke-direct {p0, p1, v7, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->parsePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PermissionsState;I)V

    goto/16 :goto_0

    .line 4881
    .end local v2    # "name":Ljava/lang/String;
    .end local v5    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_6
    return-void
.end method

.method private revokeRuntimePermissionsAndClearFlags(Lcom/android/server/pm/SettingBase;I)V
    .locals 6
    .param p1, "sb"    # Lcom/android/server/pm/SettingBase;
    .param p2, "userId"    # I

    .prologue
    .line 4837
    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v3

    .line 4839
    .local v3, "permissionsState":Lcom/android/server/pm/PermissionsState;
    invoke-virtual {v3, p2}, Lcom/android/server/pm/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v4

    .line 4838
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "permissionState$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PermissionsState$PermissionState;

    .line 4840
    .local v1, "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    iget-object v4, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v4, v4, Lcom/android/server/pm/Settings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Lcom/android/server/pm/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BasePermission;

    .line 4841
    .local v0, "bp":Lcom/android/server/pm/BasePermission;
    if-eqz v0, :cond_0

    .line 4842
    invoke-virtual {v3, v0, p2}, Lcom/android/server/pm/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/BasePermission;I)I

    .line 4844
    const/16 v4, 0xff

    const/4 v5, 0x0

    .line 4843
    invoke-virtual {v3, v0, p2, v4, v5}, Lcom/android/server/pm/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/BasePermission;III)Z

    goto :goto_0

    .line 4836
    .end local v0    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v1    # "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    :cond_1
    return-void
.end method

.method private writePermissions(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .locals 5
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/PermissionsState$PermissionState;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    const/4 v4, 0x0

    .line 4967
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "permissionState$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionState;

    .line 4968
    .local v0, "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    const-string/jumbo v2, "item"

    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4969
    const-string/jumbo v2, "name"

    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4970
    const-string/jumbo v2, "granted"

    .line 4971
    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->isGranted()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    .line 4970
    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4972
    const-string/jumbo v2, "flags"

    .line 4973
    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->getFlags()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 4972
    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4974
    const-string/jumbo v2, "item"

    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 4966
    .end local v0    # "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    :cond_0
    return-void
.end method

.method private writePermissionsSync(I)V
    .locals 22
    .param p1, "userId"    # I

    .prologue
    .line 4735
    new-instance v3, Landroid/util/AtomicFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/pm/Settings;->-wrap0(Lcom/android/server/pm/Settings;I)Ljava/io/File;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 4737
    .local v3, "destination":Landroid/util/AtomicFile;
    new-instance v11, Landroid/util/ArrayMap;

    invoke-direct {v11}, Landroid/util/ArrayMap;-><init>()V

    .line 4738
    .local v11, "permissionsForPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;>;"
    new-instance v12, Landroid/util/ArrayMap;

    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    .line 4740
    .local v12, "permissionsForSharedUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 4741
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 4743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 4744
    .local v7, "packageCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v7, :cond_1

    .line 4745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 4746
    .local v8, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/PackageSetting;

    .line 4747
    .local v9, "packageSetting":Lcom/android/server/pm/PackageSetting;
    iget-object v0, v9, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    .line 4748
    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v13

    .line 4749
    .local v13, "permissionsState":Lcom/android/server/pm/PermissionsState;
    move/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/server/pm/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v14

    .line 4751
    .local v14, "permissionsStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_0

    .line 4752
    invoke-virtual {v11, v8, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4744
    .end local v13    # "permissionsState":Lcom/android/server/pm/PermissionsState;
    .end local v14    # "permissionsStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4757
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/ArrayMap;->size()I

    move-result v17

    .line 4758
    .local v17, "sharedUserCount":I
    const/4 v5, 0x0

    :goto_1
    move/from16 v0, v17

    if-ge v5, v0, :cond_3

    .line 4759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 4760
    .local v18, "sharedUserName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/pm/SharedUserSetting;

    .line 4761
    .local v16, "sharedUser":Lcom/android/server/pm/SharedUserSetting;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v13

    .line 4762
    .restart local v13    # "permissionsState":Lcom/android/server/pm/PermissionsState;
    move/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/server/pm/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v14

    .line 4764
    .restart local v14    # "permissionsStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_2

    .line 4765
    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4758
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v13    # "permissionsState":Lcom/android/server/pm/PermissionsState;
    .end local v14    # "permissionsStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    .end local v16    # "sharedUser":Lcom/android/server/pm/SharedUserSetting;
    .end local v18    # "sharedUserName":Ljava/lang/String;
    :cond_3
    monitor-exit v21

    .line 4770
    const/4 v6, 0x0

    .line 4772
    .local v6, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v6

    .line 4774
    .local v6, "out":Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v15

    .line 4775
    .local v15, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v20, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v20 .. v20}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v15, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 4777
    const-string/jumbo v20, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/16 v21, 0x1

    .line 4776
    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 4778
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 4779
    const-string/jumbo v20, "runtime-permissions"

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4782
    .local v4, "fingerprint":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 4783
    const-string/jumbo v20, "fingerprint"

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4786
    :cond_4
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 4787
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v7, :cond_5

    .line 4788
    invoke-virtual {v11, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 4789
    .restart local v8    # "packageName":Ljava/lang/String;
    invoke-virtual {v11, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 4790
    .local v10, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    const-string/jumbo v20, "pkg"

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4791
    const-string/jumbo v20, "name"

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4792
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v10}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissions(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 4793
    const-string/jumbo v20, "pkg"

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4787
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 4740
    .end local v4    # "fingerprint":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .end local v7    # "packageCount":I
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v10    # "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    .end local v15    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v17    # "sharedUserCount":I
    :catchall_0
    move-exception v20

    monitor-exit v21

    throw v20

    .line 4796
    .restart local v4    # "fingerprint":Ljava/lang/String;
    .restart local v5    # "i":I
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v7    # "packageCount":I
    .restart local v15    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v17    # "sharedUserCount":I
    :cond_5
    :try_start_2
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v17

    .line 4797
    const/4 v5, 0x0

    :goto_3
    move/from16 v0, v17

    if-ge v5, v0, :cond_6

    .line 4798
    invoke-virtual {v12, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 4799
    .restart local v8    # "packageName":Ljava/lang/String;
    invoke-virtual {v12, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 4800
    .restart local v10    # "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    const-string/jumbo v20, "shared-user"

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4801
    const-string/jumbo v20, "name"

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4802
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v10}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissions(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 4803
    const-string/jumbo v20, "shared-user"

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4797
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 4806
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v10    # "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    :cond_6
    const-string/jumbo v20, "runtime-permissions"

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4807
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 4808
    invoke-virtual {v3, v6}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 4810
    sget-object v20, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 4811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4819
    :cond_7
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4734
    .end local v4    # "fingerprint":Ljava/lang/String;
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .end local v15    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :goto_4
    return-void

    .line 4814
    :catch_0
    move-exception v19

    .line 4815
    .local v19, "t":Ljava/lang/Throwable;
    :try_start_3
    const-string/jumbo v20, "PackageManager"

    .line 4816
    const-string/jumbo v21, "Failed to write settings, restoring backup"

    .line 4815
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4817
    invoke-virtual {v3, v6}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4819
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_4

    .line 4818
    .end local v19    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v20

    .line 4819
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4818
    throw v20
.end method


# virtual methods
.method public areDefaultRuntimPermissionsGrantedLPr(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 4689
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public deleteUserRuntimePermissionsFile(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 4850
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    invoke-static {v0, p1}, Lcom/android/server/pm/Settings;->-wrap0(Lcom/android/server/pm/Settings;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 4849
    return-void
.end method

.method public onDefaultRuntimePermissionsGrantedLPr(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 4693
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4694
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserAsyncLPr(I)V

    .line 4692
    return-void
.end method

.method public readStateForUserSyncLPr(I)V
    .locals 8
    .param p1, "userId"    # I

    .prologue
    .line 4854
    iget-object v5, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    invoke-static {v5, p1}, Lcom/android/server/pm/Settings;->-wrap0(Lcom/android/server/pm/Settings;I)Ljava/io/File;

    move-result-object v4

    .line 4855
    .local v4, "permissionsFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 4856
    return-void

    .line 4861
    :cond_0
    :try_start_0
    new-instance v5, Landroid/util/AtomicFile;

    invoke-direct {v5, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v5}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 4868
    .local v2, "in":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 4869
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    invoke-interface {v3, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 4870
    invoke-direct {p0, v3, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->parseRuntimePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4876
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4853
    return-void

    .line 4862
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v1

    .line 4863
    .local v1, "fnfe":Ljava/io/FileNotFoundException;
    const-string/jumbo v5, "PackageManager"

    const-string/jumbo v6, "No permissions state"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4864
    return-void

    .line 4872
    .end local v1    # "fnfe":Ljava/io/FileNotFoundException;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 4873
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed parsing permissions file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4875
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 4876
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4875
    throw v5
.end method

.method public writePermissionsForUserAsyncLPr(I)V
    .locals 18
    .param p1, "userId"    # I

    .prologue
    .line 4703
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 4705
    .local v2, "currentTimeMillis":J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 4706
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 4709
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v4

    .line 4711
    .local v4, "lastNotWrittenMutationTimeMillis":J
    sub-long v10, v2, v4

    .line 4713
    .local v10, "timeSinceLastNotWrittenMutationMillis":J
    const-wide/16 v14, 0x7d0

    cmp-long v9, v10, v14

    if-ltz v9, :cond_0

    .line 4714
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 4715
    return-void

    .line 4720
    :cond_0
    const-wide/16 v14, 0x7d0

    .line 4719
    add-long/2addr v14, v4

    sub-long/2addr v14, v2

    .line 4720
    const-wide/16 v16, 0x0

    .line 4719
    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 4721
    .local v6, "maxDelayMillis":J
    const-wide/16 v14, 0xc8

    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 4724
    .local v12, "writeDelayMillis":J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 4725
    .local v8, "message":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v8, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4702
    .end local v4    # "lastNotWrittenMutationTimeMillis":J
    .end local v6    # "maxDelayMillis":J
    .end local v10    # "timeSinceLastNotWrittenMutationMillis":J
    .end local v12    # "writeDelayMillis":J
    :goto_0
    return-void

    .line 4727
    .end local v8    # "message":Landroid/os/Message;
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;

    move/from16 v0, p1

    invoke-virtual {v9, v0, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 4728
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 4729
    .restart local v8    # "message":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    const-wide/16 v14, 0xc8

    invoke-virtual {v9, v8, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4730
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    const/4 v14, 0x1

    move/from16 v0, p1

    invoke-virtual {v9, v0, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0
.end method

.method public writePermissionsForUserSyncLPr(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 4698
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4699
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsSync(I)V

    .line 4697
    return-void
.end method
