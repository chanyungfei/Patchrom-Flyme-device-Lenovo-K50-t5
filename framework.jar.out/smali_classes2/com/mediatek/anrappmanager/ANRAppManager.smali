.class public final Lcom/mediatek/anrappmanager/ANRAppManager;
.super Ljava/lang/Object;
.source "ANRAppManager.java"


# static fields
.field private static SingletonLogger:Lcom/mediatek/anrappmanager/MessageLogger; = null

.field static final TAG:Ljava/lang/String; = "ANRAppManager"

.field private static mFramework:Lcom/mediatek/anrappmanager/IFrameworks;

.field private static sInstance:Lcom/mediatek/anrappmanager/ANRAppManager;

.field protected static sMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mediatek/anrappmanager/MessageLogger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/anrappmanager/ANRAppManager;->sMap:Ljava/util/HashMap;

    .line 24
    sput-object v1, Lcom/mediatek/anrappmanager/ANRAppManager;->sInstance:Lcom/mediatek/anrappmanager/ANRAppManager;

    .line 25
    sput-object v1, Lcom/mediatek/anrappmanager/ANRAppManager;->SingletonLogger:Lcom/mediatek/anrappmanager/MessageLogger;

    .line 26
    sput-object v1, Lcom/mediatek/anrappmanager/ANRAppManager;->mFramework:Lcom/mediatek/anrappmanager/IFrameworks;

    return-void
.end method

