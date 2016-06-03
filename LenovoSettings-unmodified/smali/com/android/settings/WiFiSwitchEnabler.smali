.class public final Lcom/android/settings/WiFiSwitchEnabler;
.super Ljava/lang/Object;
.source "WiFiSwitchEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final DEBUG:Z = true

.field public static final EXTRA_WIFI_SWITCH_STATE:Ljava/lang/String; = "wifi_switch_state"

.field private static final TAG:Ljava/lang/String; = "WiFiSwitchEnabler"

.field public static final WIFI_SWITCH_SETTING:Ljava/lang/String; = "wifi_switch_setting"

.field public static final WIFI_SWITCH_STATE_CHANGED_ACTION:Ljava/lang/String; = "com.lenovo.wifiswitch.ACTION_STATE_CHANGED"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/android/settings/WiFiSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/WiFiSwitchEnabler$1;-><init>(Lcom/android/settings/WiFiSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/WiFiSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 65
    iput-object p1, p0, Lcom/android/settings/WiFiSwitchEnabler;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/android/settings/WiFiSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 67
    return-void
.end method

.method private static MSG_DEBUG(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 35
    const-string v0, "WiFiSwitchEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ WiFiSwitchEnabler ] :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method

.method private static MSG_ERROR(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 43
    const-string v0, "WiFiSwitchEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ WiFiSwitchEnabler ] :: Error :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-static {p0}, Lcom/android/settings/WiFiSwitchEnabler;->MSG_DEBUG(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/WiFiSwitchEnabler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/WiFiSwitchEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/android/settings/WiFiSwitchEnabler;->handleStateChanged(I)V

    return-void
.end method

.method private handleStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x1

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleStateChanged, state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/WiFiSwitchEnabler;->MSG_DEBUG(Ljava/lang/String;)V

    .line 169
    packed-switch p1, :pswitch_data_0

    .line 177
    iget-object v0, p0, Lcom/android/settings/WiFiSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 181
    :goto_0
    iget-object v0, p0, Lcom/android/settings/WiFiSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 183
    return-void

    .line 172
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/WiFiSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getRunningState()Ljava/lang/String;
    .locals 4

    .prologue
    .line 190
    const/4 v0, 0x1

    .line 192
    .local v0, "def_wifi_switch_setting":I
    const-string v2, "ro.lenovo.operator"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "operator":Ljava/lang/String;
    const-string v2, "cmcc"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    const/4 v0, 0x0

    .line 198
    :cond_0
    iget-object v2, p0, Lcom/android/settings/WiFiSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_switch_setting"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 199
    iget-object v2, p0, Lcom/android/settings/WiFiSwitchEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0169

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 201
    :goto_0
    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/android/settings/WiFiSwitchEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0c016b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 207
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCheckedChanged, isChecked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/WiFiSwitchEnabler;->MSG_DEBUG(Ljava/lang/String;)V

    .line 208
    const-string v4, "yyx"

    const-string v5, "wifiswitchenabler onCheckedChanged"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    if-ne p2, v2, :cond_0

    move v1, v2

    .line 211
    .local v1, "state":I
    :goto_0
    if-ne v1, v2, :cond_1

    .line 212
    const-string v2, "persist.sys.afmsvr"

    const-string v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :goto_1
    iget-object v2, p0, Lcom/android/settings/WiFiSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "wifi_switch_setting"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 219
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.lenovo.wifiswitch.ACTION_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 220
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "wifi_switch_state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 221
    iget-object v2, p0, Lcom/android/settings/WiFiSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 223
    iget-object v2, p0, Lcom/android/settings/WiFiSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 225
    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "state":I
    :cond_0
    move v1, v3

    .line 209
    goto :goto_0

    .line 214
    .restart local v1    # "state":I
    :cond_1
    const-string v2, "persist.sys.afmsvr"

    const-string v4, "0"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/settings/WiFiSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/settings/WiFiSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 123
    :goto_0
    return-void

    .line 117
    :cond_0
    const-string v0, "pause"

    invoke-static {v0}, Lcom/android/settings/WiFiSwitchEnabler;->MSG_DEBUG(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/WiFiSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/WiFiSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/WiFiSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 7

    .prologue
    .line 71
    iget-object v3, p0, Lcom/android/settings/WiFiSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.wifi"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 73
    iget-object v3, p0, Lcom/android/settings/WiFiSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 106
    :goto_0
    return-void

    .line 78
    :cond_0
    const/4 v0, 0x1

    .line 81
    .local v0, "def_wifi_switch_setting":I
    const-string v3, "ro.lenovo.operator"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "operator":Ljava/lang/String;
    const-string v3, "cmcc"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    const/4 v0, 0x0

    .line 88
    :cond_1
    iget-object v3, p0, Lcom/android/settings/WiFiSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_switch_setting"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 92
    .local v2, "state":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 93
    const-string v3, "persist.sys.afmsvr"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resume, WiFi Switch Enable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/WiFiSwitchEnabler;->MSG_DEBUG(Ljava/lang/String;)V

    .line 100
    invoke-direct {p0, v2}, Lcom/android/settings/WiFiSwitchEnabler;->handleStateChanged(I)V

    .line 102
    iget-object v3, p0, Lcom/android/settings/WiFiSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/WiFiSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "com.lenovo.wifiswitch.ACTION_STATE_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 104
    iget-object v3, p0, Lcom/android/settings/WiFiSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 95
    :cond_2
    const-string v3, "persist.sys.afmsvr"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 7
    .param p1, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 133
    const/4 v0, 0x1

    .line 135
    .local v0, "def_wifi_switch_setting":I
    const-string v3, "ro.lenovo.operator"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "operator":Ljava/lang/String;
    const-string v3, "cmcc"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 139
    const/4 v0, 0x0

    .line 142
    :cond_0
    iget-object v3, p0, Lcom/android/settings/WiFiSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "wifi_switch_setting"

    invoke-static {v3, v6, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 145
    .local v2, "state":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setSwitch, WiFi Switch Enable: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/WiFiSwitchEnabler;->MSG_DEBUG(Ljava/lang/String;)V

    .line 147
    if-ne v2, v4, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {p1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 149
    iput-object p1, p0, Lcom/android/settings/WiFiSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 151
    iget-object v3, p0, Lcom/android/settings/WiFiSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v6, "android.hardware.wifi"

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 153
    iget-object v3, p0, Lcom/android/settings/WiFiSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 160
    :goto_1
    iget-object v3, p0, Lcom/android/settings/WiFiSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 162
    return-void

    :cond_1
    move v3, v5

    .line 147
    goto :goto_0

    .line 157
    :cond_2
    iget-object v3, p0, Lcom/android/settings/WiFiSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_1
.end method
