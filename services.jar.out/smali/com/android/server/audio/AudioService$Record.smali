.class Lcom/android/server/audio/AudioService$Record;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Record"
.end annotation


# instance fields
.field mBinder:Landroid/os/IBinder;

.field mCallback:Lcom/mediatek/common/audioprofile/IAudioProfileListener;

.field mEvent:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6805
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService$Record;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$Record;-><init>()V

    return-void
.end method
