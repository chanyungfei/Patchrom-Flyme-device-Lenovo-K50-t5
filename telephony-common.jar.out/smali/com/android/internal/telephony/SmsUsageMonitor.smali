.class public Lcom/android/internal/telephony/SmsUsageMonitor;
.super Ljava/lang/Object;
.source "SmsUsageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;,
        Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserver;,
        Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserverHandler;
    }
.end annotation


# static fields
.field private static final ATTR_COUNTRY:Ljava/lang/String; = "country"

.field private static final ATTR_FREE:Ljava/lang/String; = "free"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PACKAGE_SMS_POLICY:Ljava/lang/String; = "sms-policy"

.field private static final ATTR_PATTERN:Ljava/lang/String; = "pattern"

.field private static final ATTR_PREMIUM:Ljava/lang/String; = "premium"

.field private static final ATTR_STANDARD:Ljava/lang/String; = "standard"

.field static final CATEGORY_FREE_SHORT_CODE:I = 0x1

.field static final CATEGORY_NOT_SHORT_CODE:I = 0x0

.field static final CATEGORY_POSSIBLE_PREMIUM_SHORT_CODE:I = 0x3

.field static final CATEGORY_PREMIUM_SHORT_CODE:I = 0x4

.field static final CATEGORY_STANDARD_SHORT_CODE:I = 0x2

.field private static final DBG:Z = true

.field private static final DEFAULT_SMS_CHECK_PERIOD:I = 0xea60

.field private static final DEFAULT_SMS_MAX_COUNT:I = 0x1e

.field private static final PACKAGE_NAME_LENOVO_MMS:Ljava/lang/String; = "com.lenovo.ideafriend"

.field private static final PACKAGE_NAME_MMS:Ljava/lang/String; = "com.android.mms"

.field public static final PREMIUM_SMS_PERMISSION_ALWAYS_ALLOW:I = 0x3

.field public static final PREMIUM_SMS_PERMISSION_ASK_USER:I = 0x1

.field public static final PREMIUM_SMS_PERMISSION_NEVER_ALLOW:I = 0x2

.field public static final PREMIUM_SMS_PERMISSION_UNKNOWN:I = 0x0

.field private static final SHORT_CODE_PATH:Ljava/lang/String; = "/data/misc/sms/codes"

.field private static final SMS_POLICY_FILE_DIRECTORY:Ljava/lang/String; = "/data/misc/sms"

.field private static final SMS_POLICY_FILE_NAME:Ljava/lang/String; = "premium_sms_policy.xml"

.field private static final TAG:Ljava/lang/String; = "SmsUsageMonitor"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_SHORTCODE:Ljava/lang/String; = "shortcode"

.field private static final TAG_SHORTCODES:Ljava/lang/String; = "shortcodes"

.field private static final TAG_SMS_POLICY_BODY:Ljava/lang/String; = "premium-sms-policy"

.field private static final VDBG:Z


# instance fields
.field private final mCheckEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mCheckPeriod:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentCountry:Ljava/lang/String;

.field private mCurrentPatternMatcher:Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

.field private final mMaxAllowed:I

.field private final mPatternFile:Ljava/io/File;

.field private mPatternFileLastModified:J

.field private mPolicyFile:Landroid/util/AtomicFile;

.field private final mPremiumSmsPolicy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsObserverHandler:Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserverHandler;

