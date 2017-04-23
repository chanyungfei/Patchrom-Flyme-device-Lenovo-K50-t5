.class Lcom/mediatek/mom/MessageInterceptController;
.super Lcom/mediatek/mom/ControllerBase;
.source "MessageInterceptController.java"


# static fields
.field private static final DBG:Z = true

.field public static final NAME:Ljava/lang/String; = "MessageInterceptController"

.field private static final TAG:Ljava/lang/String; = "MoMS.MessageInterceptController"

.field private static mInstance:Lcom/mediatek/mom/ControllerBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    sput-object v0, Lcom/mediatek/mom/MessageInterceptController;->mInstance:Lcom/mediatek/mom/ControllerBase;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/mediatek/mom/ControllerBase;-><init>()V

    .line 59
    return-void
.end method

.method private clearNotificationSettings()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public static final getInstance()Lcom/mediatek/mom/ControllerBase;
    .locals 3

    .prologue
    .line 66
    sget-object v0, Lcom/mediatek/mom/MessageInterceptController;->mInstance:Lcom/mediatek/mom/ControllerBase;

    if-eqz v0, :cond_0

    .line 70
    :goto_0
    sget-object v0, Lcom/mediatek/mom/MessageInterceptController;->mInstance:Lcom/mediatek/mom/ControllerBase;

    return-object v0

    .line 67
    :cond_0
    new-instance v0, Lcom/mediatek/mom/MessageInterceptController;

    invoke-direct {v0}, Lcom/mediatek/mom/MessageInterceptController;-><init>()V

    sput-object v0, Lcom/mediatek/mom/MessageInterceptController;->mInstance:Lcom/mediatek/mom/ControllerBase;

    .line 68
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "Create MessageInterceptController: MessageInterceptController"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_0
.end method


# virtual methods
.method public systemReady(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 78
    return-void
.end method
