.class public Lcom/mediatek/bluetoothgatt/Build;
.super Ljava/lang/Object;
.source "Build.java"


# static fields
.field public static final SDK_VERSION:Ljava/lang/String; = "1.0.1"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/mediatek/bluetoothgatt/Build;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetoothgatt/Build;->TAG:Ljava/lang/String;

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
