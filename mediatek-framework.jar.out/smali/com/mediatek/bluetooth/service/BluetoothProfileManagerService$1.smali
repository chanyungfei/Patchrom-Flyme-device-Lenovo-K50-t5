.class Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothProfileManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService$1;->this$0:Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v6, 0xe

    .line 98
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "action":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "action:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->-wrap0(Ljava/lang/String;)V

    .line 100
    const-string/jumbo v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 101
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    const-string/jumbo v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 102
    const-string/jumbo v4, "android.bluetooth.adapter.extra.STATE"

    const/high16 v5, -0x80000000

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 103
    .local v3, "state":I
    packed-switch v3, :pswitch_data_0

    .line 97
    .end local v3    # "state":I
    :cond_0
    :goto_0
    return-void

    .line 105
    .restart local v3    # "state":I
    :pswitch_0
    iget-object v4, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService$1;->this$0:Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;

    invoke-static {v4}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->-wrap2(Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;)V

    goto :goto_0

    .line 108
    :pswitch_1
    iget-object v4, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService$1;->this$0:Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;

    invoke-static {v4}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->-wrap1(Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;)V

    goto :goto_0

    .line 114
    .end local v3    # "state":I
    :cond_1
    const-string/jumbo v4, "android.bluetooth.profilemanager.action.PROFILE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 115
    const-string/jumbo v4, "android.bluetooth.profilemanager.extra.PROFILE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    .line 116
    .local v2, "profile":Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;
    const-string/jumbo v4, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 118
    .restart local v3    # "state":I
    iget-object v4, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService$1;->this$0:Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;

    invoke-static {v4, v2, v3}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->-wrap3(Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;I)V

    goto :goto_0

    .line 119
    .end local v2    # "profile":Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;
    .end local v3    # "state":I
    :cond_2
    const-string/jumbo v4, "android.bluetooth.profilemanager.action.STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 120
    const-string/jumbo v4, "android.bluetooth.profilemanager.extra.PROFILE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    .line 121
    .restart local v2    # "profile":Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;
    const-string/jumbo v4, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 123
    .restart local v3    # "state":I
    iget-object v4, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService$1;->this$0:Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;

    invoke-static {v4, v2, v3}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->-wrap4(Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;I)V

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
