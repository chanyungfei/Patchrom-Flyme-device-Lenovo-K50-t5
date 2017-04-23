.class Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;
.super Ljava/lang/Object;
.source "AppPcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SendOrderedBroadcastAsUserParam"
.end annotation


# instance fields
.field private mInitialCode:I

.field private mInitialData:Ljava/lang/String;

.field private mInitialExtras:Landroid/os/Bundle;

.field private mIntent:Landroid/content/Intent;

.field private mReceiverPermission:Ljava/lang/String;

.field private mResultCallback:Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;

.field private mUser:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 2264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2265
    iput-object p1, p0, Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->mIntent:Landroid/content/Intent;

    .line 2266
    iput-object p2, p0, Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->mUser:Landroid/os/UserHandle;

    .line 2267
    iput-object p3, p0, Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->mReceiverPermission:Ljava/lang/String;

    .line 2268
    iput-object p4, p0, Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->mResultCallback:Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;

    .line 2269
    iput p5, p0, Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->mInitialCode:I

    .line 2270
    iput-object p6, p0, Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->mInitialData:Ljava/lang/String;

    .line 2271
    iput-object p7, p0, Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->mInitialExtras:Landroid/os/Bundle;

    .line 2272
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 2254
    iget-object v0, p0, Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->mInitialExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;)Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;
    .locals 1

    .prologue
    .line 2254
    iget-object v0, p0, Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->mResultCallback:Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 2254
    iget-object v0, p0, Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;)Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 2254
    iget-object v0, p0, Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2254
    iget-object v0, p0, Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->mReceiverPermission:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;)I
    .locals 1

    .prologue
    .line 2254
    iget v0, p0, Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->mInitialCode:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2254
    iget-object v0, p0, Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->mInitialData:Ljava/lang/String;

    return-object v0
.end method
