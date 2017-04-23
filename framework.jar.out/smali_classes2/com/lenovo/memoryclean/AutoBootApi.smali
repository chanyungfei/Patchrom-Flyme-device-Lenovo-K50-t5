.class public Lcom/lenovo/memoryclean/AutoBootApi;
.super Ljava/lang/Object;
.source "AutoBootApi.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.lenovo.lsf.bwprovider"

.field private static final CONTENT_PERM_SYS_URI:Landroid/net/Uri;

.field private static final CONTENT_PERM_USER_URI:Landroid/net/Uri;

.field private static final CONTENT_PERM_WHITE_LIST_SYS_URI:Landroid/net/Uri;

.field private static final CONTENT_PERM_WHITE_LIST_USER_URI:Landroid/net/Uri;

.field private static final FIELD_NAME_MODIFY:Ljava/lang/String; = "modify"

.field private static final FIELD_NAME_PACKAGE:Ljava/lang/String; = "package"

.field private static final FIELD_NAME_PERMISSION:Ljava/lang/String; = "permission"

.field private static final FIELD_NAME_PERMISSION_STATUS:Ljava/lang/String; = "permission_status"

.field public static final NOTIFYTYPE_ALLOW_ALWAYS:I = 0x1

.field public static final NOTIFYTYPE_ASKED_ALWAYS:I = 0x0

.field public static final NOTIFYTYPE_REFUSE_ALWAYS:I = -0x1

.field private static final RECEIVE_BOOT_COMPLETED_PERMISSION:Ljava/lang/String; = "android.permission.RECEIVE_BOOT_COMPLETED"

.field private static final TABLE_PERMISSION_SYS:Ljava/lang/String; = "app_permissions_sys_settings"

.field private static final TABLE_PERMISSION_USER:Ljava/lang/String; = "app_permissions_user_settings"

.field private static final TABLE_PERMISSION_WHITE_LIST_SYS:Ljava/lang/String; = "white_list_sys_settings"

.field private static final TABLE_PERMISSION_WHITE_LIST_USER:Ljava/lang/String; = "white_list_user_settings"

.field private static final TAG:Ljava/lang/String; = "AutoBootApi"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisableAutoBootList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHasInited:Z

.field private mLock:Ljava/lang/Object;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSyncPermListThread:Ljava/lang/Thread;

.field private mSyncSysWhiteListThread:Ljava/lang/Thread;

.field private mSyncThread:Ljava/lang/Thread;

.field private mSyncUserWhiteListThread:Ljava/lang/Thread;

.field private mSysPermObservable:Landroid/database/ContentObserver;

.field private mSystemWhiteLists:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemWhiteObservable:Landroid/database/ContentObserver;

.field private mUserPermObservable:Landroid/database/ContentObserver;

