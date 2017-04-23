.class Lcom/mediatek/mom/CallInterceptionController;
.super Lcom/mediatek/mom/ControllerBase;
.source "CallInterceptionController.java"


# static fields
.field private static final DBG:Z = true

.field public static final NAME:Ljava/lang/String; = "CallInterceptionController"

.field private static final TAG:Ljava/lang/String; = "MoMS.CallInterceptionController"

.field private static mInstance:Lcom/mediatek/mom/ControllerBase;


# instance fields
.field private mBlockedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    sput-object v0, Lcom/mediatek/mom/CallInterceptionController;->mInstance:Lcom/mediatek/mom/ControllerBase;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/mom/ControllerBase;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mom/CallInterceptionController;->mBlockedPackages:Ljava/util/HashSet;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/mom/CallInterceptionController;->mSystemReady:Z

    .line 63
    return-void
.end method

.method public static final getInstance()Lcom/mediatek/mom/ControllerBase;
    .locals 3

    .prologue
    .line 68
    sget-object v0, Lcom/mediatek/mom/CallInterceptionController;->mInstance:Lcom/mediatek/mom/ControllerBase;

    if-eqz v0, :cond_0

    .line 72
    :goto_0
    sget-object v0, Lcom/mediatek/mom/CallInterceptionController;->mInstance:Lcom/mediatek/mom/ControllerBase;

    return-object v0

    .line 69
    :cond_0
    new-instance v0, Lcom/mediatek/mom/CallInterceptionController;

    invoke-direct {v0}, Lcom/mediatek/mom/CallInterceptionController;-><init>()V

    sput-object v0, Lcom/mediatek/mom/CallInterceptionController;->mInstance:Lcom/mediatek/mom/ControllerBase;

    .line 70
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "Create MobileManagerController: CallInterceptionController"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_0
.end method


# virtual methods
.method public enableController(Z)V
    .locals 3

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/mediatek/mom/ControllerBase;->enableController(Z)V

    const-string/jumbo v0, "MoMS.CallInterceptionController"

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enableController() enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p0}, Lcom/mediatek/mom/CallInterceptionController;->getManagerApListener()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    .line 90
    if-ne p1, v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Enable call interception controller without register listener!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public systemReady(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/mom/CallInterceptionController;->mSystemReady:Z

    .line 78
    return-void
.end method
