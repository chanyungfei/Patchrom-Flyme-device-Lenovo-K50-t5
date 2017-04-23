.class Lcom/android/server/audio/AudioService$Parameter;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Parameter"
.end annotation


# instance fields
.field public mAddress:Ljava/lang/String;

.field public mDevice:I

.field public mDeviceName:Ljava/lang/String;

.field public mState:I

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;
    .param p2, "state"    # I
    .param p3, "device"    # I
    .param p4, "address"    # Ljava/lang/String;
    .param p5, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 1507
    iput-object p1, p0, Lcom/android/server/audio/AudioService$Parameter;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1508
    iput p2, p0, Lcom/android/server/audio/AudioService$Parameter;->mState:I

    .line 1509
    iput p3, p0, Lcom/android/server/audio/AudioService$Parameter;->mDevice:I

    .line 1510
    iput-object p4, p0, Lcom/android/server/audio/AudioService$Parameter;->mAddress:Ljava/lang/String;

    .line 1511
    iput-object p5, p0, Lcom/android/server/audio/AudioService$Parameter;->mDeviceName:Ljava/lang/String;

    .line 1507
    return-void
.end method
