.class public Lcom/lenovo/common/AppPcUtils;
.super Ljava/lang/Object;
.source "AppPcUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;
    }
.end annotation


# static fields
.field private static final IGNORE_APPS_PATH:Ljava/lang/String; = "/etc/com_lenovo_security/ignore_apps"

.field private static final TAG:Ljava/lang/String; = "Security/AppPcUtils"

.field private static final mCoedDefaultMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final mIgnoreMap:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mPermDefaultMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sControllableSystemApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIgnoreApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/lenovo/common/AppPcUtils;->mIgnoreMap:Ljava/util/Set;

    .line 84
    new-instance v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v1, v5

    const-string/jumbo v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v1, v4

    invoke-direct {v0, v5, v1, v5, v4}, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;-><init>(I[Ljava/lang/String;II)V

    .line 87
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    const-string/jumbo v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.READ_CONTACTS"

    aput-object v2, v1, v5

    invoke-direct {v0, v4, v1, v5, v4}, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;-><init>(I[Ljava/lang/String;II)V

    .line 94
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    const-string/jumbo v2, "android.permission.READ_CONTACTS"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.WRITE_CONTACTS"

    aput-object v2, v1, v5

    invoke-direct {v0, v6, v1, v5, v4}, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;-><init>(I[Ljava/lang/String;II)V

    .line 100
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    const-string/jumbo v2, "android.permission.WRITE_CONTACTS"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.READ_CALL_LOG"

    aput-object v2, v1, v5

    invoke-direct {v0, v3, v1, v5, v4}, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;-><init>(I[Ljava/lang/String;II)V

    .line 106
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    const-string/jumbo v2, "android.permission.READ_CALL_LOG"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.WRITE_CALL_LOG"

    aput-object v2, v1, v5

    invoke-direct {v0, v7, v1, v5, v4}, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;-><init>(I[Ljava/lang/String;II)V

    .line 112
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    const-string/jumbo v2, "android.permission.WRITE_CALL_LOG"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    new-instance v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    const/4 v1, 0x5

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.READ_CALENDAR"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2, v5, v4}, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;-><init>(I[Ljava/lang/String;II)V

    .line 118
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    const-string/jumbo v2, "android.permission.READ_CALENDAR"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    const/4 v1, 0x6

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.WRITE_CALENDAR"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2, v5, v4}, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;-><init>(I[Ljava/lang/String;II)V

    .line 124
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    const-string/jumbo v2, "android.permission.WRITE_CALENDAR"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    new-instance v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    const/4 v1, 0x7

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.ACCESS_WIFI_STATE"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2, v5, v4}, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;-><init>(I[Ljava/lang/String;II)V

    .line 131
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    const-string/jumbo v2, "android.permission.ACCESS_WIFI_STATE"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    new-instance v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    const/16 v1, 0x8

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2, v5, v4}, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;-><init>(I[Ljava/lang/String;II)V

    .line 138
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    const-string/jumbo v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    new-instance v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.BLUETOOTH_ADMIN"

    aput-object v3, v2, v5

    const-string/jumbo v3, "android.permission.BLUETOOTH"

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2, v5, v4}, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;-><init>(I[Ljava/lang/String;II)V

    .line 144
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    const-string/jumbo v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    new-instance v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    const/16 v1, 0xa

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.CALL_PHONE"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2, v5, v4}, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;-><init>(I[Ljava/lang/String;II)V

    .line 151
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    const-string/jumbo v2, "android.permission.CALL_PHONE"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    new-instance v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    const/16 v1, 0xb

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.READ_SMS"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2, v5, v4}, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;-><init>(I[Ljava/lang/String;II)V

    .line 157
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    const-string/jumbo v2, "android.permission.READ_SMS"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    new-instance v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    const/16 v1, 0xd

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.SEND_SMS"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2, v5, v4}, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;-><init>(I[Ljava/lang/String;II)V

    .line 169
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    const-string/jumbo v2, "android.permission.SEND_SMS"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    new-instance v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    const/16 v1, 0xe

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.RECEIVE_SMS"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2, v5, v4}, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;-><init>(I[Ljava/lang/String;II)V

    .line 175
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    const-string/jumbo v2, "android.permission.RECEIVE_SMS"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    new-instance v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    const/16 v1, 0xf

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.CAMERA"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2, v5, v4}, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;-><init>(I[Ljava/lang/String;II)V

    .line 181
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    const-string/jumbo v2, "android.permission.CAMERA"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    new-instance v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    const/16 v1, 0x10

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.RECORD_AUDIO"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2, v5, v4}, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;-><init>(I[Ljava/lang/String;II)V

    .line 187
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    const-string/jumbo v2, "android.permission.RECORD_AUDIO"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    new-instance v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    const/16 v1, 0x11

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.RECEIVE_BOOT_COMPLETED"

    aput-object v3, v2, v5

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;-><init>(I[Ljava/lang/String;II)V

    .line 193
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    const-string/jumbo v2, "android.permission.RECEIVE_BOOT_COMPLETED"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    new-instance v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    const/16 v1, 0x15

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "lenovo.permission.SEND_MMS"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2, v5, v4}, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;-><init>(I[Ljava/lang/String;II)V

    .line 221
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    const-string/jumbo v2, "lenovo.permission.SEND_MMS"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    new-instance v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    const/16 v1, 0x16

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "lenovo.permission.APP_LOCK"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2, v4, v4}, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;-><init>(I[Ljava/lang/String;II)V

    .line 227
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    const-string/jumbo v2, "lenovo.permission.APP_LOCK"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    new-instance v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    const/16 v1, 0x17

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.SYSTEM_ALERT_WINDOW"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2, v4, v4}, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;-><init>(I[Ljava/lang/String;II)V

    .line 233
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    const-string/jumbo v2, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    new-instance v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    const/16 v1, 0x18

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "com.lenovo.pemission.exit_app"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2, v5, v5}, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;-><init>(I[Ljava/lang/String;II)V

    .line 239
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    const-string/jumbo v2, "com.lenovo.pemission.exit_app"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    new-instance v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    const/16 v1, 0x21

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "lenovo.permission.GET_INSTALLED_PACKAGES"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2, v4, v4}, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;-><init>(I[Ljava/lang/String;II)V

    .line 246
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    const/16 v2, 0x21

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    const-string/jumbo v2, "lenovo.permission.GET_INSTALLED_PACKAGES"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 366
    sput-object v0, Lcom/lenovo/common/AppPcUtils;->sControllableSystemApps:Ljava/util/List;

    .line 528
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/lenovo/common/AppPcUtils;->sIgnoreApps:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method static synthetic access$002(Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 30
    sput-object p0, Lcom/lenovo/common/AppPcUtils;->sControllableSystemApps:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100()Ljava/util/List;
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/lenovo/common/AppPcUtils;->getControllableSystemApps()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getControllableSystemAppDefaultStatus(I)I
    .locals 2

    .prologue
    .line 327
    sget-object v0, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    .line 328
    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 331
    return v0

    .line 329
    :cond_0
    iget v0, v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;->sysDefaultState:I

    return v0
.end method

.method private static getControllableSystemApps()Ljava/util/List;
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
    const-string/jumbo v0, "/etc/com_lenovo_security/controllable_system_apps"

    .line 524
    invoke-static {v0}, Lcom/lenovo/common/AppPcUtils;->parseFileByLines(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultStatus(I)I
    .locals 2

    .prologue
    .line 315
    sget-object v0, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    .line 316
    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 319
    return v0

    .line 317
    :cond_0
    iget v0, v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;->userDefaultState:I

    return v0
.end method

.method public static getFirstPermissionByCode(I)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 355
    sget-object v0, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    .line 356
    if-nez v0, :cond_1

    .line 361
    :cond_0
    return-object v3

    .line 357
    :cond_1
    iget-object v1, v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;->pemissions:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 358
    iget-object v0, v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;->pemissions:[Ljava/lang/String;

    aget-object v0, v0, v2

    return-object v0
.end method

.method public static getPermCode(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 303
    sget-object v0, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    .line 304
    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 307
    return v0

    .line 305
    :cond_0
    iget v0, v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;->code:I

    return v0
.end method

.method public static getPermissionByCode(I)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 340
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 341
    sget-object v0, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    .line 342
    if-nez v0, :cond_1

    .line 347
    :cond_0
    return-object v2

    :cond_1
    const/4 v1, 0x0

    .line 343
    :goto_0
    iget-object v3, v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;->pemissions:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 344
    iget-object v3, v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;->pemissions:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static init()V
    .locals 1

    .prologue
    .line 381
    new-instance v0, Lcom/lenovo/common/AppPcUtils$1;

    invoke-direct {v0}, Lcom/lenovo/common/AppPcUtils$1;-><init>()V

    invoke-virtual {v0}, Lcom/lenovo/common/AppPcUtils$1;->start()V

    .line 387
    return-void
.end method

.method private static initIgnoreAppsIfNeed()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 537
    sget-object v3, Lcom/lenovo/common/AppPcUtils;->sIgnoreApps:Ljava/util/Set;

    monitor-enter v3

    .line 538
    :try_start_0
    sget-object v0, Lcom/lenovo/common/AppPcUtils;->sIgnoreApps:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_1

    const-string/jumbo v0, "/etc/com_lenovo_security/ignore_apps"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    const-string/jumbo v0, "/etc/com_lenovo_security/ignore_apps"

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 552
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string/jumbo v0, ""

    .line 554
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v0

    if-nez v0, :cond_2

    .line 561
    if-nez v4, :cond_3

    .line 564
    :goto_1
    if-nez v1, :cond_4

    .line 570
    :cond_0
    :goto_2
    :try_start_4
    monitor-exit v3

    .line 571
    return-void

    .line 539
    :cond_1
    monitor-exit v3

    return-void

    .line 547
    :catch_0
    move-exception v0

    .line 546
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    .line 555
    :cond_2
    :try_start_5
    sget-object v2, Lcom/lenovo/common/AppPcUtils;->sIgnoreApps:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    .line 569
    :catch_1
    move-exception v0

    :goto_3
    :try_start_6
    const-string/jumbo v2, "Security/AppPcUtils"

    .line 558
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 561
    if-nez v4, :cond_5

    .line 564
    :goto_4
    if-eqz v1, :cond_0

    .line 565
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 568
    :catch_2
    move-exception v0

    goto :goto_2

    .line 562
    :cond_3
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    goto :goto_1

    .line 568
    :catch_3
    move-exception v0

    goto :goto_2

    .line 565
    :cond_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 570
    :catchall_0
    move-exception v0

    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v0

    .line 562
    :cond_5
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_4

    .line 569
    :catchall_1
    move-exception v0

    move-object v1, v2

    .line 561
    :goto_5
    if-nez v4, :cond_6

    .line 564
    :goto_6
    if-nez v1, :cond_7

    .line 568
    :goto_7
    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 562
    :cond_6
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    goto :goto_6

    .line 568
    :catch_4
    move-exception v1

    goto :goto_7

    .line 565
    :cond_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_7

    .line 569
    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    move-object v1, v2

    goto :goto_3
.end method

.method public static isHomeApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 438
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 439
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.category.HOME"

    .line 440
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 443
    if-nez v1, :cond_1

    .line 449
    :cond_0
    :goto_0
    return v0

    .line 443
    :cond_1
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_0

    .line 444
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isIgnorePerm(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 405
    sget-object v0, Lcom/lenovo/common/AppPcUtils;->mIgnoreMap:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 408
    const/4 v0, 0x0

    return v0

    .line 406
    :cond_0
    sget-object v0, Lcom/lenovo/common/AppPcUtils;->mIgnoreMap:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isIgnorePkg(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 530
    invoke-static {}, Lcom/lenovo/common/AppPcUtils;->initIgnoreAppsIfNeed()V

    .line 531
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->sIgnoreApps:Ljava/util/Set;

    monitor-enter v1

    .line 533
    :try_start_0
    sget-object v0, Lcom/lenovo/common/AppPcUtils;->sIgnoreApps:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    .line 534
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isInControllableSystemApps(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 394
    sget-object v0, Lcom/lenovo/common/AppPcUtils;->sControllableSystemApps:Ljava/util/List;

    if-nez v0, :cond_0

    .line 397
    const/4 v0, 0x0

    return v0

    .line 395
    :cond_0
    sget-object v0, Lcom/lenovo/common/AppPcUtils;->sControllableSystemApps:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isLauncherApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 418
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 419
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v3, "android.intent.category.LAUNCHER"

    .line 420
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 423
    if-nez v1, :cond_1

    .line 428
    :cond_0
    :goto_0
    return v0

    .line 423
    :cond_1
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_0

    .line 424
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 475
    if-eqz p1, :cond_0

    .line 480
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 481
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 482
    invoke-static {v0}, Lcom/lenovo/common/AppPcUtils;->isSystemApp(Landroid/content/pm/PackageInfo;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 476
    :cond_0
    return v2

    .line 482
    :catch_0
    move-exception v0

    .line 485
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 487
    return v2
.end method

.method public static isSystemApp(Landroid/content/pm/PackageInfo;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 458
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 459
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x2710

    if-lt v1, v2, :cond_0

    .line 462
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x81

    if-eqz v0, :cond_1

    .line 465
    return v4

    .line 460
    :cond_0
    return v4

    .line 463
    :cond_1
    return v3
.end method

.method private static parseFileByLines(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 490
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 496
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 503
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string/jumbo v3, ""

    .line 505
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    if-nez v3, :cond_2

    .line 512
    if-nez v1, :cond_3

    .line 517
    :cond_0
    :goto_1
    return-object v2

    .line 491
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 499
    :catch_0
    move-exception v0

    .line 498
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0

    .line 506
    :cond_2
    :try_start_2
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 516
    :catch_1
    move-exception v0

    :try_start_3
    const-string/jumbo v3, "Security/AppPcUtils"

    .line 509
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 512
    if-eqz v1, :cond_0

    .line 513
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 515
    :catch_2
    move-exception v0

    goto :goto_1

    .line 513
    :cond_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 515
    :catch_3
    move-exception v0

    goto :goto_1

    .line 516
    :catchall_0
    move-exception v0

    .line 512
    if-nez v1, :cond_4

    .line 515
    :goto_2
    throw v0

    .line 513
    :cond_4
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 515
    :catch_4
    move-exception v1

    goto :goto_2
.end method
