.class final Lcom/android/server/pm/DefaultPermissionGrantPolicy$MotoPermissionGrantPolicy;
.super Ljava/lang/Object;
.source "DefaultPermissionGrantPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/DefaultPermissionGrantPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MotoPermissionGrantPolicy"
.end annotation


# instance fields
.field private final mMotoPermPoliciesDir:Ljava/io/File;

.field private final mSecurityItPermPoliciesDir:Ljava/io/File;

.field final synthetic this$0:Lcom/android/server/pm/DefaultPermissionGrantPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/DefaultPermissionGrantPolicy;)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/server/pm/DefaultPermissionGrantPolicy;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 942
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy$MotoPermissionGrantPolicy;->this$0:Lcom/android/server/pm/DefaultPermissionGrantPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 944
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    .line 943
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 944
    const-string/jumbo v2, "etc"

    aput-object v2, v1, v3

    const-string/jumbo v2, "motorola"

    aput-object v2, v1, v4

    const-string/jumbo v2, "perms"

    aput-object v2, v1, v5

    .line 943
    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy$MotoPermissionGrantPolicy;->mMotoPermPoliciesDir:Ljava/io/File;

    .line 946
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    .line 945
    new-array v1, v5, [Ljava/lang/String;

    .line 946
    const-string/jumbo v2, "etc"

    aput-object v2, v1, v3

    const-string/jumbo v2, "com_lenovo_security"

    aput-object v2, v1, v4

    .line 945
    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy$MotoPermissionGrantPolicy;->mSecurityItPermPoliciesDir:Ljava/io/File;

    .line 942
    return-void
.end method

.method private parseMotoPermissionGrantPolicyLPr(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x2

    const/4 v7, 0x1

    .line 1004
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    if-eq v3, v4, :cond_1

    .line 1005
    if-ne v3, v7, :cond_0

    .line 1009
    :cond_1
    if-eq v3, v4, :cond_2

    .line 1010
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v5, "No start tag found"

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1012
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "permissions"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1013
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unexpected start tag : found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1014
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1013
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1014
    const-string/jumbo v6, ", expected \'permissions\'"

    .line 1013
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1028
    .local v0, "name":Ljava/lang/String;
    .local v1, "pkg":Landroid/content/pm/PackageParser$Package;
    .local v2, "pkgName":Ljava/lang/String;
    :cond_3
    const-string/jumbo v4, "DefaultPermGrantPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown/wrong package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1018
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_4
    :goto_0
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1019
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    if-ne v4, v7, :cond_5

    .line 1002
    return-void

    .line 1023
    :cond_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1024
    .restart local v0    # "name":Ljava/lang/String;
    const-string/jumbo v4, "package"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1025
    const-string/jumbo v4, "name"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1026
    .restart local v2    # "pkgName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy$MotoPermissionGrantPolicy;->this$0:Lcom/android/server/pm/DefaultPermissionGrantPolicy;

    invoke-static {v4, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->-wrap0(Lcom/android/server/pm/DefaultPermissionGrantPolicy;Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 1027
    .restart local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->-wrap1(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1032
    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy$MotoPermissionGrantPolicy;->parsePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/pm/PackageParser$Package;I)V

    goto :goto_0

    .line 1034
    .end local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_6
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0
.end method

.method private parsePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/pm/PackageParser$Package;I)V
    .locals 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1042
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 1044
    .local v3, "outerDepth":I
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 1045
    .local v4, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 1046
    .local v6, "systemFixedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, "type":I
    const/4 v8, 0x1

    if-eq v7, v8, :cond_5

    .line 1047
    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v3, :cond_5

    .line 1048
    :cond_1
    const/4 v8, 0x3

    if-eq v7, v8, :cond_0

    const/4 v8, 0x4

    if-eq v7, v8, :cond_0

    .line 1052
    const-string/jumbo v8, "permission"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1053
    const-string/jumbo v8, "name"

    const/4 v9, 0x0

    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1054
    .local v2, "name":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy$MotoPermissionGrantPolicy;->this$0:Lcom/android/server/pm/DefaultPermissionGrantPolicy;

    invoke-static {v8}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->-get0(Lcom/android/server/pm/DefaultPermissionGrantPolicy;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v8, v8, Lcom/android/server/pm/Settings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v8, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/BasePermission;

    .line 1055
    .local v1, "bp":Lcom/android/server/pm/BasePermission;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/pm/BasePermission;->isRuntime()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1060
    const/4 v0, 0x0

    .line 1061
    .local v0, "bSystemFixed":Z
    const-string/jumbo v8, "sys"

    const/4 v9, 0x0

    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1062
    .local v5, "systemFixed":Ljava/lang/String;
    const-string/jumbo v8, "true"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1063
    .local v0, "bSystemFixed":Z
    if-eqz v0, :cond_3

    .line 1064
    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1056
    .end local v0    # "bSystemFixed":Z
    .end local v5    # "systemFixed":Ljava/lang/String;
    :cond_2
    const-string/jumbo v8, "DefaultPermGrantPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown/wrong permission: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 1066
    .restart local v0    # "bSystemFixed":Z
    .restart local v5    # "systemFixed":Ljava/lang/String;
    :cond_3
    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1070
    .end local v0    # "bSystemFixed":Z
    .end local v1    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v2    # "name":Ljava/lang/String;
    .end local v5    # "systemFixed":Ljava/lang/String;
    :cond_4
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 1075
    :cond_5
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    .line 1076
    iget-object v8, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy$MotoPermissionGrantPolicy;->this$0:Lcom/android/server/pm/DefaultPermissionGrantPolicy;

    invoke-static {v8, p2, v4, p3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->-wrap3(Lcom/android/server/pm/DefaultPermissionGrantPolicy;Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1078
    :cond_6
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    .line 1079
    iget-object v8, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy$MotoPermissionGrantPolicy;->this$0:Lcom/android/server/pm/DefaultPermissionGrantPolicy;

    const/4 v9, 0x1

    invoke-static {v8, p2, v6, v9, p3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->-wrap2(Lcom/android/server/pm/DefaultPermissionGrantPolicy;Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1041
    :cond_7
    return-void
.end method

.method private readMotoPermissionGrantPolicy(Ljava/io/File;I)V
    .locals 8
    .param p1, "permDir"    # Ljava/io/File;
    .param p2, "userId"    # I

    .prologue
    .line 955
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 959
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_1

    .line 960
    const-string/jumbo v2, "DefaultPermGrantPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " cannot be read"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    return-void

    .line 956
    :cond_0
    const-string/jumbo v2, "DefaultPermGrantPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", skipping"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    return-void

    .line 965
    :cond_1
    const/4 v1, 0x0

    .line 966
    .local v1, "permFile":Ljava/io/File;
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_4

    aget-object v0, v3, v2

    .line 967
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ".xml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 969
    const-string/jumbo v5, "DefaultPermGrantPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Non-xml file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " directory, ignoring"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 972
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_3

    .line 973
    const-string/jumbo v5, "DefaultPermGrantPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Permissions file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "cannot be read"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 977
    :cond_3
    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy$MotoPermissionGrantPolicy;->readMotoPermissionGrantPolicyfromXml(Ljava/io/File;I)V

    goto :goto_1

    .line 954
    .end local v0    # "f":Ljava/io/File;
    :cond_4
    return-void
.end method

.method private readMotoPermissionGrantPolicyfromXml(Ljava/io/File;I)V
    .locals 7
    .param p1, "permFile"    # Ljava/io/File;
    .param p2, "userId"    # I

    .prologue
    .line 982
    const/4 v3, 0x0

    .line 984
    .local v3, "permReader":Ljava/io/FileReader;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    .end local v3    # "permReader":Ljava/io/FileReader;
    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 991
    .local v3, "permReader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 992
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 993
    invoke-direct {p0, v2, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy$MotoPermissionGrantPolicy;->parseMotoPermissionGrantPolicyLPr(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 997
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 981
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_0
    return-void

    .line 985
    .end local v3    # "permReader":Ljava/io/FileReader;
    :catch_0
    move-exception v0

    .line 986
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v4, "DefaultPermGrantPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not find or open permision policy file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    return-void

    .line 994
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "permReader":Ljava/io/FileReader;
    :catch_1
    move-exception v1

    .line 995
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v4, "DefaultPermGrantPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Got exception while parsing permissions policy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 997
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 996
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 997
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 996
    throw v4
.end method


# virtual methods
.method public grantPermissionsToMotoComponents(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 951
    iget-object v0, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy$MotoPermissionGrantPolicy;->mSecurityItPermPoliciesDir:Ljava/io/File;

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy$MotoPermissionGrantPolicy;->readMotoPermissionGrantPolicy(Ljava/io/File;I)V

    .line 949
    return-void
.end method
