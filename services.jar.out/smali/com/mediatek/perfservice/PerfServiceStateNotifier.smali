.class public final Lcom/mediatek/perfservice/PerfServiceStateNotifier;
.super Ljava/lang/Object;
.source "PerfServiceStateNotifier.java"

# interfaces
.implements Lcom/android/server/am/IActivityStateNotifier;


# static fields
.field private static synthetic -com_android_server_am_IActivityStateNotifier$ActivityStateSwitchesValues:[I = null

.field static final TAG:Ljava/lang/String; = "PerfServiceStateNotifier"


# instance fields
.field mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;


# direct methods
.method private static synthetic -getcom_android_server_am_IActivityStateNotifier$ActivityStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/mediatek/perfservice/PerfServiceStateNotifier;->-com_android_server_am_IActivityStateNotifier$ActivityStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mediatek/perfservice/PerfServiceStateNotifier;->-com_android_server_am_IActivityStateNotifier$ActivityStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/server/am/IActivityStateNotifier$ActivityState;->values()[Lcom/android/server/am/IActivityStateNotifier$ActivityState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/server/am/IActivityStateNotifier$ActivityState;->Destroyed:Lcom/android/server/am/IActivityStateNotifier$ActivityState;

    invoke-virtual {v1}, Lcom/android/server/am/IActivityStateNotifier$ActivityState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/server/am/IActivityStateNotifier$ActivityState;->Paused:Lcom/android/server/am/IActivityStateNotifier$ActivityState;

    invoke-virtual {v1}, Lcom/android/server/am/IActivityStateNotifier$ActivityState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/server/am/IActivityStateNotifier$ActivityState;->Resumed:Lcom/android/server/am/IActivityStateNotifier$ActivityState;

    invoke-virtual {v1}, Lcom/android/server/am/IActivityStateNotifier$ActivityState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/server/am/IActivityStateNotifier$ActivityState;->Stopped:Lcom/android/server/am/IActivityStateNotifier$ActivityState;

    invoke-virtual {v1}, Lcom/android/server/am/IActivityStateNotifier$ActivityState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/mediatek/perfservice/PerfServiceStateNotifier;->-com_android_server_am_IActivityStateNotifier$ActivityStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/mediatek/perfservice/PerfServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/perfservice/PerfServiceStateNotifier;->mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;

    .line 47
    return-void
.end method


# virtual methods
.method public notifyActivityState(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/am/IActivityStateNotifier$ActivityState;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "actState"    # Lcom/android/server/am/IActivityStateNotifier$ActivityState;

    .prologue
    .line 58
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceStateNotifier;->-getcom_android_server_am_IActivityStateNotifier$ActivityStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p4}, Lcom/android/server/am/IActivityStateNotifier$ActivityState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 72
    return-void

    .line 60
    :pswitch_0
    const/4 v0, 0x0

    .line 74
    .local v0, "state":I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceStateNotifier;->mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;

    invoke-interface {v1, p1, p3, v0, p2}, Lcom/mediatek/perfservice/IPerfServiceWrapper;->notifyAppState(Ljava/lang/String;Ljava/lang/String;II)V

    .line 54
    return-void

    .line 63
    .end local v0    # "state":I
    :pswitch_1
    const/4 v0, 0x1

    .line 64
    .restart local v0    # "state":I
    goto :goto_0

    .line 66
    .end local v0    # "state":I
    :pswitch_2
    const/4 v0, 0x2

    .line 67
    .restart local v0    # "state":I
    goto :goto_0

    .line 69
    .end local v0    # "state":I
    :pswitch_3
    const/4 v0, 0x4

    .line 70
    .restart local v0    # "state":I
    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public notifyAppDied(ILjava/util/HashSet;)V
    .locals 5
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p2, "packageList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 83
    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 85
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/perfservice/PerfServiceStateNotifier;->mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-interface {v2, v1, v3, v4, p1}, Lcom/mediatek/perfservice/IPerfServiceWrapper;->notifyAppState(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 80
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    return-void
.end method
