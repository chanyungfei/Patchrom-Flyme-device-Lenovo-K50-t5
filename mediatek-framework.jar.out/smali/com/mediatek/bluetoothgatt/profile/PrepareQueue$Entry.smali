.class Lcom/mediatek/bluetoothgatt/profile/PrepareQueue$Entry;
.super Ljava/lang/Object;
.source "PrepareQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetoothgatt/profile/PrepareQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Entry"
.end annotation


# instance fields
.field public isDescriptor:Z

.field public obj:Ljava/lang/Object;

.field public offset:I

.field final synthetic this$0:Lcom/mediatek/bluetoothgatt/profile/PrepareQueue;

.field public value:[B


# direct methods
.method constructor <init>(Lcom/mediatek/bluetoothgatt/profile/PrepareQueue;Ljava/lang/Object;I[BZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/bluetoothgatt/profile/PrepareQueue;
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "offset"    # I
    .param p4, "value"    # [B
    .param p5, "isDescriptor"    # Z

    .prologue
    .line 57
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/profile/PrepareQueue$Entry;->this$0:Lcom/mediatek/bluetoothgatt/profile/PrepareQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p2, p0, Lcom/mediatek/bluetoothgatt/profile/PrepareQueue$Entry;->obj:Ljava/lang/Object;

    .line 59
    iput p3, p0, Lcom/mediatek/bluetoothgatt/profile/PrepareQueue$Entry;->offset:I

    .line 60
    iput-object p4, p0, Lcom/mediatek/bluetoothgatt/profile/PrepareQueue$Entry;->value:[B

    .line 61
    iput-boolean p5, p0, Lcom/mediatek/bluetoothgatt/profile/PrepareQueue$Entry;->isDescriptor:Z

    .line 57
    return-void
.end method