.field private mUserWhiteLists:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUserWhiteObservable:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "content://com.lenovo.lsf.bwprovider/app_permissions_user_settings"

    .line 41
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lenovo/memoryclean/AutoBootApi;->CONTENT_PERM_USER_URI:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.lenovo.lsf.bwprovider/app_permissions_sys_settings"

    .line 46
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lenovo/memoryclean/AutoBootApi;->CONTENT_PERM_SYS_URI:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.lenovo.lsf.bwprovider/white_list_sys_settings"

    .line 51
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lenovo/memoryclean/AutoBootApi;->CONTENT_PERM_WHITE_LIST_SYS_URI:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.lenovo.lsf.bwprovider/white_list_user_settings"

    .line 57
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lenovo/memoryclean/AutoBootApi;->CONTENT_PERM_WHITE_LIST_USER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mLock:Ljava/lang/Object;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mHasInited:Z

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mDisableAutoBootList:Ljava/util/HashSet;

    .line 93
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSystemWhiteLists:Ljava/util/HashSet;

    .line 97
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mUserWhiteLists:Ljava/util/HashSet;

    .line 301
    new-instance v0, Lcom/lenovo/memoryclean/AutoBootApi$1;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/memoryclean/AutoBootApi$1;-><init>(Lcom/lenovo/memoryclean/AutoBootApi;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mUserWhiteObservable:Landroid/database/ContentObserver;

    .line 312
    new-instance v0, Lcom/lenovo/memoryclean/AutoBootApi$2;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/memoryclean/AutoBootApi$2;-><init>(Lcom/lenovo/memoryclean/AutoBootApi;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSystemWhiteObservable:Landroid/database/ContentObserver;

    .line 323
    new-instance v0, Lcom/lenovo/memoryclean/AutoBootApi$3;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/memoryclean/AutoBootApi$3;-><init>(Lcom/lenovo/memoryclean/AutoBootApi;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mUserPermObservable:Landroid/database/ContentObserver;

    .line 334
    new-instance v0, Lcom/lenovo/memoryclean/AutoBootApi$4;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/memoryclean/AutoBootApi$4;-><init>(Lcom/lenovo/memoryclean/AutoBootApi;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSysPermObservable:Landroid/database/ContentObserver;

    .line 99
    iput-object p1, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mContext:Landroid/content/Context;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/memoryclean/AutoBootApi;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/lenovo/memoryclean/AutoBootApi;->startSyncUserWhiteLists()V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/memoryclean/AutoBootApi;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/lenovo/memoryclean/AutoBootApi;->startSyncSysWhiteLists()V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/memoryclean/AutoBootApi;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/lenovo/memoryclean/AutoBootApi;->startSyncPermLists()V

    return-void
.end method

.method static synthetic access$300(Lcom/lenovo/memoryclean/AutoBootApi;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/memoryclean/AutoBootApi;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/lenovo/memoryclean/AutoBootApi;->loadFromDb(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$502(Lcom/lenovo/memoryclean/AutoBootApi;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSyncThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$600(Lcom/lenovo/memoryclean/AutoBootApi;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/lenovo/memoryclean/AutoBootApi;->loadPermListFromDb(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$702(Lcom/lenovo/memoryclean/AutoBootApi;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSyncPermListThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$800(Lcom/lenovo/memoryclean/AutoBootApi;Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/lenovo/memoryclean/AutoBootApi;->loadWhiteListFromDb(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$902(Lcom/lenovo/memoryclean/AutoBootApi;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSyncUserWhiteListThread:Ljava/lang/Thread;

    return-object p1
.end method

.method private loadFromDb(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mHasInited:Z

    .line 111
    invoke-direct {p0, p1}, Lcom/lenovo/memoryclean/AutoBootApi;->loadPermListFromDb(Landroid/content/Context;)V

    .line 112
    invoke-direct {p0, p1, v0}, Lcom/lenovo/memoryclean/AutoBootApi;->loadWhiteListFromDb(Landroid/content/Context;Z)V

    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/memoryclean/AutoBootApi;->loadWhiteListFromDb(Landroid/content/Context;Z)V

    .line 114
    return-void
.end method

.method private loadPermListFromDb(Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 122
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 125
    :try_start_0
    sget-object v1, Lcom/lenovo/memoryclean/AutoBootApi;->CONTENT_PERM_USER_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "package"

    aput-object v4, v2, v3

    const-string/jumbo v3, "permission=? AND permission_status=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v7, "android.permission.RECEIVE_BOOT_COMPLETED"

    aput-object v7, v4, v5

    const/4 v5, 0x1

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 132
    if-nez v1, :cond_0

    const-string/jumbo v1, "AutoBootApi"

    const-string/jumbo v2, "get user perm fail"

    .line 151
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_0
    sget-object v1, Lcom/lenovo/memoryclean/AutoBootApi;->CONTENT_PERM_SYS_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "package"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "permission_status"

    aput-object v4, v2, v3

    const-string/jumbo v3, "permission=? AND modify=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v7, "android.permission.RECEIVE_BOOT_COMPLETED"

    aput-object v7, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v7, "0"

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 162
    if-nez v0, :cond_4

    const-string/jumbo v0, "AutoBootApi"

    const-string/jumbo v1, "sys user perm fail"

    .line 187
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :goto_1
    invoke-direct {p0, v6}, Lcom/lenovo/memoryclean/AutoBootApi;->updatePermList(Ljava/util/HashSet;)V

    .line 194
    :goto_2
    return-void

    .line 133
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_2

    const-string/jumbo v2, "AutoBootApi"

    const-string/jumbo v3, "user perm no app"

    .line 146
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 191
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v0, "AutoBootApi"

    const-string/jumbo v1, "loadPermListFromDb fail!"

    .line 192
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 134
    :cond_2
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 135
    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    .line 136
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "package"

    .line 140
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-virtual {v6, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_3

    .line 137
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 138
    return-void

    .line 163
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_6

    const-string/jumbo v1, "AutoBootApi"

    const-string/jumbo v2, "sys perm no app"

    .line 182
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 164
    :cond_6
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 165
    :goto_4
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_5

    .line 166
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "permission_status"

    .line 170
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string/jumbo v2, "package"

    .line 172
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 174
    if-eq v1, v8, :cond_8

    .line 177
    invoke-virtual {v6, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 179
    :goto_5
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_4

    .line 167
    :cond_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 168
    return-void

    .line 175
    :cond_8
    invoke-virtual {v6, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5
.end method

.method private loadWhiteListFromDb(Landroid/content/Context;Z)V
    .locals 7

    .prologue
    .line 201
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 202
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 204
    if-nez p2, :cond_0

    .line 207
    sget-object v1, Lcom/lenovo/memoryclean/AutoBootApi;->CONTENT_PERM_WHITE_LIST_SYS_URI:Landroid/net/Uri;

    :goto_0
    const/4 v2, 0x1

    .line 210
    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "package"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 214
    if-nez v0, :cond_1

    const-string/jumbo v0, "AutoBootApi"

    const-string/jumbo v1, "loadWhiteListFromDb fail"

    .line 232
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :goto_1
    invoke-direct {p0, v6, p2}, Lcom/lenovo/memoryclean/AutoBootApi;->updateWhiteList(Ljava/util/HashSet;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_2
    return-void

    .line 205
    :cond_0
    sget-object v1, Lcom/lenovo/memoryclean/AutoBootApi;->CONTENT_PERM_WHITE_LIST_USER_URI:Landroid/net/Uri;

    goto :goto_0

    .line 215
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_3

    const-string/jumbo v1, "AutoBootApi"

    const-string/jumbo v2, "loadWhiteListFromDb no app"

    .line 227
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 238
    :catch_0
    move-exception v0

    .line 236
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v0, "AutoBootApi"

    const-string/jumbo v1, "loadWhiteListFromDb fail!"

    .line 237
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 216
    :cond_3
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 217
    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    .line 218
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "package"

    .line 221
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-virtual {v6, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 219
    :cond_4
    return-void
.end method

.method private startSyncLists()V
    .locals 2

    .prologue
    const-string/jumbo v0, "AutoBootApi"

    const-string/jumbo v1, "startSyncLists"

    .line 343
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSyncThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 347
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/memoryclean/AutoBootApi$5;

    invoke-direct {v1, p0}, Lcom/lenovo/memoryclean/AutoBootApi$5;-><init>(Lcom/lenovo/memoryclean/AutoBootApi;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSyncThread:Ljava/lang/Thread;

    .line 354
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSyncThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 355
    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSyncThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method private startSyncPermLists()V
    .locals 2

    .prologue
    const-string/jumbo v0, "AutoBootApi"

    const-string/jumbo v1, "startSyncSystemWhiteLists"

    .line 358
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSyncPermListThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 362
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/memoryclean/AutoBootApi$6;

    invoke-direct {v1, p0}, Lcom/lenovo/memoryclean/AutoBootApi$6;-><init>(Lcom/lenovo/memoryclean/AutoBootApi;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSyncPermListThread:Ljava/lang/Thread;

    .line 369
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSyncPermListThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 370
    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSyncPermListThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method private startSyncSysWhiteLists()V
    .locals 2

    .prologue
    const-string/jumbo v0, "AutoBootApi"

    const-string/jumbo v1, "startSyncSysWhiteLists"

    .line 372
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSyncSysWhiteListThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 376
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/memoryclean/AutoBootApi$7;

    invoke-direct {v1, p0}, Lcom/lenovo/memoryclean/AutoBootApi$7;-><init>(Lcom/lenovo/memoryclean/AutoBootApi;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSyncSysWhiteListThread:Ljava/lang/Thread;

    .line 383
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSyncSysWhiteListThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 384
    return-void

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSyncSysWhiteListThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method private startSyncUserWhiteLists()V
    .locals 2

    .prologue
    const-string/jumbo v0, "AutoBootApi"

    const-string/jumbo v1, "startSyncUserWhiteLists"

    .line 386
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSyncUserWhiteListThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 390
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/memoryclean/AutoBootApi$8;

    invoke-direct {v1, p0}, Lcom/lenovo/memoryclean/AutoBootApi$8;-><init>(Lcom/lenovo/memoryclean/AutoBootApi;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSyncUserWhiteListThread:Ljava/lang/Thread;

    .line 397
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSyncUserWhiteListThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 398
    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSyncUserWhiteListThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method private updatePermList(Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 241
    iget-object v1, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mDisableAutoBootList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 243
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mDisableAutoBootList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 244
    monitor-exit v1

    .line 245
    return-void

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateWhiteList(Ljava/util/HashSet;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 247
    iget-object v1, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 248
    if-nez p2, :cond_0

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSystemWhiteLists:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 253
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSystemWhiteLists:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 256
    :goto_0
    monitor-exit v1

    .line 257
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mUserWhiteLists:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 250
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mUserWhiteLists:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public isInAutoBootAbleList(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 262
    iget-object v2, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 263
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSystemWhiteLists:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 265
    iget-object v3, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mUserWhiteLists:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 268
    iget-object v3, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mDisableAutoBootList:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_0
    monitor-exit v2

    return v0

    .line 264
    :cond_0
    monitor-exit v2

    return v1

    .line 266
    :cond_1
    monitor-exit v2

    return v1

    :cond_2
    move v0, v1

    .line 268
    goto :goto_0

    :catchall_0
    move-exception v0

    .line 269
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public loadFromDbIfNeed()V
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mHasInited:Z

    if-eqz v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/lenovo/memoryclean/AutoBootApi;->loadFromDb(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public registerContentObserve()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 276
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mResolver:Landroid/content/ContentResolver;

    .line 277
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/lenovo/memoryclean/AutoBootApi;->CONTENT_PERM_USER_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mUserPermObservable:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 278
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/lenovo/memoryclean/AutoBootApi;->CONTENT_PERM_SYS_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSysPermObservable:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 279
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/lenovo/memoryclean/AutoBootApi;->CONTENT_PERM_WHITE_LIST_SYS_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSystemWhiteObservable:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 280
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/lenovo/memoryclean/AutoBootApi;->CONTENT_PERM_WHITE_LIST_USER_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mUserWhiteObservable:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 281
    iget-boolean v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mHasInited:Z

    if-eqz v0, :cond_0

    .line 284
    :goto_0
    return-void

    .line 282
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/memoryclean/AutoBootApi;->startSyncLists()V

    goto :goto_0
.end method

.method public unRegisterContentObserve()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    .line 296
    :goto_0
    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mUserPermObservable:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 292
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSysPermObservable:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 293
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSystemWhiteObservable:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 294
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mUserWhiteObservable:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