.method private constructor <init>(Lcom/mediatek/anrappmanager/IFrameworks;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sput-object p1, Lcom/mediatek/anrappmanager/ANRAppManager;->mFramework:Lcom/mediatek/anrappmanager/IFrameworks;

    .line 30
    return-void
.end method

.method public static dumpAllMessageHistory()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 71
    sget-object v0, Lcom/mediatek/anrappmanager/ANRAppManager;->SingletonLogger:Lcom/mediatek/anrappmanager/MessageLogger;

    if-nez v0, :cond_0

    .line 80
    sget-object v0, Lcom/mediatek/anrappmanager/ANRAppManager;->sMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 89
    sget-object v0, Lcom/mediatek/anrappmanager/ANRAppManager;->sMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 90
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 96
    return-void

    :cond_0
    const-string/jumbo v0, "ANRAppManager"

    const-string/jumbo v1, "!!! It is under multiple instance mode, but you are in singleton usage style. !!!\n"

    .line 72
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :try_start_0
    sget-object v0, Lcom/mediatek/anrappmanager/ANRAppManager;->mFramework:Lcom/mediatek/anrappmanager/IFrameworks;

    invoke-static {v0}, Lcom/mediatek/anrappmanager/ANRManagerNative;->getDefault(Lcom/mediatek/anrappmanager/IFrameworks;)Lcom/mediatek/anrappmanager/IANRManager;

    move-result-object v0

    const-string/jumbo v1, "!!! It is under multiple instance mode, but you are in singleton usage style. !!!\n"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/mediatek/anrappmanager/IANRManager;->informMessageDump(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_1
    return-void

    .line 77
    :catch_0
    move-exception v0

    const-string/jumbo v1, "ANRAppManager"

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "informMessageDump exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "ANRAppManager"

    const-string/jumbo v1, "!!! DumpAll, sMap is null\n"

    .line 81
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :try_start_1
    sget-object v0, Lcom/mediatek/anrappmanager/ANRAppManager;->mFramework:Lcom/mediatek/anrappmanager/IFrameworks;

    invoke-static {v0}, Lcom/mediatek/anrappmanager/ANRManagerNative;->getDefault(Lcom/mediatek/anrappmanager/IFrameworks;)Lcom/mediatek/anrappmanager/IANRManager;

    move-result-object v0

    const-string/jumbo v1, "!!! DumpAll, sMap is null\n"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/mediatek/anrappmanager/IANRManager;->informMessageDump(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    :goto_2
    return-void

    .line 86
    :catch_1
    move-exception v0

    const-string/jumbo v1, "ANRAppManager"

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "informMessageDump exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 91
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "ANRAppManager"

    const-string/jumbo v3, ">>> DumpByName, Thread name: %s dump is starting <<<\n"

    .line 92
    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget-object v1, Lcom/mediatek/anrappmanager/ANRAppManager;->sMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/anrappmanager/MessageLogger;

    const-string/jumbo v3, ">>> DumpByName, Thread name: %s dump is starting <<<\n"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mediatek/anrappmanager/MessageLogger;->setInitStr(Ljava/lang/String;)V

    .line 94
    sget-object v1, Lcom/mediatek/anrappmanager/ANRAppManager;->sMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/anrappmanager/MessageLogger;

    invoke-virtual {v0}, Lcom/mediatek/anrappmanager/MessageLogger;->dump()V

    goto/16 :goto_0
.end method

.method public static dumpMessageHistory()V
    .locals 4

    .prologue
    .line 56
    sget-object v0, Lcom/mediatek/anrappmanager/ANRAppManager;->SingletonLogger:Lcom/mediatek/anrappmanager/MessageLogger;

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lcom/mediatek/anrappmanager/ANRAppManager;->SingletonLogger:Lcom/mediatek/anrappmanager/MessageLogger;

    invoke-virtual {v0}, Lcom/mediatek/anrappmanager/MessageLogger;->dump()V

    .line 66
    return-void

    :cond_0
    const-string/jumbo v0, "ANRAppManager"

    const-string/jumbo v1, "!!! It is not under singleton mode, U can\'t use it. !!!\n"

    .line 57
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :try_start_0
    sget-object v0, Lcom/mediatek/anrappmanager/ANRAppManager;->mFramework:Lcom/mediatek/anrappmanager/IFrameworks;

    invoke-static {v0}, Lcom/mediatek/anrappmanager/ANRManagerNative;->getDefault(Lcom/mediatek/anrappmanager/IFrameworks;)Lcom/mediatek/anrappmanager/IANRManager;

    move-result-object v0

    const-string/jumbo v1, "!!! It is not under singleton mode, U can\'t use it. !!!\n"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/mediatek/anrappmanager/IANRManager;->informMessageDump(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    const-string/jumbo v1, "ANRAppManager"

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "informMessageDump exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getDefault(Lcom/mediatek/anrappmanager/IFrameworks;)Lcom/mediatek/anrappmanager/ANRAppManager;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/mediatek/anrappmanager/ANRAppManager;->sInstance:Lcom/mediatek/anrappmanager/ANRAppManager;

    if-eqz v0, :cond_0

    .line 35
    :goto_0
    sget-object v0, Lcom/mediatek/anrappmanager/ANRAppManager;->sInstance:Lcom/mediatek/anrappmanager/ANRAppManager;

    return-object v0

    .line 34
    :cond_0
    new-instance v0, Lcom/mediatek/anrappmanager/ANRAppManager;

    invoke-direct {v0, p0}, Lcom/mediatek/anrappmanager/ANRAppManager;-><init>(Lcom/mediatek/anrappmanager/IFrameworks;)V

    sput-object v0, Lcom/mediatek/anrappmanager/ANRAppManager;->sInstance:Lcom/mediatek/anrappmanager/ANRAppManager;

    goto :goto_0
.end method


# virtual methods
.method public newMessageLogger(Z)Landroid/util/Printer;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/mediatek/anrappmanager/MessageLogger;

    sget-object v1, Lcom/mediatek/anrappmanager/ANRAppManager;->mFramework:Lcom/mediatek/anrappmanager/IFrameworks;

    invoke-direct {v0, p1, v1}, Lcom/mediatek/anrappmanager/MessageLogger;-><init>(ZLcom/mediatek/anrappmanager/IFrameworks;)V

    sput-object v0, Lcom/mediatek/anrappmanager/ANRAppManager;->SingletonLogger:Lcom/mediatek/anrappmanager/MessageLogger;

    .line 41
    sget-object v0, Lcom/mediatek/anrappmanager/ANRAppManager;->SingletonLogger:Lcom/mediatek/anrappmanager/MessageLogger;

    return-object v0
.end method

.method public newMessageLogger(ZLjava/lang/String;)Landroid/util/Printer;
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lcom/mediatek/anrappmanager/ANRAppManager;->sMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    :goto_0
    new-instance v0, Lcom/mediatek/anrappmanager/MessageLogger;

    sget-object v1, Lcom/mediatek/anrappmanager/ANRAppManager;->mFramework:Lcom/mediatek/anrappmanager/IFrameworks;

    invoke-direct {v0, p1, p2, v1}, Lcom/mediatek/anrappmanager/MessageLogger;-><init>(ZLjava/lang/String;Lcom/mediatek/anrappmanager/IFrameworks;)V

    .line 49
    sget-object v1, Lcom/mediatek/anrappmanager/ANRAppManager;->sMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-object v0

    .line 47
    :cond_0
    sget-object v0, Lcom/mediatek/anrappmanager/ANRAppManager;->sMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
