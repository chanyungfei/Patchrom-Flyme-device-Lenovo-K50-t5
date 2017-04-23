.class Lcom/android/server/am/AppPcService$FirewallRuleSet;
.super Ljava/lang/Object;
.source "AppPcService.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FirewallRuleSet"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/server/am/AppPcService$FirewallRuleSet;",
            ">;"
        }
    .end annotation
.end field

.field public static final RULE_TAG:Ljava/lang/String; = "#"


# instance fields
.field public mobileRule:Lcom/android/server/am/AppPcService$FirewallRule;

.field public wifiRule:Lcom/android/server/am/AppPcService$FirewallRule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2491
    new-instance v0, Lcom/android/server/am/AppPcService$FirewallRuleSet$1;

    invoke-direct {v0}, Lcom/android/server/am/AppPcService$FirewallRuleSet$1;-><init>()V

    sput-object v0, Lcom/android/server/am/AppPcService$FirewallRuleSet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 2431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2432
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/AppPcService$FirewallRule;->parse(I)Lcom/android/server/am/AppPcService$FirewallRule;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/AppPcService$FirewallRuleSet;->mobileRule:Lcom/android/server/am/AppPcService$FirewallRule;

    .line 2433
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/AppPcService$FirewallRule;->parse(I)Lcom/android/server/am/AppPcService$FirewallRule;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/AppPcService$FirewallRuleSet;->wifiRule:Lcom/android/server/am/AppPcService$FirewallRule;

    .line 2434
    return-void
.end method

.method public static defaultValue()Lcom/android/server/am/AppPcService$FirewallRuleSet;
    .locals 2

    .prologue
    .line 2437
    new-instance v0, Lcom/android/server/am/AppPcService$FirewallRuleSet;

    invoke-direct {v0}, Lcom/android/server/am/AppPcService$FirewallRuleSet;-><init>()V

    .line 2438
    sget-object v1, Lcom/android/server/am/AppPcService$FirewallRule;->Allow:Lcom/android/server/am/AppPcService$FirewallRule;

    iput-object v1, v0, Lcom/android/server/am/AppPcService$FirewallRuleSet;->mobileRule:Lcom/android/server/am/AppPcService$FirewallRule;

    .line 2439
    sget-object v1, Lcom/android/server/am/AppPcService$FirewallRule;->Allow:Lcom/android/server/am/AppPcService$FirewallRule;

    iput-object v1, v0, Lcom/android/server/am/AppPcService$FirewallRuleSet;->wifiRule:Lcom/android/server/am/AppPcService$FirewallRule;

    .line 2440
    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/android/server/am/AppPcService$FirewallRuleSet;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2444
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    const-string/jumbo v0, "#"

    .line 2448
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2449
    new-instance v1, Lcom/android/server/am/AppPcService$FirewallRuleSet;

    invoke-direct {v1}, Lcom/android/server/am/AppPcService$FirewallRuleSet;-><init>()V

    const/4 v2, 0x0

    .line 2450
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/android/server/am/AppPcService$FirewallRule;->parse(I)Lcom/android/server/am/AppPcService$FirewallRule;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/am/AppPcService$FirewallRuleSet;->mobileRule:Lcom/android/server/am/AppPcService$FirewallRule;

    const/4 v2, 0x1

    .line 2451
    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/AppPcService$FirewallRule;->parse(I)Lcom/android/server/am/AppPcService$FirewallRule;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/am/AppPcService$FirewallRuleSet;->wifiRule:Lcom/android/server/am/AppPcService$FirewallRule;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2452
    return-object v1

    .line 2445
    :cond_0
    return-object v3

    .line 2452
    :catch_0
    move-exception v0

    .line 2454
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2456
    return-object v3
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2482
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2470
    instance-of v0, p1, Lcom/android/server/am/AppPcService$FirewallRuleSet;

    if-nez v0, :cond_1

    .line 2477
    :cond_0
    return v2

    .line 2471
    :cond_1
    check-cast p1, Lcom/android/server/am/AppPcService$FirewallRuleSet;

    .line 2472
    iget-object v0, p1, Lcom/android/server/am/AppPcService$FirewallRuleSet;->mobileRule:Lcom/android/server/am/AppPcService$FirewallRule;

    iget-object v1, p0, Lcom/android/server/am/AppPcService$FirewallRuleSet;->mobileRule:Lcom/android/server/am/AppPcService$FirewallRule;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/server/am/AppPcService$FirewallRuleSet;->wifiRule:Lcom/android/server/am/AppPcService$FirewallRule;

    iget-object v1, p0, Lcom/android/server/am/AppPcService$FirewallRuleSet;->wifiRule:Lcom/android/server/am/AppPcService$FirewallRule;

    if-ne v0, v1, :cond_0

    .line 2474
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2462
    iget-object v1, p0, Lcom/android/server/am/AppPcService$FirewallRuleSet;->mobileRule:Lcom/android/server/am/AppPcService$FirewallRule;

    invoke-virtual {v1}, Lcom/android/server/am/AppPcService$FirewallRule;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppPcService$FirewallRuleSet;->wifiRule:Lcom/android/server/am/AppPcService$FirewallRule;

    invoke-virtual {v2}, Lcom/android/server/am/AppPcService$FirewallRule;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2465
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 2487
    iget-object v0, p0, Lcom/android/server/am/AppPcService$FirewallRuleSet;->mobileRule:Lcom/android/server/am/AppPcService$FirewallRule;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/AppPcService$FirewallRule;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2488
    iget-object v0, p0, Lcom/android/server/am/AppPcService$FirewallRuleSet;->wifiRule:Lcom/android/server/am/AppPcService$FirewallRule;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/AppPcService$FirewallRule;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2489
    return-void
.end method