.field private final mSmsStamp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/SmsUsageMonitor;->writePremiumSmsPolicyDb()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 122
    iput-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsStamp:Ljava/util/HashMap;

    .line 142
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCheckEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 148
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/data/misc/sms/codes"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    .line 151
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFileLastModified:J

    .line 184
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    .line 273
    iput-object p1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mContext:Landroid/content/Context;

    .line 274
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 277
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "sms_outgoing_check_max_count"

    .line 278
    const/16 v2, 0x1e

    .line 276
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mMaxAllowed:I

    .line 281
    const-string/jumbo v1, "sms_outgoing_check_interval_ms"

    .line 282
    const v2, 0xea60

    .line 280
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCheckPeriod:I

    .line 284
    new-instance v1, Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserverHandler;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCheckEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserverHandler;-><init>(Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSettingsObserverHandler:Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserverHandler;

    .line 286
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsUsageMonitor;->loadPremiumSmsPolicyDb()V

    .line 272
    return-void
.end method

.method private static checkCallerIsSystemOrPhoneApp()V
    .locals 5

    .prologue
    .line 625
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 626
    .local v1, "uid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 627
    .local v0, "appId":I
    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_0

    const/16 v2, 0x3e9

    if-ne v0, v2, :cond_1

    .line 628
    :cond_0
    return-void

    .line 627
    :cond_1
    if-eqz v1, :cond_0

    .line 630
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Disallowed call for uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static checkCallerIsSystemOrPhoneOrSameApp(Ljava/lang/String;)V
    .locals 7
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 607
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 608
    .local v3, "uid":I
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 609
    .local v1, "appId":I
    const/16 v4, 0x3e8

    if-eq v1, v4, :cond_0

    const/16 v4, 0x3e9

    if-ne v1, v4, :cond_1

    .line 610
    :cond_0
    return-void

    .line 609
    :cond_1
    if-eqz v3, :cond_0

    .line 613
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 614
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    const/4 v6, 0x0

    .line 613
    invoke-interface {v4, p0, v6, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 615
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4, v3}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v4

    if-nez v4, :cond_2

    .line 616
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Calling uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " gave package"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 617
    const-string/jumbo v6, " which is owned by uid "

    .line 616
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 617
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 616
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .line 620
    .local v2, "re":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 606
    .end local v2    # "re":Landroid/os/RemoteException;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_2
    return-void
.end method

.method private getPatternMatcherFromFile(Ljava/lang/String;)Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;
    .locals 10
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 295
    const/4 v4, 0x0

    .line 296
    .local v4, "patternReader":Ljava/io/FileReader;
    const/4 v3, 0x0

    .line 298
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    iget-object v6, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    .end local v4    # "patternReader":Ljava/io/FileReader;
    .local v5, "patternReader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 300
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 301
    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPatternMatcherFromXmlParser(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 307
    iget-object v7, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFileLastModified:J

    .line 308
    if-eqz v5, :cond_0

    .line 310
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 301
    :cond_0
    :goto_0
    return-object v6

    .line 311
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_0

    .line 304
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "patternReader":Ljava/io/FileReader;
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "patternReader":Ljava/io/FileReader;
    :catch_1
    move-exception v2

    .line 305
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "patternReader":Ljava/io/FileReader;
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    :try_start_3
    const-string/jumbo v6, "SmsUsageMonitor"

    const-string/jumbo v7, "XML parser exception reading short code pattern file"

    invoke-static {v6, v7, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 307
    iget-object v6, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFileLastModified:J

    .line 308
    if-eqz v4, :cond_1

    .line 310
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 314
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_2
    return-object v8

    .line 311
    .restart local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 302
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "patternReader":Ljava/io/FileReader;
    :catch_3
    move-exception v0

    .line 303
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "patternReader":Ljava/io/FileReader;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    const-string/jumbo v6, "SmsUsageMonitor"

    const-string/jumbo v7, "Short Code Pattern File not found"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 307
    iget-object v6, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFileLastModified:J

    .line 308
    if-eqz v4, :cond_1

    .line 310
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 311
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 306
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 307
    :goto_4
    iget-object v7, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFileLastModified:J

    .line 308
    if-eqz v4, :cond_2

    .line 310
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 306
    :cond_2
    :goto_5
    throw v6

    .line 311
    :catch_5
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 306
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "patternReader":Ljava/io/FileReader;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "patternReader":Ljava/io/FileReader;
    .local v4, "patternReader":Ljava/io/FileReader;
    goto :goto_4

    .line 302
    .end local v4    # "patternReader":Ljava/io/FileReader;
    .restart local v5    # "patternReader":Ljava/io/FileReader;
    :catch_6
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v4, v5

    .end local v5    # "patternReader":Ljava/io/FileReader;
    .restart local v4    # "patternReader":Ljava/io/FileReader;
    goto :goto_3

    .line 304
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "patternReader":Ljava/io/FileReader;
    .restart local v5    # "patternReader":Ljava/io/FileReader;
    :catch_7
    move-exception v2

    .restart local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v4, v5

    .end local v5    # "patternReader":Ljava/io/FileReader;
    .restart local v4    # "patternReader":Ljava/io/FileReader;
    goto :goto_1
.end method

.method private getPatternMatcherFromResource(Ljava/lang/String;)Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;
    .locals 3
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 318
    const v0, 0x1110012

    .line 319
    .local v0, "id":I
    const/4 v1, 0x0

    .line 321
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 322
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPatternMatcherFromXmlParser(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 324
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 322
    :cond_0
    return-object v2

    .line 323
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    :catchall_0
    move-exception v2

    .line 324
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 323
    :cond_1
    throw v2
.end method

.method private getPatternMatcherFromXmlParser(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;
    .locals 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "country"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 331
    :try_start_0
    const-string/jumbo v8, "shortcodes"

    invoke-static {p1, v8}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 334
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 335
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 336
    .local v3, "element":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 337
    const-string/jumbo v8, "SmsUsageMonitor"

    const-string/jumbo v9, "Parsing pattern data found null"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 360
    .end local v3    # "element":Ljava/lang/String;
    :goto_1
    const-string/jumbo v8, "SmsUsageMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Country ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ") not found"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    return-object v11

    .line 341
    .restart local v3    # "element":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string/jumbo v8, "shortcode"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 342
    const-string/jumbo v8, "country"

    const/4 v9, 0x0

    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, "currentCountry":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 345
    const-string/jumbo v8, "pattern"

    const/4 v9, 0x0

    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 346
    .local v5, "pattern":Ljava/lang/String;
    const-string/jumbo v8, "premium"

    const/4 v9, 0x0

    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 347
    .local v6, "premium":Ljava/lang/String;
    const-string/jumbo v8, "free"

    const/4 v9, 0x0

    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 348
    .local v4, "free":Ljava/lang/String;
    const-string/jumbo v8, "standard"

    const/4 v9, 0x0

    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 349
    .local v7, "standard":Ljava/lang/String;
    new-instance v8, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

    invoke-direct {v8, v5, v6, v4, v7}, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v8

    .line 352
    .end local v0    # "currentCountry":Ljava/lang/String;
    .end local v4    # "free":Ljava/lang/String;
    .end local v5    # "pattern":Ljava/lang/String;
    .end local v6    # "premium":Ljava/lang/String;
    .end local v7    # "standard":Ljava/lang/String;
    :cond_2
    const-string/jumbo v8, "SmsUsageMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error: skipping unknown XML tag "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 355
    .end local v3    # "element":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 356
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v8, "SmsUsageMonitor"

    const-string/jumbo v9, "XML parser exception reading short code patterns"

    invoke-static {v8, v9, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 357
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

    .line 358
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v8, "SmsUsageMonitor"

    const-string/jumbo v9, "I/O exception reading short code patterns"

    invoke-static {v8, v9, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method private isUnderLimit(Ljava/util/ArrayList;I)Z
    .locals 9
    .param p2, "smsWaiting"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, "sent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v8, 0x0

    .line 653
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 654
    .local v2, "ct":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget v6, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCheckPeriod:I

    int-to-long v6, v6

    sub-long v0, v4, v6

    .line 658
    .local v0, "beginCheckPeriod":J
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-gez v4, :cond_0

    .line 659
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 662
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v4, p2

    iget v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mMaxAllowed:I

    if-gt v4, v5, :cond_2

    .line 663
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, p2, :cond_1

    .line 664
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 666
    :cond_1
    const/4 v4, 0x1

    return v4

    .line 668
    .end local v3    # "i":I
    :cond_2
    return v8
.end method

.method private loadPremiumSmsPolicyDb()V
    .locals 15

    .prologue
    .line 462
    iget-object v12, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    monitor-enter v12

    .line 463
    :try_start_0
    iget-object v11, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPolicyFile:Landroid/util/AtomicFile;

    if-nez v11, :cond_0

    .line 464
    new-instance v0, Ljava/io/File;

    const-string/jumbo v11, "/data/misc/sms"

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 465
    .local v0, "dir":Ljava/io/File;
    new-instance v11, Landroid/util/AtomicFile;

    new-instance v13, Ljava/io/File;

    const-string/jumbo v14, "premium_sms_policy.xml"

    invoke-direct {v13, v0, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v11, v13}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v11, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPolicyFile:Landroid/util/AtomicFile;

    .line 467
    iget-object v11, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 469
    const/4 v7, 0x0

    .line 471
    .local v7, "infile":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v11, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v11}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v7

    .line 472
    .local v7, "infile":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 473
    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v7, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 475
    const-string/jumbo v11, "premium-sms-policy"

    invoke-static {v9, v11}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 478
    :goto_0
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 480
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 481
    .local v5, "element":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 508
    if-eqz v7, :cond_0

    .line 510
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v0    # "dir":Ljava/io/File;
    .end local v5    # "element":Ljava/lang/String;
    .end local v7    # "infile":Ljava/io/FileInputStream;
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_0
    :goto_1
    monitor-exit v12

    .line 461
    return-void

    .line 483
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v5    # "element":Ljava/lang/String;
    .restart local v7    # "infile":Ljava/io/FileInputStream;
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    :try_start_3
    const-string/jumbo v11, "package"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 484
    const-string/jumbo v11, "name"

    const/4 v13, 0x0

    invoke-interface {v9, v13, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 485
    .local v8, "packageName":Ljava/lang/String;
    const-string/jumbo v11, "sms-policy"

    const/4 v13, 0x0

    invoke-interface {v9, v13, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 486
    .local v10, "policy":Ljava/lang/String;
    if-nez v8, :cond_2

    .line 487
    const-string/jumbo v11, "SmsUsageMonitor"

    const-string/jumbo v13, "Error: missing package name attribute"

    invoke-static {v11, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 499
    .end local v5    # "element":Ljava/lang/String;
    .end local v7    # "infile":Ljava/io/FileInputStream;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "policy":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 508
    .local v1, "e":Ljava/io/FileNotFoundException;
    if-eqz v7, :cond_0

    .line 510
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 511
    :catch_1
    move-exception v6

    .local v6, "ignored":Ljava/io/IOException;
    goto :goto_1

    .line 488
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v6    # "ignored":Ljava/io/IOException;
    .restart local v5    # "element":Ljava/lang/String;
    .restart local v7    # "infile":Ljava/io/FileInputStream;
    .restart local v8    # "packageName":Ljava/lang/String;
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "policy":Ljava/lang/String;
    :cond_2
    if-nez v10, :cond_3

    .line 489
    :try_start_5
    const-string/jumbo v11, "SmsUsageMonitor"

    const-string/jumbo v13, "Error: missing package policy attribute"

    invoke-static {v11, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 501
    .end local v5    # "element":Ljava/lang/String;
    .end local v7    # "infile":Ljava/io/FileInputStream;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "policy":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 502
    .local v2, "e":Ljava/io/IOException;
    :try_start_6
    const-string/jumbo v11, "SmsUsageMonitor"

    const-string/jumbo v13, "Unable to read premium SMS policy database"

    invoke-static {v11, v13, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 508
    if-eqz v7, :cond_0

    .line 510
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 511
    :catch_3
    move-exception v6

    .restart local v6    # "ignored":Ljava/io/IOException;
    goto :goto_1

    .line 491
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "ignored":Ljava/io/IOException;
    .restart local v5    # "element":Ljava/lang/String;
    .restart local v7    # "infile":Ljava/io/FileInputStream;
    .restart local v8    # "packageName":Ljava/lang/String;
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "policy":Ljava/lang/String;
    :cond_3
    :try_start_8
    iget-object v11, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 492
    :catch_4
    move-exception v3

    .line 493
    .local v3, "e":Ljava/lang/NumberFormatException;
    :try_start_9
    const-string/jumbo v11, "SmsUsageMonitor"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Error: non-numeric policy type "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 503
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "element":Ljava/lang/String;
    .end local v7    # "infile":Ljava/io/FileInputStream;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "policy":Ljava/lang/String;
    :catch_5
    move-exception v3

    .line 504
    .restart local v3    # "e":Ljava/lang/NumberFormatException;
    :try_start_a
    const-string/jumbo v11, "SmsUsageMonitor"

    const-string/jumbo v13, "Unable to parse premium SMS policy database"

    invoke-static {v11, v13, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 508
    if-eqz v7, :cond_0

    .line 510
    :try_start_b
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_1

    .line 511
    :catch_6
    move-exception v6

    .restart local v6    # "ignored":Ljava/io/IOException;
    goto/16 :goto_1

    .line 496
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "ignored":Ljava/io/IOException;
    .restart local v5    # "element":Ljava/lang/String;
    .restart local v7    # "infile":Ljava/io/FileInputStream;
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_4
    :try_start_c
    const-string/jumbo v11, "SmsUsageMonitor"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Error: skipping unknown XML tag "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    .line 505
    .end local v5    # "element":Ljava/lang/String;
    .end local v7    # "infile":Ljava/io/FileInputStream;
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_7
    move-exception v4

    .line 506
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_d
    const-string/jumbo v11, "SmsUsageMonitor"

    const-string/jumbo v13, "Unable to parse premium SMS policy database"

    invoke-static {v11, v13, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 508
    if-eqz v7, :cond_0

    .line 510
    :try_start_e
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_1

    .line 511
    :catch_8
    move-exception v6

    .restart local v6    # "ignored":Ljava/io/IOException;
    goto/16 :goto_1

    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v6    # "ignored":Ljava/io/IOException;
    .restart local v5    # "element":Ljava/lang/String;
    .restart local v7    # "infile":Ljava/io/FileInputStream;
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_9
    move-exception v6

    .restart local v6    # "ignored":Ljava/io/IOException;
    goto/16 :goto_1

    .line 507
    .end local v5    # "element":Ljava/lang/String;
    .end local v6    # "ignored":Ljava/io/IOException;
    .end local v7    # "infile":Ljava/io/FileInputStream;
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v11

    .line 508
    if-eqz v7, :cond_5

    .line 510
    :try_start_f
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 507
    :cond_5
    :goto_2
    :try_start_10
    throw v11
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 462
    .end local v0    # "dir":Ljava/io/File;
    :catchall_1
    move-exception v11

    monitor-exit v12

    throw v11

    .line 511
    .restart local v0    # "dir":Ljava/io/File;
    :catch_a
    move-exception v6

    .restart local v6    # "ignored":Ljava/io/IOException;
    goto :goto_2
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 672
    const-string/jumbo v0, "SmsUsageMonitor"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    return-void
.end method

.method public static mergeShortCodeCategories(II)I
    .locals 0
    .param p0, "type1"    # I
    .param p1, "type2"    # I

    .prologue
    .line 103
    if-le p0, p1, :cond_0

    return p0

    .line 104
    :cond_0
    return p1
.end method

.method private removeExpiredTimestamps()V
    .locals 10

    .prologue
    .line 638
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCheckPeriod:I

    int-to-long v8, v5

    sub-long v0, v6, v8

    .line 640
    .local v0, "beginCheckPeriod":J
    iget-object v6, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsStamp:Ljava/util/HashMap;

    monitor-enter v6

    .line 641
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsStamp:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 642
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Long;>;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 643
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 644
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 645
    .local v4, "oldList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v5, v8, v0

    if-gez v5, :cond_0

    .line 646
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 640
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Long;>;>;>;"
    .end local v4    # "oldList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .restart local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Long;>;>;>;"
    :cond_2
    monitor-exit v6

    .line 637
    return-void
.end method

.method private writePremiumSmsPolicyDb()V
    .locals 9

    .prologue
    .line 524
    iget-object v6, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    monitor-enter v6

    .line 525
    const/4 v2, 0x0

    .line 527
    .local v2, "outfile":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 529
    .local v2, "outfile":Ljava/io/FileOutputStream;
    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 530
    .local v1, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 532
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v7, 0x0

    invoke-interface {v1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 534
    const-string/jumbo v5, "premium-sms-policy"

    const/4 v7, 0x0

    invoke-interface {v1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 536
    iget-object v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "policy$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 537
    .local v3, "policy":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string/jumbo v5, "package"

    const/4 v7, 0x0

    invoke-interface {v1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 538
    const-string/jumbo v7, "name"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface {v1, v8, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 539
    const-string/jumbo v7, "sms-policy"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-interface {v1, v8, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 540
    const-string/jumbo v5, "package"

    const/4 v7, 0x0

    invoke-interface {v1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 547
    .end local v1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v2    # "outfile":Ljava/io/FileOutputStream;
    .end local v3    # "policy":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "policy$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 548
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v5, "SmsUsageMonitor"

    const-string/jumbo v7, "Unable to write premium SMS policy database"

    invoke-static {v5, v7, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 549
    if-eqz v2, :cond_0

    .line 550
    iget-object v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    monitor-exit v6

    .line 523
    return-void

    .line 543
    .restart local v1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v2    # "outfile":Ljava/io/FileOutputStream;
    .restart local v4    # "policy$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_2
    const-string/jumbo v5, "premium-sms-policy"

    const/4 v7, 0x0

    invoke-interface {v1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 544
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 546
    iget-object v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 524
    .end local v1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v2    # "outfile":Ljava/io/FileOutputStream;
    .end local v4    # "policy$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method


# virtual methods
.method public check(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "smsWaiting"    # I

    .prologue
    .line 382
    const-string/jumbo v1, "com.android.mms"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 383
    const-string/jumbo v1, "com.lenovo.ideafriend"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 382
    if-eqz v1, :cond_1

    .line 384
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 389
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsStamp:Ljava/util/HashMap;

    monitor-enter v2

    .line 390
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsUsageMonitor;->removeExpiredTimestamps()V

    .line 392
    iget-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsStamp:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 393
    .local v0, "sentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-nez v0, :cond_2

    .line 394
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "sentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 395
    .restart local v0    # "sentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsStamp:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    :cond_2
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/SmsUsageMonitor;->isUnderLimit(Ljava/util/ArrayList;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    .line 389
    .end local v0    # "sentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public checkDestination(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "destAddress"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 417
    iget-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSettingsObserverHandler:Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserverHandler;

    monitor-enter v1

    .line 419
    :try_start_0
    invoke-static {p1, p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    const-string/jumbo v0, "SmsUsageMonitor"

    const-string/jumbo v2, "isEmergencyNumber"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 421
    return v6

    .line 424
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCheckEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 425
    const-string/jumbo v0, "SmsUsageMonitor"

    const-string/jumbo v2, "check disabled"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 426
    return v6

    .line 429
    :cond_1
    if-eqz p2, :cond_3

    .line 430
    :try_start_2
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCurrentCountry:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCurrentCountry:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 431
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFileLastModified:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    .line 432
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 433
    const-string/jumbo v0, "SmsUsageMonitor"

    const-string/jumbo v2, "Loading SMS Short Code patterns from file"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPatternMatcherFromFile(Ljava/lang/String;)Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCurrentPatternMatcher:Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

    .line 439
    :goto_0
    iput-object p2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCurrentCountry:Ljava/lang/String;

    .line 443
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCurrentPatternMatcher:Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

    if-eqz v0, :cond_5

    .line 444
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCurrentPatternMatcher:Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->getNumberCategory(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 436
    :cond_4
    :try_start_3
    const-string/jumbo v0, "SmsUsageMonitor"

    const-string/jumbo v2, "Loading SMS Short Code patterns from resource"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPatternMatcherFromResource(Ljava/lang/String;)Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCurrentPatternMatcher:Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 417
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 447
    :cond_5
    :try_start_4
    const-string/jumbo v0, "SmsUsageMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No patterns for \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\": using generic short code rule"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    const/4 v2, 0x5

    if-gt v0, v2, :cond_6

    .line 449
    const/4 v0, 0x3

    monitor-exit v1

    return v0

    :cond_6
    monitor-exit v1

    .line 451
    return v6
.end method

.method dispose()V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsStamp:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 365
    return-void
.end method

.method public getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 568
    invoke-static {p1}, Lcom/android/internal/telephony/SmsUsageMonitor;->checkCallerIsSystemOrPhoneOrSameApp(Ljava/lang/String;)V

    .line 569
    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    monitor-enter v2

    .line 570
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    .local v0, "policy":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 572
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    .line 574
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    .line 569
    .end local v0    # "policy":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setPremiumSmsPermission(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # I

    .prologue
    .line 589
    invoke-static {}, Lcom/android/internal/telephony/SmsUsageMonitor;->checkCallerIsSystemOrPhoneApp()V

    .line 590
    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    .line 591
    const/4 v0, 0x3

    if-le p2, v0, :cond_1

    .line 592
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid SMS permission type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 594
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    monitor-enter v1

    .line 595
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 598
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/telephony/SmsUsageMonitor$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/SmsUsageMonitor$1;-><init>(Lcom/android/internal/telephony/SmsUsageMonitor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 588
    return-void

    .line 594
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
