.class final Landroid/app/SystemServiceRegistry$18;
.super Landroid/app/SystemServiceRegistry$StaticServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$StaticServiceFetcher",
        "<",
        "Landroid/os/BatteryManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 323
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService()Landroid/os/BatteryManager;
    .locals 1

    .prologue
    .line 326
    new-instance v0, Landroid/os/BatteryManager;

    invoke-direct {v0}, Landroid/os/BatteryManager;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createService()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 325
    invoke-virtual {p0}, Landroid/app/SystemServiceRegistry$18;->createService()Landroid/os/BatteryManager;

    move-result-object v0

    return-object v0
.end method
