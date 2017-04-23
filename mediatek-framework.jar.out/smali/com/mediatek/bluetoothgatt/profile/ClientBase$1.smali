.class Lcom/mediatek/bluetoothgatt/profile/ClientBase$1;
.super Ljava/lang/Object;
.source "ClientBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetoothgatt/profile/ClientBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetoothgatt/profile/ClientBase;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetoothgatt/profile/ClientBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/bluetoothgatt/profile/ClientBase;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase$1;->this$0:Lcom/mediatek/bluetoothgatt/profile/ClientBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase$1;->this$0:Lcom/mediatek/bluetoothgatt/profile/ClientBase;

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->-get0(Lcom/mediatek/bluetoothgatt/profile/ClientBase;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    .line 73
    return-void
.end method
