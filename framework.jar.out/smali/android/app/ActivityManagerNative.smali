.class public abstract Landroid/app/ActivityManagerNative;
.super Landroid/os/Binder;
.source "ActivityManagerNative.java"

# interfaces
.implements Landroid/app/IActivityManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManagerNative$1;
    }
.end annotation


# static fields
.field private static final gDefault:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton",
            "<",
            "Landroid/app/IActivityManager;",
            ">;"
        }
    .end annotation
.end field

.field static sSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    .line 2812
    new-instance v0, Landroid/app/ActivityManagerNative$1;

    invoke-direct {v0}, Landroid/app/ActivityManagerNative$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 152
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 153
    const-string/jumbo v0, "android.app.IActivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/ActivityManagerNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 82
    if-nez p0, :cond_0

    .line 83
    return-object v1

    .line 86
    :cond_0
    const-string/jumbo v1, "android.app.IActivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    .line 87
    .local v0, "in":Landroid/app/IActivityManager;
    if-eqz v0, :cond_1

    .line 88
    return-object v0

    .line 91
    :cond_1
    new-instance v1, Landroid/app/ActivityManagerProxy;

    invoke-direct {v1, p0}, Landroid/app/ActivityManagerProxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 113
    const/4 v0, -0x1

    invoke-static {p0, p1, v0, p2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;II)V

    .line 112
    return-void
.end method

.method public static broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;II)V
    .locals 15
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "appOp"    # I
    .param p3, "userId"    # I

    .prologue
    .line 123
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 124
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 125
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v2, p0

    move/from16 v9, p2

    move/from16 v13, p3

    .line 123
    invoke-interface/range {v0 .. v13}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v14

    .local v14, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static getDefault()Landroid/app/IActivityManager;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    return-object v0
.end method

.method public static isSystemReady()Z
    .locals 1

    .prologue
    .line 105
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    if-nez v0, :cond_0

    .line 106
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->testIsSystemReady()Z

    move-result v0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    .line 108
    :cond_0
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    return v0
.end method

.method public static noteAlarmFinish(Landroid/app/PendingIntent;ILjava/lang/String;)V
    .locals 3
    .param p0, "ps"    # Landroid/app/PendingIntent;
    .param p1, "sourceUid"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 147
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Landroid/app/IActivityManager;->noteAlarmFinish(Landroid/content/IIntentSender;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static noteAlarmStart(Landroid/app/PendingIntent;ILjava/lang/String;)V
    .locals 3
    .param p0, "ps"    # Landroid/app/PendingIntent;
    .param p1, "sourceUid"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 140
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Landroid/app/IActivityManager;->noteAlarmStart(Landroid/content/IIntentSender;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static noteWakeupAlarm(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "ps"    # Landroid/app/PendingIntent;
    .param p1, "sourceUid"    # I
    .param p2, "sourcePkg"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 133
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, p3}, Landroid/app/IActivityManager;->noteWakeupAlarm(Landroid/content/IIntentSender;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 2809
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 326
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 159
    move/from16 v0, p1

    sparse-switch v0, :sswitch_data_0

    .line 2805
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 163
    :sswitch_0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 165
    invoke-static {v6}, Lcom/lenovo/datamining/avatar/system/IAppExceptionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lenovo/datamining/avatar/system/IAppExceptionListener;

    move-result-object v250

    .line 168
    .local v250, "observer":Lcom/lenovo/datamining/avatar/system/IAppExceptionListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v250

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerAppExceptionListener(Lcom/lenovo/datamining/avatar/system/IAppExceptionListener;)V

    .line 169
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    const/4 v6, 0x1

    return v6

    .line 177
    .end local v250    # "observer":Lcom/lenovo/datamining/avatar/system/IAppExceptionListener;
    :sswitch_1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 179
    invoke-static {v6}, Lcom/lenovo/datamining/avatar/system/ISystemCollectorListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lenovo/datamining/avatar/system/ISystemCollectorListener;

    move-result-object v251

    .line 182
    .local v251, "observer":Lcom/lenovo/datamining/avatar/system/ISystemCollectorListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v251

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerSystemCollectorListener(Lcom/lenovo/datamining/avatar/system/ISystemCollectorListener;)V

    .line 183
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    const/4 v6, 0x1

    return v6

    .line 188
    .end local v251    # "observer":Lcom/lenovo/datamining/avatar/system/ISystemCollectorListener;
    :sswitch_2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v169

    .line 191
    .local v169, "action":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v225

    .line 192
    .local v225, "label":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v320, v0

    .line 194
    .local v320, "value":I
    const/4 v6, 0x0

    .line 193
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v236

    check-cast v236, Lcom/lenovo/datamining/avatar/api/LocalParamMap;

    .line 196
    .local v236, "localParams":Lcom/lenovo/datamining/avatar/api/LocalParamMap;
    move-object/from16 v0, p0

    move-object/from16 v1, v169

    move-object/from16 v2, v225

    move/from16 v3, v320

    move-object/from16 v4, v236

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->notifyPhoneEvent(Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/datamining/avatar/api/LocalParamMap;)V

    .line 197
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    const/4 v6, 0x1

    return v6

    .line 204
    .end local v169    # "action":Ljava/lang/String;
    .end local v225    # "label":Ljava/lang/String;
    .end local v236    # "localParams":Lcom/lenovo/datamining/avatar/api/LocalParamMap;
    .end local v320    # "value":I
    :sswitch_3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v180

    .line 206
    .local v180, "b":Landroid/os/IBinder;
    invoke-static/range {v180 .. v180}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 207
    .local v7, "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 208
    .local v8, "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 209
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 210
    .local v10, "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 211
    .local v11, "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 212
    .local v12, "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 213
    .local v13, "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 214
    .local v14, "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    .line 215
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ProfilerInfo;

    .line 216
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    .line 217
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    :goto_1
    move-object/from16 v6, p0

    .line 218
    invoke-virtual/range {v6 .. v16}, Landroid/app/ActivityManagerNative;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v0

    move/16 v286, v0

    .line 220
    .local v286, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    move-object/from16 v0, p3

    move/from16 v1, v286

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    const/4 v6, 0x1

    return v6

    .line 215
    .end local v286    # "result":I
    :cond_0
    const/4 v15, 0x0

    .local v15, "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_0

    .line 217
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_1
    const/16 v16, 0x0

    .local v16, "options":Landroid/os/Bundle;
    goto :goto_1

    .line 227
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v180    # "b":Landroid/os/IBinder;
    :sswitch_4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v180

    .line 229
    .restart local v180    # "b":Landroid/os/IBinder;
    invoke-static/range {v180 .. v180}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 230
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 231
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 232
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 233
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 234
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 235
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 236
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 237
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    .line 238
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ProfilerInfo;

    .line 239
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    .line 240
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 241
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .local v17, "userId":I
    move-object/from16 v6, p0

    .line 242
    invoke-virtual/range {v6 .. v17}, Landroid/app/ActivityManagerNative;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    move/16 v286, v0

    .line 244
    .restart local v286    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    move-object/from16 v0, p3

    move/from16 v1, v286

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    const/4 v6, 0x1

    return v6

    .line 238
    .end local v17    # "userId":I
    .end local v286    # "result":I
    :cond_2
    const/4 v15, 0x0

    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_2

    .line 240
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_3
    const/16 v16, 0x0

    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_3

    .line 251
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v180    # "b":Landroid/os/IBinder;
    :sswitch_5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v180

    .line 253
    .restart local v180    # "b":Landroid/os/IBinder;
    invoke-static/range {v180 .. v180}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 254
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 255
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 256
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 257
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 258
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 259
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 260
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 261
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    .line 262
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ProfilerInfo;

    .line 263
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    .line 264
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 265
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6

    const/16 v29, 0x1

    .line 266
    .local v29, "ignoreTargetSecurity":Z
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v18, p0

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move/from16 v25, v13

    move/from16 v26, v14

    move-object/from16 v27, v15

    move-object/from16 v28, v16

    move/from16 v30, v17

    .line 267
    invoke-virtual/range {v18 .. v30}, Landroid/app/ActivityManagerNative;->startActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;ZI)I

    move-result v0

    move/16 v286, v0

    .line 270
    .restart local v286    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    move-object/from16 v0, p3

    move/from16 v1, v286

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    const/4 v6, 0x1

    return v6

    .line 262
    .end local v17    # "userId":I
    .end local v29    # "ignoreTargetSecurity":Z
    .end local v286    # "result":I
    :cond_4
    const/4 v15, 0x0

    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_4

    .line 264
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_5
    const/16 v16, 0x0

    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_5

    .line 265
    .end local v16    # "options":Landroid/os/Bundle;
    :cond_6
    const/16 v29, 0x0

    .restart local v29    # "ignoreTargetSecurity":Z
    goto :goto_6

    .line 277
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v29    # "ignoreTargetSecurity":Z
    .end local v180    # "b":Landroid/os/IBinder;
    :sswitch_6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v180

    .line 279
    .restart local v180    # "b":Landroid/os/IBinder;
    invoke-static/range {v180 .. v180}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 280
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 281
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 282
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 283
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 284
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 285
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 286
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 287
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    .line 288
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ProfilerInfo;

    .line 289
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8

    .line 290
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 291
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v6, p0

    .line 292
    invoke-virtual/range {v6 .. v17}, Landroid/app/ActivityManagerNative;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/IActivityManager$WaitResult;

    move-result-object v0

    move-object/16 v287, v0

    .line 294
    .local v287, "result":Landroid/app/IActivityManager$WaitResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    const/4 v6, 0x0

    move-object/from16 v0, v287

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/IActivityManager$WaitResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 296
    const/4 v6, 0x1

    return v6

    .line 288
    .end local v17    # "userId":I
    .end local v287    # "result":Landroid/app/IActivityManager$WaitResult;
    :cond_7
    const/4 v15, 0x0

    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_7

    .line 290
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_8
    const/16 v16, 0x0

    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_8

    .line 301
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v180    # "b":Landroid/os/IBinder;
    :sswitch_7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v180

    .line 303
    .restart local v180    # "b":Landroid/os/IBinder;
    invoke-static/range {v180 .. v180}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 304
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 305
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 306
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 307
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 308
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 309
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 310
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 311
    .restart local v14    # "startFlags":I
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/res/Configuration;

    .line 312
    .local v39, "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9

    .line 313
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 314
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v30, p0

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v34, v10

    move-object/from16 v35, v11

    move-object/from16 v36, v12

    move/from16 v37, v13

    move/from16 v38, v14

    move-object/from16 v40, v16

    move/from16 v41, v17

    .line 315
    invoke-virtual/range {v30 .. v41}, Landroid/app/ActivityManagerNative;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I

    move-result v0

    move/16 v286, v0

    .line 317
    .restart local v286    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    move-object/from16 v0, p3

    move/from16 v1, v286

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    const/4 v6, 0x1

    return v6

    .line 313
    .end local v17    # "userId":I
    .end local v286    # "result":I
    :cond_9
    const/16 v16, 0x0

    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_9

    .line 324
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v39    # "config":Landroid/content/res/Configuration;
    .end local v180    # "b":Landroid/os/IBinder;
    :sswitch_8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v180

    .line 326
    .restart local v180    # "b":Landroid/os/IBinder;
    invoke-static/range {v180 .. v180}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 327
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/IntentSender;

    .line 328
    .local v20, "intent":Landroid/content/IntentSender;
    const/16 v21, 0x0

    .line 329
    .local v21, "fillInIntent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    .line 330
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "fillInIntent":Landroid/content/Intent;
    check-cast v21, Landroid/content/Intent;

    .line 332
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 333
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 334
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 335
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 336
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 337
    .local v26, "flagsMask":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 338
    .local v27, "flagsValues":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b

    .line 339
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    :goto_a
    move-object/from16 v18, p0

    move-object/from16 v19, v7

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move/from16 v25, v13

    move-object/from16 v28, v16

    .line 340
    invoke-virtual/range {v18 .. v28}, Landroid/app/ActivityManagerNative;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v0

    move/16 v286, v0

    .line 343
    .restart local v286    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    move-object/from16 v0, p3

    move/from16 v1, v286

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    const/4 v6, 0x1

    return v6

    .line 339
    .end local v286    # "result":I
    :cond_b
    const/16 v16, 0x0

    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_a

    .line 350
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v20    # "intent":Landroid/content/IntentSender;
    .end local v26    # "flagsMask":I
    .end local v27    # "flagsValues":I
    .end local v180    # "b":Landroid/os/IBinder;
    :sswitch_9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 352
    .restart local v8    # "callingPackage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 353
    .local v42, "callingPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 354
    .local v43, "callingUid":I
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 355
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 357
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 356
    invoke-static {v6}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v46

    .line 359
    .local v46, "session":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 358
    invoke-static {v6}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v47

    .line 360
    .local v47, "interactor":Lcom/android/internal/app/IVoiceInteractor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 361
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c

    .line 362
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ProfilerInfo;

    .line 363
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d

    .line 364
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 365
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v40, p0

    move-object/from16 v41, v8

    move-object/from16 v44, v9

    move-object/from16 v45, v10

    move/from16 v48, v14

    move-object/from16 v49, v15

    move-object/from16 v50, v16

    move/from16 v51, v17

    .line 366
    invoke-virtual/range {v40 .. v51}, Landroid/app/ActivityManagerNative;->startVoiceActivity(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    move/16 v286, v0

    .line 368
    .restart local v286    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    move-object/from16 v0, p3

    move/from16 v1, v286

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    const/4 v6, 0x1

    return v6

    .line 362
    .end local v17    # "userId":I
    .end local v286    # "result":I
    :cond_c
    const/4 v15, 0x0

    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_b

    .line 364
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_d
    const/16 v16, 0x0

    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_c

    .line 375
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v14    # "startFlags":I
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v42    # "callingPid":I
    .end local v43    # "callingUid":I
    .end local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    .end local v47    # "interactor":Lcom/android/internal/app/IVoiceInteractor;
    :sswitch_a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v186

    .line 377
    .local v186, "callingActivity":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 378
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e

    .line 379
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 380
    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, v186

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v9, v2}, Landroid/app/ActivityManagerNative;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v0

    move/16 v288, v0

    .line 381
    .local v288, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    move/from16 v0, v288

    if-eqz v0, :cond_f

    const/4 v6, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    const/4 v6, 0x1

    return v6

    .line 379
    .end local v288    # "result":Z
    :cond_e
    const/16 v16, 0x0

    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_d

    .line 382
    .end local v16    # "options":Landroid/os/Bundle;
    .restart local v288    # "result":Z
    :cond_f
    const/4 v6, 0x0

    goto :goto_e

    .line 388
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v186    # "callingActivity":Landroid/os/IBinder;
    .end local v288    # "result":Z
    :sswitch_b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v310, v0

    .line 390
    .local v310, "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_10

    const/16 v16, 0x0

    .line 391
    :goto_f
    move-object/from16 v0, p0

    move/from16 v1, v310

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->startActivityFromRecents(ILandroid/os/Bundle;)I

    move-result v0

    move/16 v286, v0

    .line 392
    .restart local v286    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    move-object/from16 v0, p3

    move/from16 v1, v286

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    const/4 v6, 0x1

    return v6

    .line 390
    .end local v286    # "result":I
    :cond_10
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .local v16, "options":Landroid/os/Bundle;
    goto :goto_f

    .line 398
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v310    # "taskId":I
    :sswitch_c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 400
    .local v73, "token":Landroid/os/IBinder;
    const/4 v0, 0x0

    move-object/16 v290, v0

    .line 401
    .local v290, "resultData":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 402
    .local v53, "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_11

    .line 403
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v290, v0

    .end local v290    # "resultData":Landroid/content/Intent;
    move-object/from16 v0, v290

    check-cast v0, Landroid/content/Intent;

    move-object/16 v290, v0

    .line 405
    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_12

    const/16 v203, 0x1

    .line 406
    .local v203, "finishTask":Z
    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move/from16 v2, v53

    move-object/from16 v3, v290

    move/from16 v4, v203

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;Z)Z

    move-result v0

    move/16 v283, v0

    .line 407
    .local v283, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    move/from16 v0, v283

    if-eqz v0, :cond_13

    const/4 v6, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 409
    const/4 v6, 0x1

    return v6

    .line 405
    .end local v203    # "finishTask":Z
    .end local v283    # "res":Z
    :cond_12
    const/16 v203, 0x0

    .restart local v203    # "finishTask":Z
    goto :goto_10

    .line 408
    .restart local v283    # "res":Z
    :cond_13
    const/4 v6, 0x0

    goto :goto_11

    .line 413
    .end local v53    # "resultCode":I
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v203    # "finishTask":Z
    .end local v283    # "res":Z
    :sswitch_d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 415
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 416
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 417
    .restart local v13    # "requestCode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1, v12, v13}, Landroid/app/ActivityManagerNative;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 418
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    const/4 v6, 0x1

    return v6

    .line 423
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v73    # "token":Landroid/os/IBinder;
    :sswitch_e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 425
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->finishActivityAffinity(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v283, v0

    .line 426
    .restart local v283    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    move/from16 v0, v283

    if-eqz v0, :cond_14

    const/4 v6, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    const/4 v6, 0x1

    return v6

    .line 427
    :cond_14
    const/4 v6, 0x0

    goto :goto_12

    .line 432
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v283    # "res":Z
    :sswitch_f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 433
    invoke-static {v6}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v46

    .line 435
    .restart local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 436
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    const/4 v6, 0x1

    return v6

    .line 441
    .end local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    :sswitch_10
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 443
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->releaseActivityInstance(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v283, v0

    .line 444
    .restart local v283    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    move/from16 v0, v283

    if-eqz v0, :cond_15

    const/4 v6, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 446
    const/4 v6, 0x1

    return v6

    .line 445
    :cond_15
    const/4 v6, 0x0

    goto :goto_13

    .line 450
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v283    # "res":Z
    :sswitch_11
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 452
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/ActivityManagerNative;->releaseSomeActivities(Landroid/app/IApplicationThread;)V

    .line 453
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    const/4 v6, 0x1

    return v6

    .line 458
    .end local v7    # "app":Landroid/app/IApplicationThread;
    :sswitch_12
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 460
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v283, v0

    .line 461
    .restart local v283    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    move/from16 v0, v283

    if-eqz v0, :cond_16

    const/4 v6, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 463
    const/4 v6, 0x1

    return v6

    .line 462
    :cond_16
    const/4 v6, 0x0

    goto :goto_14

    .line 468
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v283    # "res":Z
    :sswitch_13
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v180

    .line 471
    .restart local v180    # "b":Landroid/os/IBinder;
    if-eqz v180, :cond_17

    invoke-static/range {v180 .. v180}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 472
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 473
    .local v32, "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v180

    .line 475
    if-eqz v180, :cond_18

    invoke-static/range {v180 .. v180}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v33

    .line 476
    :goto_16
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/IntentFilter;

    .line 477
    .local v34, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 478
    .local v35, "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v30, p0

    move-object/from16 v31, v7

    move/from16 v36, v17

    .line 479
    invoke-virtual/range {v30 .. v36}, Landroid/app/ActivityManagerNative;->registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v9

    .line 480
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    if-eqz v9, :cond_19

    .line 482
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 483
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v6}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 487
    :goto_17
    const/4 v6, 0x1

    return v6

    .line 471
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v34    # "filter":Landroid/content/IntentFilter;
    .end local v35    # "perm":Ljava/lang/String;
    :cond_17
    const/4 v7, 0x0

    .local v7, "app":Landroid/app/IApplicationThread;
    goto :goto_15

    .line 475
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .restart local v32    # "packageName":Ljava/lang/String;
    :cond_18
    const/16 v33, 0x0

    .local v33, "rec":Landroid/content/IIntentReceiver;
    goto :goto_16

    .line 485
    .end local v33    # "rec":Landroid/content/IIntentReceiver;
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v17    # "userId":I
    .restart local v34    # "filter":Landroid/content/IntentFilter;
    .restart local v35    # "perm":Ljava/lang/String;
    :cond_19
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17

    .line 492
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v34    # "filter":Landroid/content/IntentFilter;
    .end local v35    # "perm":Ljava/lang/String;
    .end local v180    # "b":Landroid/os/IBinder;
    :sswitch_14
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v180

    .line 494
    .restart local v180    # "b":Landroid/os/IBinder;
    if-nez v180, :cond_1a

    .line 495
    const/4 v6, 0x1

    return v6

    .line 497
    :cond_1a
    invoke-static/range {v180 .. v180}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v33

    .line 498
    .local v33, "rec":Landroid/content/IIntentReceiver;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    .line 499
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 500
    const/4 v6, 0x1

    return v6

    .line 505
    .end local v33    # "rec":Landroid/content/IIntentReceiver;
    .end local v180    # "b":Landroid/os/IBinder;
    :sswitch_15
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 506
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v180

    .line 508
    .restart local v180    # "b":Landroid/os/IBinder;
    if-eqz v180, :cond_1b

    invoke-static/range {v180 .. v180}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 509
    :goto_18
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 510
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 511
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v180

    .line 513
    if-eqz v180, :cond_1c

    invoke-static/range {v180 .. v180}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v52

    .line 514
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 515
    .restart local v53    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v54

    .line 516
    .local v54, "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v55

    .line 517
    .local v55, "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v56

    .line 518
    .local v56, "perms":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v57

    .line 519
    .local v57, "appOp":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v16

    .line 520
    .restart local v16    # "options":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1d

    const/16 v59, 0x1

    .line 521
    .local v59, "serialized":Z
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1e

    const/16 v60, 0x1

    .line 522
    .local v60, "sticky":Z
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v48, p0

    move-object/from16 v49, v7

    move-object/from16 v50, v9

    move-object/from16 v51, v10

    move-object/from16 v58, v16

    move/from16 v61, v17

    .line 523
    invoke-virtual/range {v48 .. v61}, Landroid/app/ActivityManagerNative;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    move-result v0

    move/16 v277, v0

    .line 526
    .local v277, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    move-object/from16 v0, p3

    move/from16 v1, v277

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 528
    const/4 v6, 0x1

    return v6

    .line 508
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v53    # "resultCode":I
    .end local v54    # "resultData":Ljava/lang/String;
    .end local v55    # "resultExtras":Landroid/os/Bundle;
    .end local v56    # "perms":[Ljava/lang/String;
    .end local v57    # "appOp":I
    .end local v59    # "serialized":Z
    .end local v60    # "sticky":Z
    .end local v277    # "res":I
    :cond_1b
    const/4 v7, 0x0

    .restart local v7    # "app":Landroid/app/IApplicationThread;
    goto :goto_18

    .line 513
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v10    # "resolvedType":Ljava/lang/String;
    :cond_1c
    const/16 v52, 0x0

    .local v52, "resultTo":Landroid/content/IIntentReceiver;
    goto :goto_19

    .line 520
    .end local v52    # "resultTo":Landroid/content/IIntentReceiver;
    .restart local v16    # "options":Landroid/os/Bundle;
    .restart local v53    # "resultCode":I
    .restart local v54    # "resultData":Ljava/lang/String;
    .restart local v55    # "resultExtras":Landroid/os/Bundle;
    .restart local v56    # "perms":[Ljava/lang/String;
    .restart local v57    # "appOp":I
    :cond_1d
    const/16 v59, 0x0

    .restart local v59    # "serialized":Z
    goto :goto_1a

    .line 521
    :cond_1e
    const/16 v60, 0x0

    .restart local v60    # "sticky":Z
    goto :goto_1b

    .line 533
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v53    # "resultCode":I
    .end local v54    # "resultData":Ljava/lang/String;
    .end local v55    # "resultExtras":Landroid/os/Bundle;
    .end local v56    # "perms":[Ljava/lang/String;
    .end local v57    # "appOp":I
    .end local v59    # "serialized":Z
    .end local v60    # "sticky":Z
    .end local v180    # "b":Landroid/os/IBinder;
    :sswitch_16
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 534
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v180

    .line 535
    .restart local v180    # "b":Landroid/os/IBinder;
    if-eqz v180, :cond_1f

    invoke-static/range {v180 .. v180}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 536
    :goto_1c
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 537
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 538
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v7, v9, v1}, Landroid/app/ActivityManagerNative;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V

    .line 539
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    const/4 v6, 0x1

    return v6

    .line 535
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    :cond_1f
    const/4 v7, 0x0

    .restart local v7    # "app":Landroid/app/IApplicationThread;
    goto :goto_1c

    .line 544
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v180    # "b":Landroid/os/IBinder;
    :sswitch_17
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v62

    .line 546
    .local v62, "who":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 547
    .restart local v53    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v54

    .line 548
    .restart local v54    # "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v55

    .line 549
    .restart local v55    # "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_21

    const/16 v66, 0x1

    .line 550
    .local v66, "resultAbort":Z
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v67

    .line 551
    .local v67, "intentFlags":I
    if-eqz v62, :cond_20

    move-object/from16 v61, p0

    move/from16 v63, v53

    move-object/from16 v64, v54

    move-object/from16 v65, v55

    .line 552
    invoke-virtual/range {v61 .. v67}, Landroid/app/ActivityManagerNative;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V

    .line 554
    :cond_20
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    const/4 v6, 0x1

    return v6

    .line 549
    .end local v66    # "resultAbort":Z
    .end local v67    # "intentFlags":I
    :cond_21
    const/16 v66, 0x0

    .restart local v66    # "resultAbort":Z
    goto :goto_1d

    .line 559
    .end local v53    # "resultCode":I
    .end local v54    # "resultData":Ljava/lang/String;
    .end local v55    # "resultExtras":Landroid/os/Bundle;
    .end local v62    # "who":Landroid/os/IBinder;
    .end local v66    # "resultAbort":Z
    :sswitch_18
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 561
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 560
    invoke-static {v6}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 562
    .local v7, "app":Landroid/app/IApplicationThread;
    if-eqz v7, :cond_22

    .line 563
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/ActivityManagerNative;->attachApplication(Landroid/app/IApplicationThread;)V

    .line 565
    :cond_22
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    const/4 v6, 0x1

    return v6

    .line 570
    .end local v7    # "app":Landroid/app/IApplicationThread;
    :sswitch_19
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 571
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 572
    .restart local v73    # "token":Landroid/os/IBinder;
    const/16 v39, 0x0

    .line 573
    .local v39, "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_23

    .line 574
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    .end local v39    # "config":Landroid/content/res/Configuration;
    check-cast v39, Landroid/content/res/Configuration;

    .line 576
    :cond_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_25

    const/4 v0, 0x1

    move/16 v303, v0

    .line 577
    .local v303, "stopProfiling":Z
    :goto_1e
    if-eqz v73, :cond_24

    .line 578
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v39

    move/from16 v3, v303

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V

    .line 580
    :cond_24
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    const/4 v6, 0x1

    return v6

    .line 576
    .end local v303    # "stopProfiling":Z
    :cond_25
    const/4 v0, 0x0

    move/16 v303, v0

    .restart local v303    # "stopProfiling":Z
    goto :goto_1e

    .line 585
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v303    # "stopProfiling":Z
    :sswitch_1a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 586
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 587
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityResumed(Landroid/os/IBinder;)V

    .line 588
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 589
    const/4 v6, 0x1

    return v6

    .line 593
    .end local v73    # "token":Landroid/os/IBinder;
    :sswitch_1b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 594
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 595
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityPaused(Landroid/os/IBinder;)V

    .line 596
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    const/4 v6, 0x1

    return v6

    .line 601
    .end local v73    # "token":Landroid/os/IBinder;
    :sswitch_1c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 603
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v238

    .line 604
    .local v238, "map":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    move-object/16 v260, v0

    .line 605
    .local v260, "persistentState":Landroid/os/PersistableBundle;
    sget-object v6, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v194

    check-cast v194, Ljava/lang/CharSequence;

    .line 606
    .local v194, "description":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v238

    move-object/from16 v3, v260

    move-object/from16 v4, v194

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V

    .line 607
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    const/4 v6, 0x1

    return v6

    .line 612
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v194    # "description":Ljava/lang/CharSequence;
    .end local v238    # "map":Landroid/os/Bundle;
    .end local v260    # "persistentState":Landroid/os/PersistableBundle;
    :sswitch_1d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 613
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 614
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activitySlept(Landroid/os/IBinder;)V

    .line 615
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 616
    const/4 v6, 0x1

    return v6

    .line 620
    .end local v73    # "token":Landroid/os/IBinder;
    :sswitch_1e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 621
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 622
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityDestroyed(Landroid/os/IBinder;)V

    .line 623
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    const/4 v6, 0x1

    return v6

    .line 628
    .end local v73    # "token":Landroid/os/IBinder;
    :sswitch_1f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 629
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 630
    .restart local v73    # "token":Landroid/os/IBinder;
    if-eqz v73, :cond_26

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    move-object/16 v282, v0

    .line 631
    :goto_1f
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    move-object/from16 v0, p3

    move-object/from16 v1, v282

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 633
    const/4 v6, 0x1

    return v6

    .line 630
    :cond_26
    const/4 v0, 0x0

    move-object/16 v282, v0

    .local v282, "res":Ljava/lang/String;
    goto :goto_1f

    .line 637
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v282    # "res":Ljava/lang/String;
    :sswitch_20
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 638
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 639
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v188

    .line 640
    .local v188, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    move-object/from16 v0, v188

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 642
    const/4 v6, 0x1

    return v6

    .line 646
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v188    # "cn":Landroid/content/ComponentName;
    :sswitch_21
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 647
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 648
    .restart local v8    # "callingPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/app/ActivityManagerNative;->getAppTasks(Ljava/lang/String;)Ljava/util/List;

    move-result-object v234

    .line 649
    .local v234, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/IAppTask;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 650
    if-eqz v234, :cond_27

    invoke-interface/range {v234 .. v234}, Ljava/util/List;->size()I

    move-result v167

    .line 651
    .local v167, "N":I
    :goto_20
    move-object/from16 v0, p3

    move/from16 v1, v167

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 653
    const/16 v207, 0x0

    .local v207, "i":I
    :goto_21
    move/from16 v0, v207

    move/from16 v1, v167

    if-ge v0, v1, :cond_28

    .line 654
    move-object/from16 v0, v234

    move/from16 v1, v207

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v309, v0

    move-object/from16 v0, v309

    check-cast v0, Landroid/app/IAppTask;

    move-object/16 v309, v0

    .line 655
    .local v309, "task":Landroid/app/IAppTask;
    invoke-interface/range {v309 .. v309}, Landroid/app/IAppTask;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 653
    add-int/lit8 v207, v207, 0x1

    goto :goto_21

    .line 650
    .end local v167    # "N":I
    .end local v207    # "i":I
    .end local v309    # "task":Landroid/app/IAppTask;
    :cond_27
    const/16 v167, -0x1

    .restart local v167    # "N":I
    goto :goto_20

    .line 657
    .restart local v207    # "i":I
    :cond_28
    const/4 v6, 0x1

    return v6

    .line 661
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v167    # "N":I
    .end local v207    # "i":I
    .end local v234    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/IAppTask;>;"
    :sswitch_22
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 662
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v171

    .line 663
    .local v171, "activityToken":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 665
    .restart local v9    # "intent":Landroid/content/Intent;
    sget-object v6, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v193

    check-cast v193, Landroid/app/ActivityManager$TaskDescription;

    .line 666
    .local v193, "descr":Landroid/app/ActivityManager$TaskDescription;
    sget-object v6, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v312, v0

    move-object/from16 v0, v312

    check-cast v0, Landroid/graphics/Bitmap;

    move-object/16 v312, v0

    .line 667
    .local v312, "thumbnail":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    move-object/from16 v1, v171

    move-object/from16 v2, v193

    move-object/from16 v3, v312

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/app/ActivityManagerNative;->addAppTask(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I

    move-result v0

    move/16 v277, v0

    .line 668
    .restart local v277    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 669
    move-object/from16 v0, p3

    move/from16 v1, v277

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 670
    const/4 v6, 0x1

    return v6

    .line 674
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v171    # "activityToken":Landroid/os/IBinder;
    .end local v193    # "descr":Landroid/app/ActivityManager$TaskDescription;
    .end local v277    # "res":I
    .end local v312    # "thumbnail":Landroid/graphics/Bitmap;
    :sswitch_23
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 675
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getAppTaskThumbnailSize()Landroid/graphics/Point;

    move-result-object v0

    move-object/16 v296, v0

    .line 676
    .local v296, "size":Landroid/graphics/Point;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    const/4 v6, 0x0

    move-object/from16 v0, v296

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 678
    const/4 v6, 0x1

    return v6

    .line 682
    .end local v296    # "size":Landroid/graphics/Point;
    :sswitch_24
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 683
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v240

    .line 684
    .local v240, "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v83

    .line 685
    .local v83, "fl":I
    move-object/from16 v0, p0

    move/from16 v1, v240

    move/from16 v2, v83

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTasks(II)Ljava/util/List;

    move-result-object v232

    .line 686
    .local v232, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 687
    if-eqz v232, :cond_29

    invoke-interface/range {v232 .. v232}, Ljava/util/List;->size()I

    move-result v167

    .line 688
    .restart local v167    # "N":I
    :goto_22
    move-object/from16 v0, p3

    move/from16 v1, v167

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 690
    const/16 v207, 0x0

    .restart local v207    # "i":I
    :goto_23
    move/from16 v0, v207

    move/from16 v1, v167

    if-ge v0, v1, :cond_2a

    .line 691
    move-object/from16 v0, v232

    move/from16 v1, v207

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v213

    check-cast v213, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 692
    .local v213, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    const/4 v6, 0x0

    move-object/from16 v0, v213

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 690
    add-int/lit8 v207, v207, 0x1

    goto :goto_23

    .line 687
    .end local v167    # "N":I
    .end local v207    # "i":I
    .end local v213    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_29
    const/16 v167, -0x1

    .restart local v167    # "N":I
    goto :goto_22

    .line 694
    .restart local v207    # "i":I
    :cond_2a
    const/4 v6, 0x1

    return v6

    .line 698
    .end local v83    # "fl":I
    .end local v167    # "N":I
    .end local v207    # "i":I
    .end local v232    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v240    # "maxNum":I
    :sswitch_25
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 699
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v240

    .line 700
    .restart local v240    # "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v83

    .line 701
    .restart local v83    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 702
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v240

    move/from16 v2, v83

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getRecentTasks(III)Ljava/util/List;

    move-result-object v229

    .line 704
    .local v229, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 705
    move-object/from16 v0, p3

    move-object/from16 v1, v229

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 706
    const/4 v6, 0x1

    return v6

    .line 710
    .end local v17    # "userId":I
    .end local v83    # "fl":I
    .end local v229    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v240    # "maxNum":I
    :sswitch_26
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 711
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v74

    .line 712
    .local v74, "id":I
    move-object/from16 v0, p0

    move/from16 v1, v74

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTaskThumbnail(I)Landroid/app/ActivityManager$TaskThumbnail;

    move-result-object v0

    move-object/16 v311, v0

    .line 713
    .local v311, "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    move-object/from16 v0, v311

    if-eqz v0, :cond_2b

    .line 715
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 716
    const/4 v6, 0x1

    move-object/from16 v0, v311

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$TaskThumbnail;->writeToParcel(Landroid/os/Parcel;I)V

    .line 720
    :goto_24
    const/4 v6, 0x1

    return v6

    .line 718
    :cond_2b
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_24

    .line 724
    .end local v74    # "id":I
    .end local v311    # "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    :sswitch_27
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 725
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v240

    .line 726
    .restart local v240    # "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v83

    .line 727
    .restart local v83    # "fl":I
    move-object/from16 v0, p0

    move/from16 v1, v240

    move/from16 v2, v83

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getServices(II)Ljava/util/List;

    move-result-object v231

    .line 728
    .local v231, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 729
    if-eqz v231, :cond_2c

    invoke-interface/range {v231 .. v231}, Ljava/util/List;->size()I

    move-result v167

    .line 730
    .restart local v167    # "N":I
    :goto_25
    move-object/from16 v0, p3

    move/from16 v1, v167

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 732
    const/16 v207, 0x0

    .restart local v207    # "i":I
    :goto_26
    move/from16 v0, v207

    move/from16 v1, v167

    if-ge v0, v1, :cond_2d

    .line 733
    move-object/from16 v0, v231

    move/from16 v1, v207

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v212

    check-cast v212, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 734
    .local v212, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    const/4 v6, 0x0

    move-object/from16 v0, v212

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$RunningServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 732
    add-int/lit8 v207, v207, 0x1

    goto :goto_26

    .line 729
    .end local v167    # "N":I
    .end local v207    # "i":I
    .end local v212    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_2c
    const/16 v167, -0x1

    .restart local v167    # "N":I
    goto :goto_25

    .line 736
    .restart local v207    # "i":I
    :cond_2d
    const/4 v6, 0x1

    return v6

    .line 740
    .end local v83    # "fl":I
    .end local v167    # "N":I
    .end local v207    # "i":I
    .end local v231    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v240    # "maxNum":I
    :sswitch_28
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 741
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v228

    .line 742
    .local v228, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 743
    move-object/from16 v0, p3

    move-object/from16 v1, v228

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 744
    const/4 v6, 0x1

    return v6

    .line 748
    .end local v228    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    :sswitch_29
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 749
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v230

    .line 750
    .local v230, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 751
    move-object/from16 v0, p3

    move-object/from16 v1, v230

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 752
    const/4 v6, 0x1

    return v6

    .line 756
    .end local v230    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :sswitch_2a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 757
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v235

    .line 758
    .local v235, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 759
    move-object/from16 v0, p3

    move-object/from16 v1, v235

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 760
    const/4 v6, 0x1

    return v6

    .line 764
    .end local v235    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :sswitch_2b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 765
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v308, v0

    .line 766
    .local v308, "task":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v83

    .line 767
    .restart local v83    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2e

    .line 768
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 769
    :goto_27
    move-object/from16 v0, p0

    move/from16 v1, v308

    move/from16 v2, v83

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 770
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 771
    const/4 v6, 0x1

    return v6

    .line 768
    :cond_2e
    const/16 v16, 0x0

    .local v16, "options":Landroid/os/Bundle;
    goto :goto_27

    .line 776
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v83    # "fl":I
    .end local v308    # "task":I
    :sswitch_2c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 777
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v308, v0

    .line 778
    .restart local v308    # "task":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v83

    .line 779
    .restart local v83    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2f

    .line 780
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 781
    :goto_28
    move-object/from16 v0, p0

    move/from16 v1, v308

    move/from16 v2, v83

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->moveTaskToFrontWithResult(IILandroid/os/Bundle;)Z

    move-result v0

    move/16 v283, v0

    .line 782
    .restart local v283    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    move/from16 v0, v283

    if-eqz v0, :cond_30

    const/4 v6, 0x1

    :goto_29
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 784
    const/4 v6, 0x1

    return v6

    .line 780
    .end local v283    # "res":Z
    :cond_2f
    const/16 v16, 0x0

    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_28

    .line 783
    .end local v16    # "options":Landroid/os/Bundle;
    .restart local v283    # "res":Z
    :cond_30
    const/4 v6, 0x0

    goto :goto_29

    .line 789
    .end local v83    # "fl":I
    .end local v283    # "res":Z
    .end local v308    # "task":I
    :sswitch_2d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 790
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 791
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_31

    const/16 v245, 0x1

    .line 792
    .local v245, "nonRoot":Z
    :goto_2a
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move/from16 v2, v245

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v0

    move/16 v283, v0

    .line 793
    .restart local v283    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 794
    move/from16 v0, v283

    if-eqz v0, :cond_32

    const/4 v6, 0x1

    :goto_2b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 795
    const/4 v6, 0x1

    return v6

    .line 791
    .end local v245    # "nonRoot":Z
    .end local v283    # "res":Z
    :cond_31
    const/16 v245, 0x0

    .restart local v245    # "nonRoot":Z
    goto :goto_2a

    .line 794
    .restart local v283    # "res":Z
    :cond_32
    const/4 v6, 0x0

    goto :goto_2b

    .line 799
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v245    # "nonRoot":Z
    .end local v283    # "res":Z
    :sswitch_2e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 800
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v308, v0

    .line 801
    .restart local v308    # "task":I
    move-object/from16 v0, p0

    move/from16 v1, v308

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskBackwards(I)V

    .line 802
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 803
    const/4 v6, 0x1

    return v6

    .line 807
    .end local v308    # "task":I
    :sswitch_2f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 808
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v310, v0

    .line 809
    .restart local v310    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v301, v0

    .line 810
    .local v301, "stackId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_33

    const/4 v0, 0x1

    move/16 v314, v0

    .line 811
    .local v314, "toTop":Z
    :goto_2c
    move-object/from16 v0, p0

    move/from16 v1, v310

    move/from16 v2, v301

    move/from16 v3, v314

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->moveTaskToStack(IIZ)V

    .line 812
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 813
    const/4 v6, 0x1

    return v6

    .line 810
    .end local v314    # "toTop":Z
    :cond_33
    const/4 v0, 0x0

    move/16 v314, v0

    .restart local v314    # "toTop":Z
    goto :goto_2c

    .line 817
    .end local v301    # "stackId":I
    .end local v310    # "taskId":I
    .end local v314    # "toTop":Z
    :sswitch_30
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 818
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v301, v0

    .line 819
    .restart local v301    # "stackId":I
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v272, v0

    move-object/from16 v0, v272

    check-cast v0, Landroid/graphics/Rect;

    move-object/16 v272, v0

    .line 820
    .local v272, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move/from16 v1, v301

    move-object/from16 v2, v272

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->resizeStack(ILandroid/graphics/Rect;)V

    .line 821
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 822
    const/4 v6, 0x1

    return v6

    .line 826
    .end local v272    # "r":Landroid/graphics/Rect;
    .end local v301    # "stackId":I
    :sswitch_31
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 827
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getAllStackInfos()Ljava/util/List;

    move-result-object v233

    .line 828
    .local v233, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 829
    move-object/from16 v0, p3

    move-object/from16 v1, v233

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 830
    const/4 v6, 0x1

    return v6

    .line 834
    .end local v233    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    :sswitch_32
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 835
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v301, v0

    .line 836
    .restart local v301    # "stackId":I
    move-object/from16 v0, p0

    move/from16 v1, v301

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v214

    .line 837
    .local v214, "info":Landroid/app/ActivityManager$StackInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 838
    if-eqz v214, :cond_34

    .line 839
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 840
    const/4 v6, 0x0

    move-object/from16 v0, v214

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$StackInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 844
    :goto_2d
    const/4 v6, 0x1

    return v6

    .line 842
    :cond_34
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2d

    .line 848
    .end local v214    # "info":Landroid/app/ActivityManager$StackInfo;
    .end local v301    # "stackId":I
    :sswitch_33
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 849
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v310, v0

    .line 850
    .restart local v310    # "taskId":I
    move-object/from16 v0, p0

    move/from16 v1, v310

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isInHomeStack(I)Z

    move-result v220

    .line 851
    .local v220, "isInHomeStack":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 852
    if-eqz v220, :cond_35

    const/4 v6, 0x1

    :goto_2e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 853
    const/4 v6, 0x1

    return v6

    .line 852
    :cond_35
    const/4 v6, 0x0

    goto :goto_2e

    .line 857
    .end local v220    # "isInHomeStack":Z
    .end local v310    # "taskId":I
    :sswitch_34
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 858
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v301, v0

    .line 859
    .restart local v301    # "stackId":I
    move-object/from16 v0, p0

    move/from16 v1, v301

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFocusedStack(I)V

    .line 860
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 861
    const/4 v6, 0x1

    return v6

    .line 865
    .end local v301    # "stackId":I
    :sswitch_35
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 866
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getFocusedStackId()I

    move-result v206

    .line 867
    .local v206, "focusedStackId":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 868
    move-object/from16 v0, p3

    move/from16 v1, v206

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 869
    const/4 v6, 0x1

    return v6

    .line 873
    .end local v206    # "focusedStackId":I
    :sswitch_36
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 874
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 875
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-static/range {v73 .. v73}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 876
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 877
    const/4 v6, 0x1

    return v6

    .line 881
    .end local v73    # "token":Landroid/os/IBinder;
    :sswitch_37
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 882
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 883
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_36

    const/16 v252, 0x1

    .line 884
    .local v252, "onlyRoot":Z
    :goto_2f
    if-eqz v73, :cond_37

    .line 885
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move/from16 v2, v252

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v0

    move/16 v277, v0

    .line 886
    .restart local v277    # "res":I
    :goto_30
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 887
    move-object/from16 v0, p3

    move/from16 v1, v277

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 888
    const/4 v6, 0x1

    return v6

    .line 883
    .end local v252    # "onlyRoot":Z
    .end local v277    # "res":I
    :cond_36
    const/16 v252, 0x0

    .restart local v252    # "onlyRoot":Z
    goto :goto_2f

    .line 885
    :cond_37
    const/4 v0, -0x1

    move/16 v277, v0

    .restart local v277    # "res":I
    goto :goto_30

    .line 892
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v252    # "onlyRoot":Z
    .end local v277    # "res":I
    :sswitch_38
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 893
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v180

    .line 894
    .restart local v180    # "b":Landroid/os/IBinder;
    invoke-static/range {v180 .. v180}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 895
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v107

    .line 896
    .local v107, "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 897
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_38

    const/4 v0, 0x1

    move/16 v300, v0

    .line 898
    .local v300, "stable":Z
    :goto_31
    move-object/from16 v0, p0

    move-object/from16 v1, v107

    move/from16 v2, v17

    move/from16 v3, v300

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;IZ)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v192

    .line 899
    .local v192, "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 900
    if-eqz v192, :cond_39

    .line 901
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 902
    const/4 v6, 0x0

    move-object/from16 v0, v192

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 906
    :goto_32
    const/4 v6, 0x1

    return v6

    .line 897
    .end local v192    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v300    # "stable":Z
    :cond_38
    const/4 v0, 0x0

    move/16 v300, v0

    .restart local v300    # "stable":Z
    goto :goto_31

    .line 904
    .restart local v192    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    :cond_39
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_32

    .line 910
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v17    # "userId":I
    .end local v107    # "name":Ljava/lang/String;
    .end local v180    # "b":Landroid/os/IBinder;
    .end local v192    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v300    # "stable":Z
    :sswitch_39
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 911
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v107

    .line 912
    .restart local v107    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 913
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 914
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v107

    move/from16 v2, v17

    move-object/from16 v3, v73

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v192

    .line 915
    .restart local v192    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 916
    if-eqz v192, :cond_3a

    .line 917
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 918
    const/4 v6, 0x0

    move-object/from16 v0, v192

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 922
    :goto_33
    const/4 v6, 0x1

    return v6

    .line 920
    :cond_3a
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_33

    .line 926
    .end local v17    # "userId":I
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v107    # "name":Ljava/lang/String;
    .end local v192    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    :sswitch_3a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 927
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v180

    .line 928
    .restart local v180    # "b":Landroid/os/IBinder;
    invoke-static/range {v180 .. v180}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 930
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/app/IActivityManager$ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    move-object/16 v269, v0

    .line 931
    .local v269, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v269

    invoke-virtual {v0, v7, v1}, Landroid/app/ActivityManagerNative;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V

    .line 932
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 933
    const/4 v6, 0x1

    return v6

    .line 937
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v180    # "b":Landroid/os/IBinder;
    .end local v269    # "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    :sswitch_3b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 938
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v180

    .line 939
    .restart local v180    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v299, v0

    .line 940
    .local v299, "stable":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v317, v0

    .line 941
    .local v317, "unstable":I
    move-object/from16 v0, p0

    move-object/from16 v1, v180

    move/from16 v2, v299

    move/from16 v3, v317

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->refContentProvider(Landroid/os/IBinder;II)Z

    move-result v0

    move/16 v283, v0

    .line 942
    .restart local v283    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 943
    move/from16 v0, v283

    if-eqz v0, :cond_3b

    const/4 v6, 0x1

    :goto_34
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 944
    const/4 v6, 0x1

    return v6

    .line 943
    :cond_3b
    const/4 v6, 0x0

    goto :goto_34

    .line 948
    .end local v180    # "b":Landroid/os/IBinder;
    .end local v283    # "res":Z
    .end local v299    # "stable":I
    .end local v317    # "unstable":I
    :sswitch_3c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 949
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v180

    .line 950
    .restart local v180    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v180

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 951
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 952
    const/4 v6, 0x1

    return v6

    .line 956
    .end local v180    # "b":Landroid/os/IBinder;
    :sswitch_3d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 957
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v180

    .line 958
    .restart local v180    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v180

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->appNotRespondingViaProvider(Landroid/os/IBinder;)V

    .line 959
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 960
    const/4 v6, 0x1

    return v6

    .line 964
    .end local v180    # "b":Landroid/os/IBinder;
    :sswitch_3e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 965
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v180

    .line 966
    .restart local v180    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3c

    const/4 v0, 0x1

    move/16 v300, v0

    .line 967
    .restart local v300    # "stable":Z
    :goto_35
    move-object/from16 v0, p0

    move-object/from16 v1, v180

    move/from16 v2, v300

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeContentProvider(Landroid/os/IBinder;Z)V

    .line 968
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 969
    const/4 v6, 0x1

    return v6

    .line 966
    .end local v300    # "stable":Z
    :cond_3c
    const/4 v0, 0x0

    move/16 v300, v0

    .restart local v300    # "stable":Z
    goto :goto_35

    .line 973
    .end local v180    # "b":Landroid/os/IBinder;
    .end local v300    # "stable":Z
    :sswitch_3f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 974
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v107

    .line 975
    .restart local v107    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 976
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v107

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 977
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 978
    const/4 v6, 0x1

    return v6

    .line 982
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v107    # "name":Ljava/lang/String;
    :sswitch_40
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 983
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v189

    check-cast v189, Landroid/content/ComponentName;

    .line 984
    .local v189, "comp":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object/from16 v1, v189

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v0

    move-object/16 v262, v0

    .line 985
    .local v262, "pi":Landroid/app/PendingIntent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 986
    move-object/from16 v0, v262

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    .line 987
    const/4 v6, 0x1

    return v6

    .line 991
    .end local v189    # "comp":Landroid/content/ComponentName;
    .end local v262    # "pi":Landroid/app/PendingIntent;
    :sswitch_41
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 992
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v180

    .line 993
    .restart local v180    # "b":Landroid/os/IBinder;
    invoke-static/range {v180 .. v180}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 994
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Landroid/content/Intent;

    .line 995
    .local v70, "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 996
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 997
    .restart local v8    # "callingPackage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v68, p0

    move-object/from16 v69, v7

    move-object/from16 v71, v10

    move-object/from16 v72, v8

    move/from16 v73, v17

    .line 998
    invoke-virtual/range {v68 .. v73}, Landroid/app/ActivityManagerNative;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v188

    .line 999
    .restart local v188    # "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1000
    move-object/from16 v0, v188

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 1001
    const/4 v6, 0x1

    return v6

    .line 1005
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v70    # "service":Landroid/content/Intent;
    .end local v180    # "b":Landroid/os/IBinder;
    .end local v188    # "cn":Landroid/content/ComponentName;
    :sswitch_42
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1006
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v180

    .line 1007
    .restart local v180    # "b":Landroid/os/IBinder;
    invoke-static/range {v180 .. v180}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1008
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Landroid/content/Intent;

    .line 1009
    .restart local v70    # "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1010
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1011
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v70

    move/from16 v2, v17

    invoke-virtual {v0, v7, v1, v10, v2}, Landroid/app/ActivityManagerNative;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    move/16 v277, v0

    .line 1012
    .restart local v277    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1013
    move-object/from16 v0, p3

    move/from16 v1, v277

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1014
    const/4 v6, 0x1

    return v6

    .line 1018
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v70    # "service":Landroid/content/Intent;
    .end local v180    # "b":Landroid/os/IBinder;
    .end local v277    # "res":I
    :sswitch_43
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1019
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v72

    .line 1020
    .local v72, "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1021
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v302, v0

    .line 1022
    .local v302, "startId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    move/from16 v3, v302

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z

    move-result v0

    move/16 v283, v0

    .line 1023
    .restart local v283    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1024
    move/from16 v0, v283

    if-eqz v0, :cond_3d

    const/4 v6, 0x1

    :goto_36
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1025
    const/4 v6, 0x1

    return v6

    .line 1024
    :cond_3d
    const/4 v6, 0x0

    goto :goto_36

    .line 1029
    .end local v72    # "className":Landroid/content/ComponentName;
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v283    # "res":Z
    .end local v302    # "startId":I
    :sswitch_44
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1030
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v72

    .line 1031
    .restart local v72    # "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1032
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v74

    .line 1033
    .restart local v74    # "id":I
    const/16 v75, 0x0

    .line 1034
    .local v75, "notification":Landroid/app/Notification;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3e

    .line 1035
    sget-object v6, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v75

    .end local v75    # "notification":Landroid/app/Notification;
    check-cast v75, Landroid/app/Notification;

    .line 1037
    :cond_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3f

    const/16 v76, 0x1

    .local v76, "removeNotification":Z
    :goto_37
    move-object/from16 v71, p0

    .line 1038
    invoke-virtual/range {v71 .. v76}, Landroid/app/ActivityManagerNative;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V

    .line 1039
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1040
    const/4 v6, 0x1

    return v6

    .line 1037
    .end local v76    # "removeNotification":Z
    :cond_3f
    const/16 v76, 0x0

    .restart local v76    # "removeNotification":Z
    goto :goto_37

    .line 1044
    .end local v72    # "className":Landroid/content/ComponentName;
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v74    # "id":I
    .end local v76    # "removeNotification":Z
    :sswitch_45
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1045
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v180

    .line 1046
    .restart local v180    # "b":Landroid/os/IBinder;
    invoke-static/range {v180 .. v180}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1047
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1048
    .restart local v73    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Landroid/content/Intent;

    .line 1049
    .restart local v70    # "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1050
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v180

    .line 1051
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v83

    .line 1052
    .restart local v83    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1053
    .restart local v8    # "callingPackage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1054
    .restart local v17    # "userId":I
    invoke-static/range {v180 .. v180}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v82

    .local v82, "conn":Landroid/app/IServiceConnection;
    move-object/from16 v77, p0

    move-object/from16 v78, v7

    move-object/from16 v79, v73

    move-object/from16 v80, v70

    move-object/from16 v81, v10

    move-object/from16 v84, v8

    move/from16 v85, v17

    .line 1055
    invoke-virtual/range {v77 .. v85}, Landroid/app/ActivityManagerNative;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;I)I

    move-result v0

    move/16 v277, v0

    .line 1057
    .restart local v277    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1058
    move-object/from16 v0, p3

    move/from16 v1, v277

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1059
    const/4 v6, 0x1

    return v6

    .line 1063
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v70    # "service":Landroid/content/Intent;
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v82    # "conn":Landroid/app/IServiceConnection;
    .end local v83    # "fl":I
    .end local v180    # "b":Landroid/os/IBinder;
    .end local v277    # "res":I
    :sswitch_46
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1064
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v180

    .line 1065
    .restart local v180    # "b":Landroid/os/IBinder;
    invoke-static/range {v180 .. v180}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v82

    .line 1066
    .restart local v82    # "conn":Landroid/app/IServiceConnection;
    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindService(Landroid/app/IServiceConnection;)Z

    move-result v0

    move/16 v283, v0

    .line 1067
    .restart local v283    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1068
    move/from16 v0, v283

    if-eqz v0, :cond_40

    const/4 v6, 0x1

    :goto_38
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1069
    const/4 v6, 0x1

    return v6

    .line 1068
    :cond_40
    const/4 v6, 0x0

    goto :goto_38

    .line 1073
    .end local v82    # "conn":Landroid/app/IServiceConnection;
    .end local v180    # "b":Landroid/os/IBinder;
    .end local v283    # "res":Z
    :sswitch_47
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1074
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1075
    .restart local v73    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 1076
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    move-object/16 v293, v0

    .line 1077
    .local v293, "service":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v293

    invoke-virtual {v0, v1, v9, v2}, Landroid/app/ActivityManagerNative;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 1078
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1079
    const/4 v6, 0x1

    return v6

    .line 1083
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v293    # "service":Landroid/os/IBinder;
    :sswitch_48
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1084
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1085
    .restart local v73    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 1086
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_41

    const/16 v197, 0x1

    .line 1087
    .local v197, "doRebind":Z
    :goto_39
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move/from16 v2, v197

    invoke-virtual {v0, v1, v9, v2}, Landroid/app/ActivityManagerNative;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 1088
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1089
    const/4 v6, 0x1

    return v6

    .line 1086
    .end local v197    # "doRebind":Z
    :cond_41
    const/16 v197, 0x0

    .restart local v197    # "doRebind":Z
    goto :goto_39

    .line 1093
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v197    # "doRebind":Z
    :sswitch_49
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1094
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1095
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v94

    .line 1096
    .local v94, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v302, v0

    .line 1097
    .restart local v302    # "startId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v277, v0

    .line 1098
    .restart local v277    # "res":I
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move/from16 v2, v94

    move/from16 v3, v302

    move/from16 v4, v277

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->serviceDoneExecuting(Landroid/os/IBinder;III)V

    .line 1099
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1100
    const/4 v6, 0x1

    return v6

    .line 1104
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v94    # "type":I
    .end local v277    # "res":I
    .end local v302    # "startId":I
    :sswitch_4a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1105
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v72

    .line 1106
    .restart local v72    # "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v86

    .line 1107
    .local v86, "profileFile":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v83

    .line 1108
    .restart local v83    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v88

    .line 1109
    .local v88, "arguments":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v180

    .line 1110
    .restart local v180    # "b":Landroid/os/IBinder;
    invoke-static/range {v180 .. v180}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v89

    .line 1111
    .local v89, "w":Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v180

    .line 1112
    invoke-static/range {v180 .. v180}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v90

    .line 1113
    .local v90, "c":Landroid/app/IUiAutomationConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1114
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v92

    .local v92, "abiOverride":Ljava/lang/String;
    move-object/from16 v84, p0

    move-object/from16 v85, v72

    move/from16 v87, v83

    move/from16 v91, v17

    .line 1115
    invoke-virtual/range {v84 .. v92}, Landroid/app/ActivityManagerNative;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;ILjava/lang/String;)Z

    move-result v0

    move/16 v283, v0

    .line 1117
    .restart local v283    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1118
    move/from16 v0, v283

    if-eqz v0, :cond_42

    const/4 v6, 0x1

    :goto_3a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1119
    const/4 v6, 0x1

    return v6

    .line 1118
    :cond_42
    const/4 v6, 0x0

    goto :goto_3a

    .line 1124
    .end local v17    # "userId":I
    .end local v72    # "className":Landroid/content/ComponentName;
    .end local v83    # "fl":I
    .end local v86    # "profileFile":Ljava/lang/String;
    .end local v88    # "arguments":Landroid/os/Bundle;
    .end local v89    # "w":Landroid/app/IInstrumentationWatcher;
    .end local v90    # "c":Landroid/app/IUiAutomationConnection;
    .end local v92    # "abiOverride":Ljava/lang/String;
    .end local v180    # "b":Landroid/os/IBinder;
    .end local v283    # "res":Z
    :sswitch_4b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v180

    .line 1126
    .restart local v180    # "b":Landroid/os/IBinder;
    invoke-static/range {v180 .. v180}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1127
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 1128
    .restart local v53    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    move-object/16 v291, v0

    .line 1129
    .local v291, "results":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move/from16 v1, v53

    move-object/from16 v2, v291

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/ActivityManagerNative;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V

    .line 1130
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1131
    const/4 v6, 0x1

    return v6

    .line 1135
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v53    # "resultCode":I
    .end local v180    # "b":Landroid/os/IBinder;
    .end local v291    # "results":Landroid/os/Bundle;
    :sswitch_4c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1136
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v39

    .line 1137
    .local v39, "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1138
    const/4 v6, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1139
    const/4 v6, 0x1

    return v6

    .line 1143
    .end local v39    # "config":Landroid/content/res/Configuration;
    :sswitch_4d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1144
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/res/Configuration;

    .line 1145
    .restart local v39    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 1146
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1147
    const/4 v6, 0x1

    return v6

    .line 1151
    .end local v39    # "config":Landroid/content/res/Configuration;
    :sswitch_4e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1153
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v276, v0

    .line 1154
    .local v276, "requestedOrientation":I
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move/from16 v2, v276

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setRequestedOrientation(Landroid/os/IBinder;I)V

    .line 1155
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1156
    const/4 v6, 0x1

    return v6

    .line 1160
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v276    # "requestedOrientation":I
    :sswitch_4f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1162
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRequestedOrientation(Landroid/os/IBinder;)I

    move-result v0

    move/16 v275, v0

    .line 1163
    .local v275, "req":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1164
    move-object/from16 v0, p3

    move/from16 v1, v275

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1165
    const/4 v6, 0x1

    return v6

    .line 1169
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v275    # "req":I
    :sswitch_50
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1171
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v188

    .line 1172
    .restart local v188    # "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1173
    move-object/from16 v0, v188

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 1174
    const/4 v6, 0x1

    return v6

    .line 1178
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v188    # "cn":Landroid/content/ComponentName;
    :sswitch_51
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1180
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1181
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1182
    const/4 v6, 0x1

    return v6

    .line 1186
    .end local v73    # "token":Landroid/os/IBinder;
    :sswitch_52
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v94

    .line 1188
    .restart local v94    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1189
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1190
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1191
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1194
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_43

    .line 1195
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v99

    check-cast v99, [Landroid/content/Intent;

    .line 1196
    .local v99, "requestIntents":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v100

    .line 1201
    .end local v99    # "requestIntents":[Landroid/content/Intent;
    :goto_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v83

    .line 1202
    .restart local v83    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_44

    .line 1203
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 1204
    :goto_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v93, p0

    move-object/from16 v95, v32

    move-object/from16 v96, v73

    move-object/from16 v97, v12

    move/from16 v98, v13

    move/from16 v101, v83

    move-object/from16 v102, v16

    move/from16 v103, v17

    .line 1205
    invoke-virtual/range {v93 .. v103}, Landroid/app/ActivityManagerNative;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v280, v0

    .line 1208
    .local v280, "res":Landroid/content/IIntentSender;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1209
    move-object/from16 v0, v280

    if-eqz v0, :cond_45

    invoke-interface/range {v280 .. v280}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :goto_3d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1210
    const/4 v6, 0x1

    return v6

    .line 1198
    .end local v17    # "userId":I
    .end local v83    # "fl":I
    .end local v280    # "res":Landroid/content/IIntentSender;
    :cond_43
    const/16 v99, 0x0

    .line 1199
    .local v99, "requestIntents":[Landroid/content/Intent;
    const/16 v100, 0x0

    .local v100, "requestResolvedTypes":[Ljava/lang/String;
    goto :goto_3b

    .line 1203
    .end local v99    # "requestIntents":[Landroid/content/Intent;
    .end local v100    # "requestResolvedTypes":[Ljava/lang/String;
    .restart local v83    # "fl":I
    :cond_44
    const/16 v16, 0x0

    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_3c

    .line 1209
    .end local v16    # "options":Landroid/os/Bundle;
    .restart local v17    # "userId":I
    .restart local v280    # "res":Landroid/content/IIntentSender;
    :cond_45
    const/4 v6, 0x0

    goto :goto_3d

    .line 1214
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v83    # "fl":I
    .end local v94    # "type":I
    .end local v280    # "res":Landroid/content/IIntentSender;
    :sswitch_53
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1215
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v271, v0

    .line 1217
    .local v271, "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v271

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->cancelIntentSender(Landroid/content/IIntentSender;)V

    .line 1218
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1219
    const/4 v6, 0x1

    return v6

    .line 1223
    .end local v271    # "r":Landroid/content/IIntentSender;
    :sswitch_54
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1224
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v271, v0

    .line 1226
    .restart local v271    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v271

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;

    move-result-object v0

    move-object/16 v282, v0

    .line 1227
    .local v282, "res":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1228
    move-object/from16 v0, p3

    move-object/from16 v1, v282

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1229
    const/4 v6, 0x1

    return v6

    .line 1233
    .end local v271    # "r":Landroid/content/IIntentSender;
    .end local v282    # "res":Ljava/lang/String;
    :sswitch_55
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1234
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v271, v0

    .line 1236
    .restart local v271    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v271

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v0

    move/16 v277, v0

    .line 1237
    .restart local v277    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1238
    move-object/from16 v0, p3

    move/from16 v1, v277

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1239
    const/4 v6, 0x1

    return v6

    .line 1243
    .end local v271    # "r":Landroid/content/IIntentSender;
    .end local v277    # "res":I
    :sswitch_56
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 1245
    .restart local v42    # "callingPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 1246
    .restart local v43    # "callingUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1247
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_46

    const/16 v105, 0x1

    .line 1248
    .local v105, "allowAll":Z
    :goto_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_47

    const/16 v106, 0x1

    .line 1249
    .local v106, "requireFull":Z
    :goto_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v107

    .line 1250
    .restart local v107    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v108

    .local v108, "callerPackage":Ljava/lang/String;
    move-object/from16 v101, p0

    move/from16 v102, v42

    move/from16 v103, v43

    move/from16 v104, v17

    .line 1251
    invoke-virtual/range {v101 .. v108}, Landroid/app/ActivityManagerNative;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    move/16 v277, v0

    .line 1253
    .restart local v277    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1254
    move-object/from16 v0, p3

    move/from16 v1, v277

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1255
    const/4 v6, 0x1

    return v6

    .line 1247
    .end local v105    # "allowAll":Z
    .end local v106    # "requireFull":Z
    .end local v107    # "name":Ljava/lang/String;
    .end local v108    # "callerPackage":Ljava/lang/String;
    .end local v277    # "res":I
    :cond_46
    const/16 v105, 0x0

    .restart local v105    # "allowAll":Z
    goto :goto_3e

    .line 1248
    :cond_47
    const/16 v106, 0x0

    .restart local v106    # "requireFull":Z
    goto :goto_3f

    .line 1259
    .end local v17    # "userId":I
    .end local v42    # "callingPid":I
    .end local v43    # "callingUid":I
    .end local v105    # "allowAll":Z
    .end local v106    # "requireFull":Z
    :sswitch_57
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1260
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v239

    .line 1261
    .local v239, "max":I
    move-object/from16 v0, p0

    move/from16 v1, v239

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setProcessLimit(I)V

    .line 1262
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1263
    const/4 v6, 0x1

    return v6

    .line 1267
    .end local v239    # "max":I
    :sswitch_58
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1268
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessLimit()I

    move-result v227

    .line 1269
    .local v227, "limit":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1270
    move-object/from16 v0, p3

    move/from16 v1, v227

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1271
    const/4 v6, 0x1

    return v6

    .line 1275
    .end local v227    # "limit":I
    :sswitch_59
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1276
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1277
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v111

    .line 1278
    .local v111, "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_48

    const/16 v219, 0x1

    .line 1279
    .local v219, "isForeground":Z
    :goto_40
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move/from16 v2, v111

    move/from16 v3, v219

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setProcessForeground(Landroid/os/IBinder;IZ)V

    .line 1280
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1281
    const/4 v6, 0x1

    return v6

    .line 1278
    .end local v219    # "isForeground":Z
    :cond_48
    const/16 v219, 0x0

    .restart local v219    # "isForeground":Z
    goto :goto_40

    .line 1285
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v111    # "pid":I
    .end local v219    # "isForeground":Z
    :sswitch_5a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 1287
    .restart local v35    # "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v111

    .line 1288
    .restart local v111    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v112

    .line 1289
    .local v112, "uid":I
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v111

    move/from16 v3, v112

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    move/16 v277, v0

    .line 1290
    .restart local v277    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1291
    move-object/from16 v0, p3

    move/from16 v1, v277

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1292
    const/4 v6, 0x1

    return v6

    .line 1296
    .end local v35    # "perm":Ljava/lang/String;
    .end local v111    # "pid":I
    .end local v112    # "uid":I
    .end local v277    # "res":I
    :sswitch_5b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 1298
    .restart local v35    # "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v111

    .line 1299
    .restart local v111    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v112

    .line 1300
    .restart local v112    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1301
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v111

    move/from16 v3, v112

    move-object/from16 v4, v73

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->checkPermissionWithToken(Ljava/lang/String;IILandroid/os/IBinder;)I

    move-result v0

    move/16 v277, v0

    .line 1302
    .restart local v277    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1303
    move-object/from16 v0, p3

    move/from16 v1, v277

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1304
    const/4 v6, 0x1

    return v6

    .line 1308
    .end local v35    # "perm":Ljava/lang/String;
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v111    # "pid":I
    .end local v112    # "uid":I
    .end local v277    # "res":I
    :sswitch_5c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1309
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/net/Uri;

    .line 1310
    .local v110, "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v111

    .line 1311
    .restart local v111    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v112

    .line 1312
    .restart local v112    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v113

    .line 1313
    .local v113, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1314
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v115

    .local v115, "callerToken":Landroid/os/IBinder;
    move-object/from16 v109, p0

    move/from16 v114, v17

    .line 1315
    invoke-virtual/range {v109 .. v115}, Landroid/app/ActivityManagerNative;->checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I

    move-result v0

    move/16 v277, v0

    .line 1316
    .restart local v277    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1317
    move-object/from16 v0, p3

    move/from16 v1, v277

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1318
    const/4 v6, 0x1

    return v6

    .line 1322
    .end local v17    # "userId":I
    .end local v110    # "uri":Landroid/net/Uri;
    .end local v111    # "pid":I
    .end local v112    # "uid":I
    .end local v113    # "mode":I
    .end local v115    # "callerToken":Landroid/os/IBinder;
    .end local v277    # "res":I
    :sswitch_5d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1323
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1325
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1324
    invoke-static {v6}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v249

    .line 1326
    .local v249, "observer":Landroid/content/pm/IPackageDataObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1327
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v249

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z

    move-result v0

    move/16 v283, v0

    .line 1328
    .restart local v283    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1329
    move/from16 v0, v283

    if-eqz v0, :cond_49

    const/4 v6, 0x1

    :goto_41
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1330
    const/4 v6, 0x1

    return v6

    .line 1329
    :cond_49
    const/4 v6, 0x0

    goto :goto_41

    .line 1334
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v249    # "observer":Landroid/content/pm/IPackageDataObserver;
    .end local v283    # "res":Z
    :sswitch_5e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1335
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v180

    .line 1336
    .restart local v180    # "b":Landroid/os/IBinder;
    invoke-static/range {v180 .. v180}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1337
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v118

    .line 1338
    .local v118, "targetPkg":Ljava/lang/String;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/net/Uri;

    .line 1339
    .restart local v110    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v113

    .line 1340
    .restart local v113    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v116, p0

    move-object/from16 v117, v7

    move-object/from16 v119, v110

    move/from16 v120, v113

    move/from16 v121, v17

    .line 1341
    invoke-virtual/range {v116 .. v121}, Landroid/app/ActivityManagerNative;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 1342
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1343
    const/4 v6, 0x1

    return v6

    .line 1347
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v17    # "userId":I
    .end local v110    # "uri":Landroid/net/Uri;
    .end local v113    # "mode":I
    .end local v118    # "targetPkg":Ljava/lang/String;
    .end local v180    # "b":Landroid/os/IBinder;
    :sswitch_5f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1348
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v180

    .line 1349
    .restart local v180    # "b":Landroid/os/IBinder;
    invoke-static/range {v180 .. v180}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1350
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/net/Uri;

    .line 1351
    .restart local v110    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v113

    .line 1352
    .restart local v113    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1353
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v110

    move/from16 v2, v113

    move/from16 v3, v17

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/ActivityManagerNative;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;II)V

    .line 1354
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1355
    const/4 v6, 0x1

    return v6

    .line 1359
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v17    # "userId":I
    .end local v110    # "uri":Landroid/net/Uri;
    .end local v113    # "mode":I
    .end local v180    # "b":Landroid/os/IBinder;
    :sswitch_60
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1360
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/net/Uri;

    .line 1361
    .restart local v110    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v113

    .line 1362
    .restart local v113    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1363
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v110

    move/from16 v2, v113

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->takePersistableUriPermission(Landroid/net/Uri;II)V

    .line 1364
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1365
    const/4 v6, 0x1

    return v6

    .line 1369
    .end local v17    # "userId":I
    .end local v110    # "uri":Landroid/net/Uri;
    .end local v113    # "mode":I
    :sswitch_61
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1370
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/net/Uri;

    .line 1371
    .restart local v110    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v113

    .line 1372
    .restart local v113    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1373
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v110

    move/from16 v2, v113

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->releasePersistableUriPermission(Landroid/net/Uri;II)V

    .line 1374
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1375
    const/4 v6, 0x1

    return v6

    .line 1379
    .end local v17    # "userId":I
    .end local v110    # "uri":Landroid/net/Uri;
    .end local v113    # "mode":I
    :sswitch_62
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1380
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1381
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4a

    const/16 v210, 0x1

    .line 1382
    .local v210, "incoming":Z
    :goto_42
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v210

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getPersistedUriPermissions(Ljava/lang/String;Z)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    move-object/16 v259, v0

    .line 1384
    .local v259, "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1385
    const/4 v6, 0x1

    move-object/from16 v0, v259

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1386
    const/4 v6, 0x1

    return v6

    .line 1381
    .end local v210    # "incoming":Z
    .end local v259    # "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    :cond_4a
    const/16 v210, 0x0

    .restart local v210    # "incoming":Z
    goto :goto_42

    .line 1390
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v210    # "incoming":Z
    :sswitch_63
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1391
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v180

    .line 1392
    .restart local v180    # "b":Landroid/os/IBinder;
    invoke-static/range {v180 .. v180}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1393
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4b

    const/4 v0, 0x1

    move/16 v323, v0

    .line 1394
    .local v323, "waiting":Z
    :goto_43
    move-object/from16 v0, p0

    move/from16 v1, v323

    invoke-virtual {v0, v7, v1}, Landroid/app/ActivityManagerNative;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V

    .line 1395
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1396
    const/4 v6, 0x1

    return v6

    .line 1393
    .end local v323    # "waiting":Z
    :cond_4b
    const/4 v0, 0x0

    move/16 v323, v0

    .restart local v323    # "waiting":Z
    goto :goto_43

    .line 1400
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v180    # "b":Landroid/os/IBinder;
    .end local v323    # "waiting":Z
    :sswitch_64
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1401
    new-instance v242, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct/range {v242 .. v242}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1402
    .local v242, "mi":Landroid/app/ActivityManager$MemoryInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v242

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1403
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1404
    const/4 v6, 0x0

    move-object/from16 v0, v242

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1405
    const/4 v6, 0x1

    return v6

    .line 1409
    .end local v242    # "mi":Landroid/app/ActivityManager$MemoryInfo;
    :sswitch_65
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1410
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->unhandledBack()V

    .line 1411
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1412
    const/4 v6, 0x1

    return v6

    .line 1416
    :sswitch_66
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1417
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v110

    .line 1418
    .restart local v110    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v110

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->openContentUri(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    move-object/16 v261, v0

    .line 1419
    .local v261, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1420
    move-object/from16 v0, v261

    if-eqz v0, :cond_4c

    .line 1421
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1422
    const/4 v6, 0x1

    move-object/from16 v0, v261

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1426
    :goto_44
    const/4 v6, 0x1

    return v6

    .line 1424
    :cond_4c
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_44

    .line 1430
    .end local v110    # "uri":Landroid/net/Uri;
    .end local v261    # "pfd":Landroid/os/ParcelFileDescriptor;
    :sswitch_67
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1431
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4d

    const/4 v6, 0x1

    :goto_45
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->setLockScreenShown(Z)V

    .line 1432
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1433
    const/4 v6, 0x1

    return v6

    .line 1431
    :cond_4d
    const/4 v6, 0x0

    goto :goto_45

    .line 1437
    :sswitch_68
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1438
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v266, v0

    .line 1439
    .local v266, "pn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4e

    const/4 v0, 0x1

    move/16 v325, v0

    .line 1440
    .local v325, "wfd":Z
    :goto_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4f

    const/4 v0, 0x1

    move/16 v257, v0

    .line 1441
    .local v257, "per":Z
    :goto_47
    move-object/from16 v0, p0

    move-object/from16 v1, v266

    move/from16 v2, v325

    move/from16 v3, v257

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 1442
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1443
    const/4 v6, 0x1

    return v6

    .line 1439
    .end local v257    # "per":Z
    .end local v325    # "wfd":Z
    :cond_4e
    const/4 v0, 0x0

    move/16 v325, v0

    .restart local v325    # "wfd":Z
    goto :goto_46

    .line 1440
    :cond_4f
    const/4 v0, 0x0

    move/16 v257, v0

    .restart local v257    # "per":Z
    goto :goto_47

    .line 1447
    .end local v257    # "per":Z
    .end local v266    # "pn":Ljava/lang/String;
    .end local v325    # "wfd":Z
    :sswitch_69
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1448
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_50

    const/16 v199, 0x1

    .line 1449
    .local v199, "enabled":Z
    :goto_48
    move-object/from16 v0, p0

    move/from16 v1, v199

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setAlwaysFinish(Z)V

    .line 1450
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1451
    const/4 v6, 0x1

    return v6

    .line 1448
    .end local v199    # "enabled":Z
    :cond_50
    const/16 v199, 0x0

    .restart local v199    # "enabled":Z
    goto :goto_48

    .line 1455
    .end local v199    # "enabled":Z
    :sswitch_6a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1457
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1456
    invoke-static {v6}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v0

    move-object/16 v324, v0

    .line 1458
    .local v324, "watcher":Landroid/app/IActivityController;
    move-object/from16 v0, p0

    move-object/from16 v1, v324

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setActivityController(Landroid/app/IActivityController;)V

    .line 1459
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1460
    const/4 v6, 0x1

    return v6

    .line 1464
    .end local v324    # "watcher":Landroid/app/IActivityController;
    :sswitch_6b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1465
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->enterSafeMode()V

    .line 1466
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1467
    const/4 v6, 0x1

    return v6

    .line 1471
    :sswitch_6c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1473
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1472
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v218

    .line 1474
    .local v218, "is":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v298, v0

    .line 1475
    .local v298, "sourceUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v297, v0

    .line 1476
    .local v297, "sourcePkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v306, v0

    .line 1477
    .local v306, "tag":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v218

    move/from16 v2, v298

    move-object/from16 v3, v297

    move-object/from16 v4, v306

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/content/IIntentSender;ILjava/lang/String;Ljava/lang/String;)V

    .line 1478
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1479
    const/4 v6, 0x1

    return v6

    .line 1483
    .end local v218    # "is":Landroid/content/IIntentSender;
    .end local v297    # "sourcePkg":Ljava/lang/String;
    .end local v298    # "sourceUid":I
    .end local v306    # "tag":Ljava/lang/String;
    :sswitch_6d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1485
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1484
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v218

    .line 1486
    .restart local v218    # "is":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v298, v0

    .line 1487
    .restart local v298    # "sourceUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v306, v0

    .line 1488
    .restart local v306    # "tag":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v218

    move/from16 v2, v298

    move-object/from16 v3, v306

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->noteAlarmStart(Landroid/content/IIntentSender;ILjava/lang/String;)V

    .line 1489
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1490
    const/4 v6, 0x1

    return v6

    .line 1494
    .end local v218    # "is":Landroid/content/IIntentSender;
    .end local v298    # "sourceUid":I
    .end local v306    # "tag":Ljava/lang/String;
    :sswitch_6e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1496
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1495
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v218

    .line 1497
    .restart local v218    # "is":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v298, v0

    .line 1498
    .restart local v298    # "sourceUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v306, v0

    .line 1499
    .restart local v306    # "tag":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v218

    move/from16 v2, v298

    move-object/from16 v3, v306

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->noteAlarmFinish(Landroid/content/IIntentSender;ILjava/lang/String;)V

    .line 1500
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1501
    const/4 v6, 0x1

    return v6

    .line 1505
    .end local v218    # "is":Landroid/content/IIntentSender;
    .end local v298    # "sourceUid":I
    .end local v306    # "tag":Ljava/lang/String;
    :sswitch_6f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1506
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    move-object/16 v263, v0

    .line 1507
    .local v263, "pids":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v273, v0

    .line 1508
    .local v273, "reason":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_51

    const/4 v0, 0x1

    move/16 v292, v0

    .line 1509
    .local v292, "secure":Z
    :goto_49
    move-object/from16 v0, p0

    move-object/from16 v1, v263

    move-object/from16 v2, v273

    move/from16 v3, v292

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killPids([ILjava/lang/String;Z)Z

    move-result v0

    move/16 v283, v0

    .line 1510
    .restart local v283    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1511
    move/from16 v0, v283

    if-eqz v0, :cond_52

    const/4 v6, 0x1

    :goto_4a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1512
    const/4 v6, 0x1

    return v6

    .line 1508
    .end local v283    # "res":Z
    .end local v292    # "secure":Z
    :cond_51
    const/4 v0, 0x0

    move/16 v292, v0

    .restart local v292    # "secure":Z
    goto :goto_49

    .line 1511
    .restart local v283    # "res":Z
    :cond_52
    const/4 v6, 0x0

    goto :goto_4a

    .line 1516
    .end local v263    # "pids":[I
    .end local v273    # "reason":Ljava/lang/String;
    .end local v283    # "res":Z
    .end local v292    # "secure":Z
    :sswitch_70
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1517
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v273, v0

    .line 1518
    .restart local v273    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v273

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->killProcessesBelowForeground(Ljava/lang/String;)Z

    move-result v0

    move/16 v283, v0

    .line 1519
    .restart local v283    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1520
    move/from16 v0, v283

    if-eqz v0, :cond_53

    const/4 v6, 0x1

    :goto_4b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1521
    const/4 v6, 0x1

    return v6

    .line 1520
    :cond_53
    const/4 v6, 0x0

    goto :goto_4b

    .line 1525
    .end local v273    # "reason":Ljava/lang/String;
    .end local v283    # "res":Z
    :sswitch_71
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1526
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v175

    .line 1527
    .local v175, "app":Landroid/os/IBinder;
    new-instance v187, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v187

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1528
    .local v187, "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v175

    move-object/from16 v2, v187

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 1529
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1530
    const/4 v6, 0x1

    return v6

    .line 1534
    .end local v175    # "app":Landroid/os/IBinder;
    .end local v187    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    :sswitch_72
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1535
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v175

    .line 1536
    .restart local v175    # "app":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v306, v0

    .line 1537
    .restart local v306    # "tag":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_54

    const/4 v0, 0x1

    move/16 v305, v0

    .line 1538
    .local v305, "system":Z
    :goto_4c
    new-instance v187, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v187

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1539
    .restart local v187    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v175

    move-object/from16 v2, v306

    move/from16 v3, v305

    move-object/from16 v4, v187

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$CrashInfo;)Z

    move-result v0

    move/16 v283, v0

    .line 1540
    .restart local v283    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1541
    move/from16 v0, v283

    if-eqz v0, :cond_55

    const/4 v6, 0x1

    :goto_4d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1542
    const/4 v6, 0x1

    return v6

    .line 1537
    .end local v187    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v283    # "res":Z
    .end local v305    # "system":Z
    :cond_54
    const/4 v0, 0x0

    move/16 v305, v0

    .restart local v305    # "system":Z
    goto :goto_4c

    .line 1541
    .restart local v187    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    .restart local v283    # "res":Z
    :cond_55
    const/4 v6, 0x0

    goto :goto_4d

    .line 1546
    .end local v175    # "app":Landroid/os/IBinder;
    .end local v187    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v283    # "res":Z
    .end local v305    # "system":Z
    .end local v306    # "tag":Ljava/lang/String;
    :sswitch_73
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1547
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v175

    .line 1548
    .restart local v175    # "app":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v322, v0

    .line 1549
    .local v322, "violationMask":I
    new-instance v216, Landroid/os/StrictMode$ViolationInfo;

    move-object/from16 v0, v216

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;)V

    .line 1550
    .local v216, "info":Landroid/os/StrictMode$ViolationInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v175

    move/from16 v2, v322

    move-object/from16 v3, v216

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V

    .line 1551
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1552
    const/4 v6, 0x1

    return v6

    .line 1556
    .end local v175    # "app":Landroid/os/IBinder;
    .end local v216    # "info":Landroid/os/StrictMode$ViolationInfo;
    .end local v322    # "violationMask":I
    :sswitch_74
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1557
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v295, v0

    .line 1558
    .local v295, "sig":I
    move-object/from16 v0, p0

    move/from16 v1, v295

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->signalPersistentProcesses(I)V

    .line 1559
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1560
    const/4 v6, 0x1

    return v6

    .line 1564
    .end local v295    # "sig":I
    :sswitch_75
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1565
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1566
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1567
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killBackgroundProcesses(Ljava/lang/String;I)V

    .line 1568
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1569
    const/4 v6, 0x1

    return v6

    .line 1573
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    :sswitch_76
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1574
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->killAllBackgroundProcesses()V

    .line 1575
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1576
    const/4 v6, 0x1

    return v6

    .line 1580
    :sswitch_77
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1581
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1582
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1583
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->forceStopPackage(Ljava/lang/String;I)V

    .line 1584
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1585
    const/4 v6, 0x1

    return v6

    .line 1589
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    :sswitch_78
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1591
    new-instance v211, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct/range {v211 .. v211}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 1592
    .local v211, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v211

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 1593
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1594
    const/4 v6, 0x0

    move-object/from16 v0, v211

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$RunningAppProcessInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1595
    const/4 v6, 0x1

    return v6

    .line 1599
    .end local v211    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :sswitch_79
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1600
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v190

    .line 1601
    .local v190, "config":Landroid/content/pm/ConfigurationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1602
    const/4 v6, 0x0

    move-object/from16 v0, v190

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ConfigurationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1603
    const/4 v6, 0x1

    return v6

    .line 1607
    .end local v190    # "config":Landroid/content/pm/ConfigurationInfo;
    :sswitch_7a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1608
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v120

    .line 1609
    .local v120, "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1610
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_56

    const/16 v122, 0x1

    .line 1611
    .local v122, "start":Z
    :goto_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v124

    .line 1612
    .local v124, "profileType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_57

    .line 1613
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ProfilerInfo;

    :goto_4f
    move-object/from16 v119, p0

    move/from16 v121, v17

    move-object/from16 v123, v15

    .line 1614
    invoke-virtual/range {v119 .. v124}, Landroid/app/ActivityManagerNative;->profileControl(Ljava/lang/String;IZLandroid/app/ProfilerInfo;I)Z

    move-result v0

    move/16 v283, v0

    .line 1615
    .restart local v283    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1616
    move/from16 v0, v283

    if-eqz v0, :cond_58

    const/4 v6, 0x1

    :goto_50
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1617
    const/4 v6, 0x1

    return v6

    .line 1610
    .end local v122    # "start":Z
    .end local v124    # "profileType":I
    .end local v283    # "res":Z
    :cond_56
    const/16 v122, 0x0

    .restart local v122    # "start":Z
    goto :goto_4e

    .line 1613
    .restart local v124    # "profileType":I
    :cond_57
    const/4 v15, 0x0

    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_4f

    .line 1616
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v283    # "res":Z
    :cond_58
    const/4 v6, 0x0

    goto :goto_50

    .line 1621
    .end local v17    # "userId":I
    .end local v120    # "process":Ljava/lang/String;
    .end local v122    # "start":Z
    .end local v124    # "profileType":I
    .end local v283    # "res":Z
    :sswitch_7b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1622
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->shutdown(I)Z

    move-result v0

    move/16 v283, v0

    .line 1623
    .restart local v283    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1624
    move/from16 v0, v283

    if-eqz v0, :cond_59

    const/4 v6, 0x1

    :goto_51
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1625
    const/4 v6, 0x1

    return v6

    .line 1624
    :cond_59
    const/4 v6, 0x0

    goto :goto_51

    .line 1629
    .end local v283    # "res":Z
    :sswitch_7c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1630
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopAppSwitches()V

    .line 1631
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1632
    const/4 v6, 0x1

    return v6

    .line 1636
    :sswitch_7d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1637
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->resumeAppSwitches()V

    .line 1638
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1639
    const/4 v6, 0x1

    return v6

    .line 1643
    :sswitch_7e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1644
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Landroid/content/Intent;

    .line 1645
    .restart local v70    # "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1646
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1647
    .restart local v8    # "callingPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v1, v10, v8}, Landroid/app/ActivityManagerNative;->peekService(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v182

    .line 1648
    .local v182, "binder":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1649
    move-object/from16 v0, p3

    move-object/from16 v1, v182

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1650
    const/4 v6, 0x1

    return v6

    .line 1654
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v70    # "service":Landroid/content/Intent;
    .end local v182    # "binder":Landroid/os/IBinder;
    :sswitch_7f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1655
    sget-object v6, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v215

    check-cast v215, Landroid/content/pm/ApplicationInfo;

    .line 1656
    .local v215, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v181

    .line 1657
    .local v181, "backupRestoreMode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v215

    move/from16 v2, v181

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->bindBackupAgent(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v0

    move/16 v304, v0

    .line 1658
    .local v304, "success":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1659
    move/from16 v0, v304

    if-eqz v0, :cond_5a

    const/4 v6, 0x1

    :goto_52
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1660
    const/4 v6, 0x1

    return v6

    .line 1659
    :cond_5a
    const/4 v6, 0x0

    goto :goto_52

    .line 1664
    .end local v181    # "backupRestoreMode":I
    .end local v215    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v304    # "success":Z
    :sswitch_80
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1665
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1666
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v172

    .line 1667
    .local v172, "agent":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v172

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1668
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1669
    const/4 v6, 0x1

    return v6

    .line 1673
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v172    # "agent":Landroid/os/IBinder;
    :sswitch_81
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1674
    sget-object v6, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v215

    check-cast v215, Landroid/content/pm/ApplicationInfo;

    .line 1675
    .restart local v215    # "info":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v215

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 1676
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1677
    const/4 v6, 0x1

    return v6

    .line 1681
    .end local v215    # "info":Landroid/content/pm/ApplicationInfo;
    :sswitch_82
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1682
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1683
    .restart local v32    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->addPackageDependency(Ljava/lang/String;)V

    .line 1684
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1685
    const/4 v6, 0x1

    return v6

    .line 1689
    .end local v32    # "packageName":Ljava/lang/String;
    :sswitch_83
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1690
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v264, v0

    .line 1691
    .local v264, "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v177

    .line 1692
    .local v177, "appid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v273, v0

    .line 1693
    .restart local v273    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v264

    move/from16 v2, v177

    move-object/from16 v3, v273

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killApplicationWithAppId(Ljava/lang/String;ILjava/lang/String;)V

    .line 1694
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1695
    const/4 v6, 0x1

    return v6

    .line 1699
    .end local v177    # "appid":I
    .end local v264    # "pkg":Ljava/lang/String;
    .end local v273    # "reason":Ljava/lang/String;
    :sswitch_84
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1700
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v273, v0

    .line 1701
    .restart local v273    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v273

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->closeSystemDialogs(Ljava/lang/String;)V

    .line 1702
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1703
    const/4 v6, 0x1

    return v6

    .line 1707
    .end local v273    # "reason":Ljava/lang/String;
    :sswitch_85
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1708
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    move-object/16 v263, v0

    .line 1709
    .restart local v263    # "pids":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v263

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0

    move-object/16 v284, v0

    .line 1710
    .local v284, "res":[Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1711
    const/4 v6, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v284

    invoke-virtual {v0, v1, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1712
    const/4 v6, 0x1

    return v6

    .line 1716
    .end local v263    # "pids":[I
    .end local v284    # "res":[Landroid/os/Debug$MemoryInfo;
    :sswitch_86
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1717
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v268, v0

    .line 1718
    .local v268, "processName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v112

    .line 1719
    .restart local v112    # "uid":I
    move-object/from16 v0, p0

    move-object/from16 v1, v268

    move/from16 v2, v112

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killApplicationProcess(Ljava/lang/String;I)V

    .line 1720
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1721
    const/4 v6, 0x1

    return v6

    .line 1725
    .end local v112    # "uid":I
    .end local v268    # "processName":Ljava/lang/String;
    :sswitch_87
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1726
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1727
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1728
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v200

    .line 1729
    .local v200, "enterAnim":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v201

    .line 1730
    .local v201, "exitAnim":I
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v32

    move/from16 v3, v200

    move/from16 v4, v201

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V

    .line 1731
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1732
    const/4 v6, 0x1

    return v6

    .line 1736
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v200    # "enterAnim":I
    .end local v201    # "exitAnim":I
    :sswitch_88
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1737
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isUserAMonkey()Z

    move-result v178

    .line 1738
    .local v178, "areThey":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1739
    if-eqz v178, :cond_5b

    const/4 v6, 0x1

    :goto_53
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1740
    const/4 v6, 0x1

    return v6

    .line 1739
    :cond_5b
    const/4 v6, 0x0

    goto :goto_53

    .line 1744
    .end local v178    # "areThey":Z
    :sswitch_89
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1745
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_5c

    const/16 v243, 0x1

    .line 1746
    .local v243, "monkey":Z
    :goto_54
    move-object/from16 v0, p0

    move/from16 v1, v243

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setUserIsMonkey(Z)V

    .line 1747
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1748
    const/4 v6, 0x1

    return v6

    .line 1745
    .end local v243    # "monkey":Z
    :cond_5c
    const/16 v243, 0x0

    .restart local v243    # "monkey":Z
    goto :goto_54

    .line 1752
    .end local v243    # "monkey":Z
    :sswitch_8a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1753
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->finishHeavyWeightApp()V

    .line 1754
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1755
    const/4 v6, 0x1

    return v6

    .line 1759
    :sswitch_8b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1760
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1761
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isImmersive(Landroid/os/IBinder;)Z

    move-result v223

    .line 1762
    .local v223, "isit":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1763
    if-eqz v223, :cond_5d

    const/4 v6, 0x1

    :goto_55
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1764
    const/4 v6, 0x1

    return v6

    .line 1763
    :cond_5d
    const/4 v6, 0x0

    goto :goto_55

    .line 1768
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v223    # "isit":Z
    :sswitch_8c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1769
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1770
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isTopOfTask(Landroid/os/IBinder;)Z

    move-result v222

    .line 1771
    .local v222, "isTopOfTask":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1772
    if-eqz v222, :cond_5e

    const/4 v6, 0x1

    :goto_56
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1773
    const/4 v6, 0x1

    return v6

    .line 1772
    :cond_5e
    const/4 v6, 0x0

    goto :goto_56

    .line 1777
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v222    # "isTopOfTask":Z
    :sswitch_8d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1778
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1779
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->convertFromTranslucent(Landroid/os/IBinder;)Z

    move-result v191

    .line 1780
    .local v191, "converted":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1781
    if-eqz v191, :cond_5f

    const/4 v6, 0x1

    :goto_57
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1782
    const/4 v6, 0x1

    return v6

    .line 1781
    :cond_5f
    const/4 v6, 0x0

    goto :goto_57

    .line 1786
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v191    # "converted":Z
    :sswitch_8e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1787
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1789
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_60

    .line 1790
    const/16 v183, 0x0

    .line 1794
    :goto_58
    if-nez v183, :cond_61

    const/16 v253, 0x0

    .line 1795
    :goto_59
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v253

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->convertToTranslucent(Landroid/os/IBinder;Landroid/app/ActivityOptions;)Z

    move-result v191

    .line 1796
    .restart local v191    # "converted":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1797
    if-eqz v191, :cond_62

    const/4 v6, 0x1

    :goto_5a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1798
    const/4 v6, 0x1

    return v6

    .line 1792
    .end local v191    # "converted":Z
    :cond_60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v183

    .local v183, "bundle":Landroid/os/Bundle;
    goto :goto_58

    .line 1794
    .end local v183    # "bundle":Landroid/os/Bundle;
    :cond_61
    new-instance v253, Landroid/app/ActivityOptions;

    move-object/from16 v0, v253

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    .local v253, "options":Landroid/app/ActivityOptions;
    goto :goto_59

    .line 1797
    .end local v253    # "options":Landroid/app/ActivityOptions;
    .restart local v191    # "converted":Z
    :cond_62
    const/4 v6, 0x0

    goto :goto_5a

    .line 1802
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v191    # "converted":Z
    :sswitch_8f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1803
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1804
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityOptions(Landroid/os/IBinder;)Landroid/app/ActivityOptions;

    move-result-object v253

    .line 1805
    .restart local v253    # "options":Landroid/app/ActivityOptions;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1806
    if-nez v253, :cond_63

    const/4 v6, 0x0

    :goto_5b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1807
    const/4 v6, 0x1

    return v6

    .line 1806
    :cond_63
    invoke-virtual/range {v253 .. v253}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    goto :goto_5b

    .line 1811
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v253    # "options":Landroid/app/ActivityOptions;
    :sswitch_90
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1812
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1813
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_64

    const/16 v209, 0x1

    .line 1814
    .local v209, "imm":Z
    :goto_5c
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move/from16 v2, v209

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setImmersive(Landroid/os/IBinder;Z)V

    .line 1815
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1816
    const/4 v6, 0x1

    return v6

    .line 1813
    .end local v209    # "imm":Z
    :cond_64
    const/16 v209, 0x0

    .restart local v209    # "imm":Z
    goto :goto_5c

    .line 1820
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v209    # "imm":Z
    :sswitch_91
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1821
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isTopActivityImmersive()Z

    move-result v223

    .line 1822
    .restart local v223    # "isit":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1823
    if-eqz v223, :cond_65

    const/4 v6, 0x1

    :goto_5d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1824
    const/4 v6, 0x1

    return v6

    .line 1823
    :cond_65
    const/4 v6, 0x0

    goto :goto_5d

    .line 1828
    .end local v223    # "isit":Z
    :sswitch_92
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1829
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v112

    .line 1830
    .restart local v112    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v217

    .line 1831
    .local v217, "initialPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1832
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v241

    .line 1833
    .local v241, "message":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v112

    move/from16 v2, v217

    move-object/from16 v3, v32

    move-object/from16 v4, v241

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->crashApplication(IILjava/lang/String;Ljava/lang/String;)V

    .line 1834
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1835
    const/4 v6, 0x1

    return v6

    .line 1839
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v112    # "uid":I
    .end local v217    # "initialPid":I
    .end local v241    # "message":Ljava/lang/String;
    :sswitch_93
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1840
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/net/Uri;

    .line 1841
    .restart local v110    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1842
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v110

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    move-object/16 v316, v0

    .line 1843
    .local v316, "type":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1844
    move-object/from16 v0, p3

    move-object/from16 v1, v316

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1845
    const/4 v6, 0x1

    return v6

    .line 1849
    .end local v17    # "userId":I
    .end local v110    # "uri":Landroid/net/Uri;
    .end local v316    # "type":Ljava/lang/String;
    :sswitch_94
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1850
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v107

    .line 1851
    .restart local v107    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    move-object/16 v258, v0

    .line 1852
    .local v258, "perm":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1853
    move-object/from16 v0, p3

    move-object/from16 v1, v258

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1854
    const/4 v6, 0x1

    return v6

    .line 1858
    .end local v107    # "name":Ljava/lang/String;
    .end local v258    # "perm":Landroid/os/IBinder;
    :sswitch_95
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1859
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v126

    .line 1860
    .local v126, "owner":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v127

    .line 1861
    .local v127, "fromUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v118

    .line 1862
    .restart local v118    # "targetPkg":Ljava/lang/String;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/net/Uri;

    .line 1863
    .restart local v110    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v113

    .line 1864
    .restart local v113    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v131

    .line 1865
    .local v131, "sourceUserId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v132

    .local v132, "targetUserId":I
    move-object/from16 v125, p0

    move-object/from16 v128, v118

    move-object/from16 v129, v110

    move/from16 v130, v113

    .line 1866
    invoke-virtual/range {v125 .. v132}, Landroid/app/ActivityManagerNative;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V

    .line 1868
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1869
    const/4 v6, 0x1

    return v6

    .line 1873
    .end local v110    # "uri":Landroid/net/Uri;
    .end local v113    # "mode":I
    .end local v118    # "targetPkg":Ljava/lang/String;
    .end local v126    # "owner":Landroid/os/IBinder;
    .end local v127    # "fromUid":I
    .end local v131    # "sourceUserId":I
    .end local v132    # "targetUserId":I
    :sswitch_96
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1874
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v126

    .line 1875
    .restart local v126    # "owner":Landroid/os/IBinder;
    const/16 v110, 0x0

    .line 1876
    .local v110, "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_66

    .line 1877
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v110

    .end local v110    # "uri":Landroid/net/Uri;
    check-cast v110, Landroid/net/Uri;

    .line 1879
    :cond_66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v113

    .line 1880
    .restart local v113    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1881
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v126

    move-object/from16 v2, v110

    move/from16 v3, v113

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V

    .line 1882
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1883
    const/4 v6, 0x1

    return v6

    .line 1887
    .end local v17    # "userId":I
    .end local v113    # "mode":I
    .end local v126    # "owner":Landroid/os/IBinder;
    :sswitch_97
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1888
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 1889
    .restart local v43    # "callingUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v118

    .line 1890
    .restart local v118    # "targetPkg":Ljava/lang/String;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/net/Uri;

    .line 1891
    .local v110, "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v137

    .line 1892
    .local v137, "modeFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v133, p0

    move/from16 v134, v43

    move-object/from16 v135, v118

    move-object/from16 v136, v110

    move/from16 v138, v17

    .line 1893
    invoke-virtual/range {v133 .. v138}, Landroid/app/ActivityManagerNative;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I

    move-result v0

    move/16 v277, v0

    .line 1894
    .restart local v277    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1895
    move-object/from16 v0, p3

    move/from16 v1, v277

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1896
    const/4 v6, 0x1

    return v6

    .line 1900
    .end local v17    # "userId":I
    .end local v43    # "callingUid":I
    .end local v110    # "uri":Landroid/net/Uri;
    .end local v118    # "targetPkg":Ljava/lang/String;
    .end local v137    # "modeFlags":I
    .end local v277    # "res":I
    :sswitch_98
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1901
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v120

    .line 1902
    .restart local v120    # "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1903
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_67

    const/16 v141, 0x1

    .line 1904
    .local v141, "managed":Z
    :goto_5e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v142

    .line 1905
    .local v142, "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_68

    .line 1906
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v143

    check-cast v143, Landroid/os/ParcelFileDescriptor;

    :goto_5f
    move-object/from16 v138, p0

    move-object/from16 v139, v120

    move/from16 v140, v17

    .line 1907
    invoke-virtual/range {v138 .. v143}, Landroid/app/ActivityManagerNative;->dumpHeap(Ljava/lang/String;IZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v0

    move/16 v283, v0

    .line 1908
    .restart local v283    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1909
    move/from16 v0, v283

    if-eqz v0, :cond_69

    const/4 v6, 0x1

    :goto_60
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1910
    const/4 v6, 0x1

    return v6

    .line 1903
    .end local v141    # "managed":Z
    .end local v142    # "path":Ljava/lang/String;
    .end local v283    # "res":Z
    :cond_67
    const/16 v141, 0x0

    .restart local v141    # "managed":Z
    goto :goto_5e

    .line 1906
    .restart local v142    # "path":Ljava/lang/String;
    :cond_68
    const/16 v143, 0x0

    .local v143, "fd":Landroid/os/ParcelFileDescriptor;
    goto :goto_5f

    .line 1909
    .end local v143    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v283    # "res":Z
    :cond_69
    const/4 v6, 0x0

    goto :goto_60

    .line 1915
    .end local v17    # "userId":I
    .end local v120    # "process":Ljava/lang/String;
    .end local v141    # "managed":Z
    .end local v142    # "path":Ljava/lang/String;
    .end local v283    # "res":Z
    :sswitch_99
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1916
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v180

    .line 1917
    .restart local v180    # "b":Landroid/os/IBinder;
    invoke-static/range {v180 .. v180}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1918
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1919
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v147

    check-cast v147, [Landroid/content/Intent;

    .line 1920
    .local v147, "intents":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v148

    .line 1921
    .local v148, "resolvedTypes":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 1922
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6a

    .line 1923
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 1924
    :goto_61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v144, p0

    move-object/from16 v145, v7

    move-object/from16 v146, v8

    move-object/from16 v149, v11

    move-object/from16 v150, v16

    move/from16 v151, v17

    .line 1925
    invoke-virtual/range {v144 .. v151}, Landroid/app/ActivityManagerNative;->startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result v0

    move/16 v286, v0

    .line 1927
    .restart local v286    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1928
    move-object/from16 v0, p3

    move/from16 v1, v286

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1929
    const/4 v6, 0x1

    return v6

    .line 1923
    .end local v17    # "userId":I
    .end local v286    # "result":I
    :cond_6a
    const/16 v16, 0x0

    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_61

    .line 1934
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v147    # "intents":[Landroid/content/Intent;
    .end local v148    # "resolvedTypes":[Ljava/lang/String;
    .end local v180    # "b":Landroid/os/IBinder;
    :sswitch_9a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1935
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getFrontActivityScreenCompatMode()I

    move-result v113

    .line 1936
    .restart local v113    # "mode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1937
    move-object/from16 v0, p3

    move/from16 v1, v113

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1938
    const/4 v6, 0x1

    return v6

    .line 1943
    .end local v113    # "mode":I
    :sswitch_9b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1944
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v113

    .line 1945
    .restart local v113    # "mode":I
    move-object/from16 v0, p0

    move/from16 v1, v113

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFrontActivityScreenCompatMode(I)V

    .line 1946
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1947
    move-object/from16 v0, p3

    move/from16 v1, v113

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1948
    const/4 v6, 0x1

    return v6

    .line 1953
    .end local v113    # "mode":I
    :sswitch_9c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1954
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v264, v0

    .line 1955
    .restart local v264    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v264

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v113

    .line 1956
    .restart local v113    # "mode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1957
    move-object/from16 v0, p3

    move/from16 v1, v113

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1958
    const/4 v6, 0x1

    return v6

    .line 1963
    .end local v113    # "mode":I
    .end local v264    # "pkg":Ljava/lang/String;
    :sswitch_9d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1964
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v264, v0

    .line 1965
    .restart local v264    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v113

    .line 1966
    .restart local v113    # "mode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v264

    move/from16 v2, v113

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    .line 1967
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1968
    const/4 v6, 0x1

    return v6

    .line 1972
    .end local v113    # "mode":I
    .end local v264    # "pkg":Ljava/lang/String;
    :sswitch_9e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1973
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v319, v0

    .line 1974
    .local v319, "userid":I
    move-object/from16 v0, p0

    move/from16 v1, v319

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->switchUser(I)Z

    move-result v0

    move/16 v288, v0

    .line 1975
    .restart local v288    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1976
    move/from16 v0, v288

    if-eqz v0, :cond_6b

    const/4 v6, 0x1

    :goto_62
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1977
    const/4 v6, 0x1

    return v6

    .line 1976
    :cond_6b
    const/4 v6, 0x0

    goto :goto_62

    .line 1981
    .end local v288    # "result":Z
    .end local v319    # "userid":I
    :sswitch_9f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1982
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v319, v0

    .line 1983
    .restart local v319    # "userid":I
    move-object/from16 v0, p0

    move/from16 v1, v319

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startUserInBackground(I)Z

    move-result v0

    move/16 v288, v0

    .line 1984
    .restart local v288    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1985
    move/from16 v0, v288

    if-eqz v0, :cond_6c

    const/4 v6, 0x1

    :goto_63
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1986
    const/4 v6, 0x1

    return v6

    .line 1985
    :cond_6c
    const/4 v6, 0x0

    goto :goto_63

    .line 1990
    .end local v288    # "result":Z
    .end local v319    # "userid":I
    :sswitch_a0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1991
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v319, v0

    .line 1993
    .restart local v319    # "userid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1992
    invoke-static {v6}, Landroid/app/IStopUserCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStopUserCallback;

    move-result-object v185

    .line 1994
    .local v185, "callback":Landroid/app/IStopUserCallback;
    move-object/from16 v0, p0

    move/from16 v1, v319

    move-object/from16 v2, v185

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->stopUser(ILandroid/app/IStopUserCallback;)I

    move-result v0

    move/16 v286, v0

    .line 1995
    .restart local v286    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1996
    move-object/from16 v0, p3

    move/from16 v1, v286

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1997
    const/4 v6, 0x1

    return v6

    .line 2001
    .end local v185    # "callback":Landroid/app/IStopUserCallback;
    .end local v286    # "result":I
    .end local v319    # "userid":I
    :sswitch_a1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2002
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    move-object/16 v318, v0

    .line 2003
    .local v318, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2004
    const/4 v6, 0x0

    move-object/from16 v0, v318

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2005
    const/4 v6, 0x1

    return v6

    .line 2009
    .end local v318    # "userInfo":Landroid/content/pm/UserInfo;
    :sswitch_a2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2010
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v319, v0

    .line 2011
    .restart local v319    # "userid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6d

    const/16 v254, 0x1

    .line 2012
    .local v254, "orStopping":Z
    :goto_64
    move-object/from16 v0, p0

    move/from16 v1, v319

    move/from16 v2, v254

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->isUserRunning(IZ)Z

    move-result v0

    move/16 v288, v0

    .line 2013
    .restart local v288    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2014
    move/from16 v0, v288

    if-eqz v0, :cond_6e

    const/4 v6, 0x1

    :goto_65
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2015
    const/4 v6, 0x1

    return v6

    .line 2011
    .end local v254    # "orStopping":Z
    .end local v288    # "result":Z
    :cond_6d
    const/16 v254, 0x0

    .restart local v254    # "orStopping":Z
    goto :goto_64

    .line 2014
    .restart local v288    # "result":Z
    :cond_6e
    const/4 v6, 0x0

    goto :goto_65

    .line 2019
    .end local v254    # "orStopping":Z
    .end local v288    # "result":Z
    .end local v319    # "userid":I
    :sswitch_a3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2020
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningUserIds()[I

    move-result-object v0

    move-object/16 v289, v0

    .line 2021
    .local v289, "result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2022
    move-object/from16 v0, p3

    move-object/from16 v1, v289

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2023
    const/4 v6, 0x1

    return v6

    .line 2028
    .end local v289    # "result":[I
    :sswitch_a4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2029
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v310, v0

    .line 2030
    .restart local v310    # "taskId":I
    move-object/from16 v0, p0

    move/from16 v1, v310

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->removeTask(I)Z

    move-result v0

    move/16 v288, v0

    .line 2031
    .restart local v288    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2032
    move/from16 v0, v288

    if-eqz v0, :cond_6f

    const/4 v6, 0x1

    :goto_66
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2033
    const/4 v6, 0x1

    return v6

    .line 2032
    :cond_6f
    const/4 v6, 0x0

    goto :goto_66

    .line 2039
    .end local v288    # "result":Z
    .end local v310    # "taskId":I
    :sswitch_a5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2040
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v310, v0

    .line 2041
    .restart local v310    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v205

    .line 2042
    .local v205, "flag":I
    move-object/from16 v0, p0

    move/from16 v1, v310

    move/from16 v2, v205

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeTask(II)Z

    move-result v0

    move/16 v288, v0

    .line 2043
    .restart local v288    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2044
    move/from16 v0, v288

    if-eqz v0, :cond_70

    const/4 v6, 0x1

    :goto_67
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2045
    const/4 v6, 0x1

    return v6

    .line 2044
    :cond_70
    const/4 v6, 0x0

    goto :goto_67

    .line 2050
    .end local v205    # "flag":I
    .end local v288    # "result":Z
    .end local v310    # "taskId":I
    :sswitch_a6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2052
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2051
    invoke-static {v6}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v246

    .line 2053
    .local v246, "observer":Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v246

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 2054
    const/4 v6, 0x1

    return v6

    .line 2058
    .end local v246    # "observer":Landroid/app/IProcessObserver;
    :sswitch_a7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2060
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2059
    invoke-static {v6}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v246

    .line 2061
    .restart local v246    # "observer":Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v246

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 2062
    const/4 v6, 0x1

    return v6

    .line 2066
    .end local v246    # "observer":Landroid/app/IProcessObserver;
    :sswitch_a8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2068
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2067
    invoke-static {v6}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    move-result-object v247

    .line 2069
    .local v247, "observer":Landroid/app/IUidObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v247

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerUidObserver(Landroid/app/IUidObserver;)V

    .line 2070
    const/4 v6, 0x1

    return v6

    .line 2074
    .end local v247    # "observer":Landroid/app/IUidObserver;
    :sswitch_a9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2076
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2075
    invoke-static {v6}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    move-result-object v247

    .line 2077
    .restart local v247    # "observer":Landroid/app/IUidObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v247

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    .line 2078
    const/4 v6, 0x1

    return v6

    .line 2083
    .end local v247    # "observer":Landroid/app/IUidObserver;
    :sswitch_aa
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2084
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v264, v0

    .line 2085
    .restart local v264    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v264

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageAskScreenCompat(Ljava/lang/String;)Z

    move-result v179

    .line 2086
    .local v179, "ask":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2087
    if-eqz v179, :cond_71

    const/4 v6, 0x1

    :goto_68
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2088
    const/4 v6, 0x1

    return v6

    .line 2087
    :cond_71
    const/4 v6, 0x0

    goto :goto_68

    .line 2093
    .end local v179    # "ask":Z
    .end local v264    # "pkg":Ljava/lang/String;
    :sswitch_ab
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2094
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v264, v0

    .line 2095
    .restart local v264    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_72

    const/16 v179, 0x1

    .line 2096
    .local v179, "ask":Z
    :goto_69
    move-object/from16 v0, p0

    move-object/from16 v1, v264

    move/from16 v2, v179

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 2097
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2098
    const/4 v6, 0x1

    return v6

    .line 2095
    .end local v179    # "ask":Z
    :cond_72
    const/16 v179, 0x0

    .restart local v179    # "ask":Z
    goto :goto_69

    .line 2102
    .end local v179    # "ask":Z
    .end local v264    # "pkg":Ljava/lang/String;
    :sswitch_ac
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2103
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v271, v0

    .line 2105
    .restart local v271    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v271

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z

    move-result v0

    move/16 v283, v0

    .line 2106
    .restart local v283    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2107
    move/from16 v0, v283

    if-eqz v0, :cond_73

    const/4 v6, 0x1

    :goto_6a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2108
    const/4 v6, 0x1

    return v6

    .line 2107
    :cond_73
    const/4 v6, 0x0

    goto :goto_6a

    .line 2112
    .end local v271    # "r":Landroid/content/IIntentSender;
    .end local v283    # "res":Z
    :sswitch_ad
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2113
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v271, v0

    .line 2115
    .restart local v271    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v271

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z

    move-result v0

    move/16 v283, v0

    .line 2116
    .restart local v283    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2117
    move/from16 v0, v283

    if-eqz v0, :cond_74

    const/4 v6, 0x1

    :goto_6b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2118
    const/4 v6, 0x1

    return v6

    .line 2117
    :cond_74
    const/4 v6, 0x0

    goto :goto_6b

    .line 2122
    .end local v271    # "r":Landroid/content/IIntentSender;
    .end local v283    # "res":Z
    :sswitch_ae
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2123
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v271, v0

    .line 2125
    .restart local v271    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v271

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    move-result-object v9

    .line 2126
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2127
    if-eqz v9, :cond_75

    .line 2128
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2129
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v6}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2133
    :goto_6c
    const/4 v6, 0x1

    return v6

    .line 2131
    :cond_75
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6c

    .line 2137
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v271    # "r":Landroid/content/IIntentSender;
    :sswitch_af
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2138
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v271, v0

    .line 2140
    .restart local v271    # "r":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v267, v0

    .line 2141
    .local v267, "prefix":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v271

    move-object/from16 v2, v267

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTagForIntentSender(Landroid/content/IIntentSender;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/16 v306, v0

    .line 2142
    .restart local v306    # "tag":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2143
    move-object/from16 v0, p3

    move-object/from16 v1, v306

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2144
    const/4 v6, 0x1

    return v6

    .line 2148
    .end local v267    # "prefix":Ljava/lang/String;
    .end local v271    # "r":Landroid/content/IIntentSender;
    .end local v306    # "tag":Ljava/lang/String;
    :sswitch_b0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2149
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/res/Configuration;

    .line 2150
    .restart local v39    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 2151
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2152
    const/4 v6, 0x1

    return v6

    .line 2156
    .end local v39    # "config":Landroid/content/res/Configuration;
    :sswitch_b1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    move-object/16 v263, v0

    .line 2158
    .restart local v263    # "pids":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v263

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessPss([I)[J

    move-result-object v0

    move-object/16 v270, v0

    .line 2159
    .local v270, "pss":[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2160
    move-object/from16 v0, p3

    move-object/from16 v1, v270

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 2161
    const/4 v6, 0x1

    return v6

    .line 2166
    .end local v263    # "pids":[I
    .end local v270    # "pss":[J
    :sswitch_b2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    move-object/16 v263, v0

    .line 2168
    .restart local v263    # "pids":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v263

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessPswap([I)[J

    move-result-object v0

    move-object/16 v270, v0

    .line 2169
    .restart local v270    # "pss":[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2170
    move-object/from16 v0, p3

    move-object/from16 v1, v270

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 2171
    const/4 v6, 0x1

    return v6

    .line 2176
    .end local v263    # "pids":[I
    .end local v270    # "pss":[J
    :sswitch_b3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2177
    sget-object v6, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v244

    check-cast v244, Ljava/lang/CharSequence;

    .line 2178
    .local v244, "msg":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_76

    const/16 v174, 0x1

    .line 2179
    .local v174, "always":Z
    :goto_6d
    move-object/from16 v0, p0

    move-object/from16 v1, v244

    move/from16 v2, v174

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->showBootMessage(Ljava/lang/CharSequence;Z)V

    .line 2180
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2181
    const/4 v6, 0x1

    return v6

    .line 2178
    .end local v174    # "always":Z
    :cond_76
    const/16 v174, 0x0

    .restart local v174    # "always":Z
    goto :goto_6d

    .line 2185
    .end local v174    # "always":Z
    .end local v244    # "msg":Ljava/lang/CharSequence;
    :sswitch_b4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2186
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->keyguardWaitingForActivityDrawn()V

    .line 2187
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2188
    const/4 v6, 0x1

    return v6

    .line 2192
    :sswitch_b5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_77

    const/4 v6, 0x1

    :goto_6e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_78

    const/16 v18, 0x1

    :goto_6f
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v6, v1}, Landroid/app/ActivityManagerNative;->keyguardGoingAway(ZZ)V

    .line 2194
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2195
    const/4 v6, 0x1

    return v6

    .line 2193
    :cond_77
    const/4 v6, 0x0

    goto :goto_6e

    :cond_78
    const/16 v18, 0x0

    goto :goto_6f

    .line 2199
    :sswitch_b6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2201
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v195

    .line 2202
    .local v195, "destAffinity":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v195

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v0

    move/16 v283, v0

    .line 2203
    .restart local v283    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2204
    move/from16 v0, v283

    if-eqz v0, :cond_79

    const/4 v6, 0x1

    :goto_70
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2205
    const/4 v6, 0x1

    return v6

    .line 2204
    :cond_79
    const/4 v6, 0x0

    goto :goto_70

    .line 2209
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v195    # "destAffinity":Ljava/lang/String;
    .end local v283    # "res":Z
    :sswitch_b7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2211
    .restart local v73    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v307, v0

    move-object/from16 v0, v307

    check-cast v0, Landroid/content/Intent;

    move-object/16 v307, v0

    .line 2212
    .local v307, "target":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 2213
    .restart local v53    # "resultCode":I
    const/4 v0, 0x0

    move-object/16 v290, v0

    .line 2214
    .restart local v290    # "resultData":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7a

    .line 2215
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v290, v0

    .end local v290    # "resultData":Landroid/content/Intent;
    move-object/from16 v0, v290

    check-cast v0, Landroid/content/Intent;

    move-object/16 v290, v0

    .line 2217
    :cond_7a
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v307

    move/from16 v3, v53

    move-object/from16 v4, v290

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z

    move-result v0

    move/16 v283, v0

    .line 2218
    .restart local v283    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2219
    move/from16 v0, v283

    if-eqz v0, :cond_7b

    const/4 v6, 0x1

    :goto_71
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2220
    const/4 v6, 0x1

    return v6

    .line 2219
    :cond_7b
    const/4 v6, 0x0

    goto :goto_71

    .line 2224
    .end local v53    # "resultCode":I
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v283    # "res":Z
    .end local v307    # "target":Landroid/content/Intent;
    :sswitch_b8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2226
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v0

    move/16 v277, v0

    .line 2227
    .restart local v277    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2228
    move-object/from16 v0, p3

    move/from16 v1, v277

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2229
    const/4 v6, 0x1

    return v6

    .line 2233
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v277    # "res":I
    :sswitch_b9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2235
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    move-object/16 v282, v0

    .line 2236
    .restart local v282    # "res":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2237
    move-object/from16 v0, p3

    move-object/from16 v1, v282

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2238
    const/4 v6, 0x1

    return v6

    .line 2242
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v282    # "res":Ljava/lang/String;
    :sswitch_ba
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2243
    invoke-static {v6}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v248

    .line 2245
    .local v248, "observer":Landroid/app/IUserSwitchObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v248

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 2246
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2247
    const/4 v6, 0x1

    return v6

    .line 2251
    .end local v248    # "observer":Landroid/app/IUserSwitchObserver;
    :sswitch_bb
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2253
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2252
    invoke-static {v6}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v248

    .line 2254
    .restart local v248    # "observer":Landroid/app/IUserSwitchObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v248

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 2255
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2256
    const/4 v6, 0x1

    return v6

    .line 2260
    .end local v248    # "observer":Landroid/app/IUserSwitchObserver;
    :sswitch_bc
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2261
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->requestBugReport()V

    .line 2262
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2263
    const/4 v6, 0x1

    return v6

    .line 2267
    :sswitch_bd
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v111

    .line 2269
    .restart local v111    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7c

    const/16 v168, 0x1

    .line 2270
    .local v168, "aboveSystem":Z
    :goto_72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v273, v0

    .line 2271
    .restart local v273    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v111

    move/from16 v2, v168

    move-object/from16 v3, v273

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->inputDispatchingTimedOut(IZLjava/lang/String;)J

    move-result-wide v0

    move-wide/16 v278, v0

    .line 2272
    .local v278, "res":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2273
    move-object/from16 v0, p3

    move-wide/from16 v1, v278

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 2274
    const/4 v6, 0x1

    return v6

    .line 2269
    .end local v168    # "aboveSystem":Z
    .end local v273    # "reason":Ljava/lang/String;
    .end local v278    # "res":J
    :cond_7c
    const/16 v168, 0x0

    .restart local v168    # "aboveSystem":Z
    goto :goto_72

    .line 2278
    .end local v111    # "pid":I
    .end local v168    # "aboveSystem":Z
    :sswitch_be
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2279
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v157

    .line 2280
    .local v157, "requestType":I
    move-object/from16 v0, p0

    move/from16 v1, v157

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getAssistContextExtras(I)Landroid/os/Bundle;

    move-result-object v0

    move-object/16 v281, v0

    .line 2281
    .local v281, "res":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2282
    move-object/from16 v0, p3

    move-object/from16 v1, v281

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 2283
    const/4 v6, 0x1

    return v6

    .line 2287
    .end local v157    # "requestType":I
    .end local v281    # "res":Landroid/os/Bundle;
    :sswitch_bf
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2288
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v157

    .line 2289
    .restart local v157    # "requestType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v0

    move-object/16 v274, v0

    .line 2290
    .local v274, "receiver":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v171

    .line 2291
    .restart local v171    # "activityToken":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move/from16 v1, v157

    move-object/from16 v2, v274

    move-object/from16 v3, v171

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->requestAssistContextExtras(ILcom/android/internal/os/IResultReceiver;Landroid/os/IBinder;)Z

    move-result v0

    move/16 v283, v0

    .line 2292
    .restart local v283    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2293
    move/from16 v0, v283

    if-eqz v0, :cond_7d

    const/4 v6, 0x1

    :goto_73
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2294
    const/4 v6, 0x1

    return v6

    .line 2293
    :cond_7d
    const/4 v6, 0x0

    goto :goto_73

    .line 2298
    .end local v157    # "requestType":I
    .end local v171    # "activityToken":Landroid/os/IBinder;
    .end local v274    # "receiver":Lcom/android/internal/os/IResultReceiver;
    .end local v283    # "res":Z
    :sswitch_c0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2300
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v151

    .line 2301
    .local v151, "extras":Landroid/os/Bundle;
    sget-object v6, Landroid/app/assist/AssistStructure;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v152

    check-cast v152, Landroid/app/assist/AssistStructure;

    .line 2302
    .local v152, "structure":Landroid/app/assist/AssistStructure;
    sget-object v6, Landroid/app/assist/AssistContent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v153

    check-cast v153, Landroid/app/assist/AssistContent;

    .line 2303
    .local v153, "content":Landroid/app/assist/AssistContent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7e

    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v154

    check-cast v154, Landroid/net/Uri;

    :goto_74
    move-object/from16 v149, p0

    move-object/from16 v150, v73

    .line 2304
    invoke-virtual/range {v149 .. v154}, Landroid/app/ActivityManagerNative;->reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V

    .line 2305
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2306
    const/4 v6, 0x1

    return v6

    .line 2303
    :cond_7e
    const/16 v154, 0x0

    .local v154, "referrer":Landroid/net/Uri;
    goto :goto_74

    .line 2310
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v151    # "extras":Landroid/os/Bundle;
    .end local v152    # "structure":Landroid/app/assist/AssistStructure;
    .end local v153    # "content":Landroid/app/assist/AssistContent;
    .end local v154    # "referrer":Landroid/net/Uri;
    :sswitch_c1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2311
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 2312
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v157

    .line 2313
    .restart local v157    # "requestType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v158

    .line 2314
    .local v158, "hint":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v159

    .line 2315
    .local v159, "userHandle":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v160

    .local v160, "args":Landroid/os/Bundle;
    move-object/from16 v155, p0

    move-object/from16 v156, v9

    .line 2316
    invoke-virtual/range {v155 .. v160}, Landroid/app/ActivityManagerNative;->launchAssistIntent(Landroid/content/Intent;ILjava/lang/String;ILandroid/os/Bundle;)Z

    move-result v0

    move/16 v283, v0

    .line 2317
    .restart local v283    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2318
    move/from16 v0, v283

    if-eqz v0, :cond_7f

    const/4 v6, 0x1

    :goto_75
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2319
    const/4 v6, 0x1

    return v6

    .line 2318
    :cond_7f
    const/4 v6, 0x0

    goto :goto_75

    .line 2323
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v157    # "requestType":I
    .end local v158    # "hint":Ljava/lang/String;
    .end local v159    # "userHandle":I
    .end local v160    # "args":Landroid/os/Bundle;
    .end local v283    # "res":Z
    :sswitch_c2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2324
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isAssistDataAllowedOnCurrentActivity()Z

    move-result v0

    move/16 v283, v0

    .line 2325
    .restart local v283    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2326
    move/from16 v0, v283

    if-eqz v0, :cond_80

    const/4 v6, 0x1

    :goto_76
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2327
    const/4 v6, 0x1

    return v6

    .line 2326
    :cond_80
    const/4 v6, 0x0

    goto :goto_76

    .line 2331
    .end local v283    # "res":Z
    :sswitch_c3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2332
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2333
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v160

    .line 2334
    .restart local v160    # "args":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v160

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result v0

    move/16 v283, v0

    .line 2335
    .restart local v283    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2336
    move/from16 v0, v283

    if-eqz v0, :cond_81

    const/4 v6, 0x1

    :goto_77
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2337
    const/4 v6, 0x1

    return v6

    .line 2336
    :cond_81
    const/4 v6, 0x0

    goto :goto_77

    .line 2341
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v160    # "args":Landroid/os/Bundle;
    .end local v283    # "res":Z
    :sswitch_c4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2342
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v176

    .line 2343
    .local v176, "appId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2344
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v273, v0

    .line 2345
    .restart local v273    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v176

    move/from16 v2, v17

    move-object/from16 v3, v273

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killUid(IILjava/lang/String;)V

    .line 2346
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2347
    const/4 v6, 0x1

    return v6

    .line 2351
    .end local v17    # "userId":I
    .end local v176    # "appId":I
    .end local v273    # "reason":Ljava/lang/String;
    :sswitch_c5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v62

    .line 2353
    .restart local v62    # "who":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_82

    const/16 v173, 0x1

    .line 2354
    .local v173, "allowRestart":Z
    :goto_78
    move-object/from16 v0, p0

    move-object/from16 v1, v62

    move/from16 v2, v173

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->hang(Landroid/os/IBinder;Z)V

    .line 2355
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2356
    const/4 v6, 0x1

    return v6

    .line 2353
    .end local v173    # "allowRestart":Z
    :cond_82
    const/16 v173, 0x0

    .restart local v173    # "allowRestart":Z
    goto :goto_78

    .line 2360
    .end local v62    # "who":Landroid/os/IBinder;
    .end local v173    # "allowRestart":Z
    :sswitch_c6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2362
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->reportActivityFullyDrawn(Landroid/os/IBinder;)V

    .line 2363
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2364
    const/4 v6, 0x1

    return v6

    .line 2368
    .end local v73    # "token":Landroid/os/IBinder;
    :sswitch_c7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2369
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2370
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyActivityDrawn(Landroid/os/IBinder;)V

    .line 2371
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2372
    const/4 v6, 0x1

    return v6

    .line 2376
    .end local v73    # "token":Landroid/os/IBinder;
    :sswitch_c8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2377
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->restart()V

    .line 2378
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2379
    const/4 v6, 0x1

    return v6

    .line 2384
    :sswitch_c9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2385
    const/4 v0, 0x0

    move-object/16 v315, v0

    .line 2386
    .local v315, "transform":Landroid/view/animation/LenovoTransformation;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_83

    .line 2387
    sget-object v6, Landroid/view/animation/LenovoTransformation;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v315, v0

    .end local v315    # "transform":Landroid/view/animation/LenovoTransformation;
    move-object/from16 v0, v315

    check-cast v0, Landroid/view/animation/LenovoTransformation;

    move-object/16 v315, v0

    .line 2389
    :cond_83
    move-object/from16 v0, p0

    move-object/from16 v1, v315

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setLenovoGlobalTransform(Landroid/view/animation/LenovoTransformation;)V

    .line 2390
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2391
    const/4 v6, 0x1

    return v6

    .line 2394
    :sswitch_ca
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2395
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getLenovoGlobalTransform()Landroid/view/animation/LenovoTransformation;

    move-result-object v0

    move-object/16 v315, v0

    .line 2396
    .local v315, "transform":Landroid/view/animation/LenovoTransformation;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2397
    move-object/from16 v0, v315

    if-nez v0, :cond_84

    .line 2398
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2404
    :goto_79
    const/4 v6, 0x1

    return v6

    .line 2400
    :cond_84
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2401
    const/4 v6, 0x0

    move-object/from16 v0, v315

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/view/animation/LenovoTransformation;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_79

    .line 2408
    .end local v315    # "transform":Landroid/view/animation/LenovoTransformation;
    :sswitch_cb
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2409
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->performIdleMaintenance()V

    .line 2410
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2411
    const/4 v6, 0x1

    return v6

    .line 2415
    :sswitch_cc
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2416
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    move-object/16 v256, v0

    .line 2418
    .local v256, "parentActivityToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IActivityContainerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityContainerCallback;

    move-result-object v184

    .line 2420
    .local v184, "callback":Landroid/app/IActivityContainerCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v256

    move-object/from16 v2, v184

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->createVirtualActivityContainer(Landroid/os/IBinder;Landroid/app/IActivityContainerCallback;)Landroid/app/IActivityContainer;

    move-result-object v170

    .line 2421
    .local v170, "activityContainer":Landroid/app/IActivityContainer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2422
    if-eqz v170, :cond_85

    .line 2423
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2424
    invoke-interface/range {v170 .. v170}, Landroid/app/IActivityContainer;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2428
    :goto_7a
    const/4 v6, 0x1

    return v6

    .line 2426
    :cond_85
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7a

    .line 2432
    .end local v170    # "activityContainer":Landroid/app/IActivityContainer;
    .end local v184    # "callback":Landroid/app/IActivityContainerCallback;
    .end local v256    # "parentActivityToken":Landroid/os/IBinder;
    :sswitch_cd
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2434
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IActivityContainer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityContainer;

    move-result-object v170

    .line 2435
    .restart local v170    # "activityContainer":Landroid/app/IActivityContainer;
    move-object/from16 v0, p0

    move-object/from16 v1, v170

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->deleteActivityContainer(Landroid/app/IActivityContainer;)V

    .line 2436
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2437
    const/4 v6, 0x1

    return v6

    .line 2441
    .end local v170    # "activityContainer":Landroid/app/IActivityContainer;
    :sswitch_ce
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v196

    .line 2443
    .local v196, "displayId":I
    move-object/from16 v0, p0

    move/from16 v1, v196

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->createStackOnDisplay(I)Landroid/app/IActivityContainer;

    move-result-object v170

    .line 2444
    .restart local v170    # "activityContainer":Landroid/app/IActivityContainer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2445
    if-eqz v170, :cond_86

    .line 2446
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2447
    invoke-interface/range {v170 .. v170}, Landroid/app/IActivityContainer;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2451
    :goto_7b
    const/4 v6, 0x1

    return v6

    .line 2449
    :cond_86
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7b

    .line 2455
    .end local v170    # "activityContainer":Landroid/app/IActivityContainer;
    .end local v196    # "displayId":I
    :sswitch_cf
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2456
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v171

    .line 2457
    .restart local v171    # "activityToken":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v171

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityDisplayId(Landroid/os/IBinder;)I

    move-result v196

    .line 2458
    .restart local v196    # "displayId":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2459
    move-object/from16 v0, p3

    move/from16 v1, v196

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2460
    const/4 v6, 0x1

    return v6

    .line 2464
    .end local v171    # "activityToken":Landroid/os/IBinder;
    .end local v196    # "displayId":I
    :sswitch_d0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2465
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v310, v0

    .line 2466
    .restart local v310    # "taskId":I
    move-object/from16 v0, p0

    move/from16 v1, v310

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startLockTaskMode(I)V

    .line 2467
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2468
    const/4 v6, 0x1

    return v6

    .line 2472
    .end local v310    # "taskId":I
    :sswitch_d1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2473
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2474
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startLockTaskMode(Landroid/os/IBinder;)V

    .line 2475
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2476
    const/4 v6, 0x1

    return v6

    .line 2480
    .end local v73    # "token":Landroid/os/IBinder;
    :sswitch_d2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2481
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->startLockTaskModeOnCurrent()V

    .line 2482
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2483
    const/4 v6, 0x1

    return v6

    .line 2487
    :sswitch_d3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2488
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopLockTaskMode()V

    .line 2489
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2490
    const/4 v6, 0x1

    return v6

    .line 2494
    :sswitch_d4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2495
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopLockTaskModeOnCurrent()V

    .line 2496
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2497
    const/4 v6, 0x1

    return v6

    .line 2501
    :sswitch_d5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2502
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isInLockTaskMode()Z

    move-result v221

    .line 2503
    .local v221, "isInLockTaskMode":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2504
    if-eqz v221, :cond_87

    const/4 v6, 0x1

    :goto_7c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2505
    const/4 v6, 0x1

    return v6

    .line 2504
    :cond_87
    const/4 v6, 0x0

    goto :goto_7c

    .line 2509
    .end local v221    # "isInLockTaskMode":Z
    :sswitch_d6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2510
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getLockTaskModeState()I

    move-result v237

    .line 2511
    .local v237, "lockTaskModeState":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2512
    move-object/from16 v0, p3

    move/from16 v1, v237

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2513
    const/4 v6, 0x1

    return v6

    .line 2517
    .end local v237    # "lockTaskModeState":I
    :sswitch_d7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2518
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2519
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->showLockTaskEscapeMessage(Landroid/os/IBinder;)V

    .line 2520
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2521
    const/4 v6, 0x1

    return v6

    .line 2525
    .end local v73    # "token":Landroid/os/IBinder;
    :sswitch_d8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2526
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2528
    .restart local v73    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v321, v0

    move-object/from16 v0, v321

    check-cast v0, Landroid/app/ActivityManager$TaskDescription;

    move-object/16 v321, v0

    .line 2529
    .local v321, "values":Landroid/app/ActivityManager$TaskDescription;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v321

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V

    .line 2530
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2531
    const/4 v6, 0x1

    return v6

    .line 2535
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v321    # "values":Landroid/app/ActivityManager$TaskDescription;
    :sswitch_d9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2536
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v310, v0

    .line 2537
    .restart local v310    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_88

    const/4 v0, 0x1

    move/16 v285, v0

    .line 2538
    .local v285, "resizeable":Z
    :goto_7d
    move-object/from16 v0, p0

    move/from16 v1, v310

    move/from16 v2, v285

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setTaskResizeable(IZ)V

    .line 2539
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2540
    const/4 v6, 0x1

    return v6

    .line 2537
    .end local v285    # "resizeable":Z
    :cond_88
    const/4 v0, 0x0

    move/16 v285, v0

    .restart local v285    # "resizeable":Z
    goto :goto_7d

    .line 2544
    .end local v285    # "resizeable":Z
    .end local v310    # "taskId":I
    :sswitch_da
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2545
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v310, v0

    .line 2546
    .restart local v310    # "taskId":I
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v272, v0

    move-object/from16 v0, v272

    check-cast v0, Landroid/graphics/Rect;

    move-object/16 v272, v0

    .line 2547
    .restart local v272    # "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move/from16 v1, v310

    move-object/from16 v2, v272

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->resizeTask(ILandroid/graphics/Rect;)V

    .line 2548
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2549
    const/4 v6, 0x1

    return v6

    .line 2553
    .end local v272    # "r":Landroid/graphics/Rect;
    .end local v310    # "taskId":I
    :sswitch_db
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2554
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v202

    .line 2555
    .local v202, "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v202

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v208

    .line 2556
    .local v208, "icon":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2557
    if-nez v208, :cond_89

    .line 2558
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2563
    :goto_7e
    const/4 v6, 0x1

    return v6

    .line 2560
    :cond_89
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2561
    const/4 v6, 0x0

    move-object/from16 v0, v208

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_7e

    .line 2567
    .end local v202    # "filename":Ljava/lang/String;
    .end local v208    # "icon":Landroid/graphics/Bitmap;
    :sswitch_dc
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2569
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_8a

    .line 2570
    const/16 v183, 0x0

    .line 2574
    :goto_7f
    if-nez v183, :cond_8b

    const/16 v253, 0x0

    .line 2575
    :goto_80
    move-object/from16 v0, p0

    move-object/from16 v1, v253

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    .line 2576
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2577
    const/4 v6, 0x1

    return v6

    .line 2572
    :cond_8a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v183

    .restart local v183    # "bundle":Landroid/os/Bundle;
    goto :goto_7f

    .line 2574
    .end local v183    # "bundle":Landroid/os/Bundle;
    :cond_8b
    new-instance v253, Landroid/app/ActivityOptions;

    move-object/from16 v0, v253

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    .restart local v253    # "options":Landroid/app/ActivityOptions;
    goto :goto_80

    .line 2581
    .end local v253    # "options":Landroid/app/ActivityOptions;
    :sswitch_dd
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2582
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2583
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-lez v6, :cond_8c

    const/16 v198, 0x1

    .line 2584
    .local v198, "enable":Z
    :goto_81
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move/from16 v2, v198

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->requestVisibleBehind(Landroid/os/IBinder;Z)Z

    move-result v0

    move/16 v304, v0

    .line 2585
    .restart local v304    # "success":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2586
    move/from16 v0, v304

    if-eqz v0, :cond_8d

    const/4 v6, 0x1

    :goto_82
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2587
    const/4 v6, 0x1

    return v6

    .line 2583
    .end local v198    # "enable":Z
    .end local v304    # "success":Z
    :cond_8c
    const/16 v198, 0x0

    .restart local v198    # "enable":Z
    goto :goto_81

    .line 2586
    .restart local v304    # "success":Z
    :cond_8d
    const/4 v6, 0x0

    goto :goto_82

    .line 2591
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v198    # "enable":Z
    .end local v304    # "success":Z
    :sswitch_de
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2592
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2593
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isBackgroundVisibleBehind(Landroid/os/IBinder;)Z

    move-result v199

    .line 2594
    .local v199, "enabled":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2595
    if-eqz v199, :cond_8e

    const/4 v6, 0x1

    :goto_83
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2596
    const/4 v6, 0x1

    return v6

    .line 2595
    :cond_8e
    const/4 v6, 0x0

    goto :goto_83

    .line 2600
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v199    # "enabled":Z
    :sswitch_df
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2601
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2602
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->backgroundResourcesReleased(Landroid/os/IBinder;)V

    .line 2603
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2604
    const/4 v6, 0x1

    return v6

    .line 2608
    .end local v73    # "token":Landroid/os/IBinder;
    :sswitch_e0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2609
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2610
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyLaunchTaskBehindComplete(Landroid/os/IBinder;)V

    .line 2611
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2612
    const/4 v6, 0x1

    return v6

    .line 2616
    .end local v73    # "token":Landroid/os/IBinder;
    :sswitch_e1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2617
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2618
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyEnterAnimationComplete(Landroid/os/IBinder;)V

    .line 2619
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2620
    const/4 v6, 0x1

    return v6

    .line 2624
    .end local v73    # "token":Landroid/os/IBinder;
    :sswitch_e2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2625
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->bootAnimationComplete()V

    .line 2626
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2627
    const/4 v6, 0x1

    return v6

    .line 2631
    :sswitch_e3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2632
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v112

    .line 2633
    .restart local v112    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v204

    .line 2634
    .local v204, "firstPacket":[B
    move-object/from16 v0, p0

    move/from16 v1, v112

    move-object/from16 v2, v204

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->notifyCleartextNetwork(I[B)V

    .line 2635
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2636
    const/4 v6, 0x1

    return v6

    .line 2640
    .end local v112    # "uid":I
    .end local v204    # "firstPacket":[B
    :sswitch_e4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2641
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v162

    .line 2642
    .local v162, "procName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v112

    .line 2643
    .restart local v112    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v164

    .line 2644
    .local v164, "maxMemSize":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v166

    .local v166, "reportPackage":Ljava/lang/String;
    move-object/from16 v161, p0

    move/from16 v163, v112

    .line 2645
    invoke-virtual/range {v161 .. v166}, Landroid/app/ActivityManagerNative;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    .line 2646
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2647
    const/4 v6, 0x1

    return v6

    .line 2651
    .end local v112    # "uid":I
    .end local v162    # "procName":Ljava/lang/String;
    .end local v164    # "maxMemSize":J
    .end local v166    # "reportPackage":Ljava/lang/String;
    :sswitch_e5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2652
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v142

    .line 2653
    .restart local v142    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v142

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->dumpHeapFinished(Ljava/lang/String;)V

    .line 2654
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2655
    const/4 v6, 0x1

    return v6

    .line 2659
    .end local v142    # "path":Ljava/lang/String;
    :sswitch_e6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2661
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2660
    invoke-static {v6}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v46

    .line 2662
    .restart local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8f

    const/16 v224, 0x1

    .line 2663
    .local v224, "keepAwake":Z
    :goto_84
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v224

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setVoiceKeepAwake(Landroid/service/voice/IVoiceInteractionSession;Z)V

    .line 2664
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2665
    const/4 v6, 0x1

    return v6

    .line 2662
    .end local v224    # "keepAwake":Z
    :cond_8f
    const/16 v224, 0x0

    .restart local v224    # "keepAwake":Z
    goto :goto_84

    .line 2669
    .end local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    .end local v224    # "keepAwake":Z
    :sswitch_e7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2670
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2671
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v255

    .line 2672
    .local v255, "packages":[Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v255

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->updateLockTaskPackages(I[Ljava/lang/String;)V

    .line 2673
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2674
    const/4 v6, 0x1

    return v6

    .line 2678
    .end local v17    # "userId":I
    .end local v255    # "packages":[Ljava/lang/String;
    :sswitch_e8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2679
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 2680
    .restart local v32    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updateDeviceOwner(Ljava/lang/String;)V

    .line 2681
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2682
    const/4 v6, 0x1

    return v6

    .line 2686
    .end local v32    # "packageName":Ljava/lang/String;
    :sswitch_e9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2687
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v264, v0

    .line 2688
    .restart local v264    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2689
    .restart local v8    # "callingPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v264

    invoke-virtual {v0, v1, v8}, Landroid/app/ActivityManagerNative;->getPackageProcessState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move/16 v277, v0

    .line 2690
    .restart local v277    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2691
    move-object/from16 v0, p3

    move/from16 v1, v277

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2692
    const/4 v6, 0x1

    return v6

    .line 2696
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v264    # "pkg":Ljava/lang/String;
    .end local v277    # "res":I
    :sswitch_ea
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2697
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v120

    .line 2698
    .restart local v120    # "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2699
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v226

    .line 2700
    .local v226, "level":I
    move-object/from16 v0, p0

    move-object/from16 v1, v120

    move/from16 v2, v17

    move/from16 v3, v226

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setProcessMemoryTrimLevel(Ljava/lang/String;II)Z

    move-result v0

    move/16 v283, v0

    .line 2701
    .restart local v283    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2702
    move/from16 v0, v283

    if-eqz v0, :cond_90

    const/4 v6, 0x1

    :goto_85
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2703
    const/4 v6, 0x1

    return v6

    .line 2702
    :cond_90
    const/4 v6, 0x0

    goto :goto_85

    .line 2707
    .end local v17    # "userId":I
    .end local v120    # "process":Ljava/lang/String;
    .end local v226    # "level":I
    .end local v283    # "res":Z
    :sswitch_eb
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2708
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2709
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isRootVoiceInteraction(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v283, v0

    .line 2710
    .restart local v283    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2711
    move/from16 v0, v283

    if-eqz v0, :cond_91

    const/4 v6, 0x1

    :goto_86
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2712
    const/4 v6, 0x1

    return v6

    .line 2711
    :cond_91
    const/4 v6, 0x0

    goto :goto_86

    .line 2717
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v283    # "res":Z
    :sswitch_ec
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2718
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->notifyWindowTimeout()V

    .line 2719
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2720
    const/4 v6, 0x1

    return v6

    .line 2727
    :sswitch_ed
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2728
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v313, v0

    .line 2729
    .local v313, "timeout":I
    move-object/from16 v0, p0

    move/from16 v1, v313

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->haltActivityResuming(I)Z

    move-result v0

    move/16 v288, v0

    .line 2730
    .restart local v288    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2731
    move/from16 v0, v288

    if-eqz v0, :cond_92

    const/4 v6, 0x1

    :goto_87
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2732
    const/4 v6, 0x1

    return v6

    .line 2731
    :cond_92
    const/4 v6, 0x0

    goto :goto_87

    .line 2736
    .end local v288    # "result":Z
    .end local v313    # "timeout":I
    :sswitch_ee
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2737
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->restoreActivityResuming()Z

    move-result v0

    move/16 v288, v0

    .line 2738
    .restart local v288    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2739
    move/from16 v0, v288

    if-eqz v0, :cond_93

    const/4 v6, 0x1

    :goto_88
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2740
    const/4 v6, 0x1

    return v6

    .line 2739
    :cond_93
    const/4 v6, 0x0

    goto :goto_88

    .line 2746
    .end local v288    # "result":Z
    :sswitch_ef
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2747
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v72

    .line 2748
    .restart local v72    # "className":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setWallpaperProcess(Landroid/content/ComponentName;)V

    .line 2749
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2750
    const/4 v6, 0x1

    return v6

    .line 2756
    .end local v72    # "className":Landroid/content/ComponentName;
    :sswitch_f0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2757
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_94

    const/16 v219, 0x1

    .line 2758
    .restart local v219    # "isForeground":Z
    :goto_89
    move-object/from16 v0, p0

    move/from16 v1, v219

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updateWallpaperState(Z)V

    .line 2759
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2760
    const/4 v6, 0x1

    return v6

    .line 2757
    .end local v219    # "isForeground":Z
    :cond_94
    const/16 v219, 0x0

    .restart local v219    # "isForeground":Z
    goto :goto_89

    .line 2766
    .end local v219    # "isForeground":Z
    :sswitch_f1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2767
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 2768
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2769
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->forceKillPackage(Ljava/lang/String;I)V

    .line 2770
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2771
    const/4 v6, 0x1

    return v6

    .line 2777
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    :sswitch_f2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2778
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v113

    .line 2779
    .restart local v113    # "mode":I
    move-object/from16 v0, p0

    move/from16 v1, v113

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setAalMode(I)V

    .line 2780
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2781
    const/4 v6, 0x1

    return v6

    .line 2785
    .end local v113    # "mode":I
    :sswitch_f3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2786
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_95

    const/16 v199, 0x1

    .line 2787
    .local v199, "enabled":Z
    :goto_8a
    move-object/from16 v0, p0

    move/from16 v1, v199

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setAalEnabled(Z)V

    .line 2788
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2789
    const/4 v6, 0x1

    return v6

    .line 2786
    .end local v199    # "enabled":Z
    :cond_95
    const/16 v199, 0x0

    .restart local v199    # "enabled":Z
    goto :goto_8a

    .line 2795
    .end local v199    # "enabled":Z
    :sswitch_f4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2796
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v265, v0

    .line 2797
    .local v265, "pkgName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_96

    const/4 v0, 0x1

    move/16 v294, v0

    .line 2798
    .local v294, "set":Z
    :goto_8b
    move-object/from16 v0, p0

    move-object/from16 v1, v265

    move/from16 v2, v294

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPersistentForce(Ljava/lang/String;Z)V

    .line 2799
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2800
    const/4 v6, 0x1

    return v6

    .line 2797
    .end local v294    # "set":Z
    :cond_96
    const/4 v0, 0x0

    move/16 v294, v0

    .restart local v294    # "set":Z
    goto :goto_8b

    .line 159
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_71
        0x3 -> :sswitch_3
        0x4 -> :sswitch_65
        0x5 -> :sswitch_66
        0xb -> :sswitch_c
        0xc -> :sswitch_13
        0xd -> :sswitch_14
        0xe -> :sswitch_15
        0xf -> :sswitch_16
        0x10 -> :sswitch_17
        0x11 -> :sswitch_18
        0x12 -> :sswitch_19
        0x13 -> :sswitch_1b
        0x14 -> :sswitch_1c
        0x15 -> :sswitch_1f
        0x16 -> :sswitch_20
        0x17 -> :sswitch_24
        0x18 -> :sswitch_2b
        0x1a -> :sswitch_2e
        0x1b -> :sswitch_37
        0x1d -> :sswitch_38
        0x1e -> :sswitch_3a
        0x1f -> :sswitch_3b
        0x20 -> :sswitch_d
        0x21 -> :sswitch_40
        0x22 -> :sswitch_41
        0x23 -> :sswitch_42
        0x24 -> :sswitch_45
        0x25 -> :sswitch_46
        0x26 -> :sswitch_47
        0x27 -> :sswitch_1a
        0x2a -> :sswitch_68
        0x2b -> :sswitch_69
        0x2c -> :sswitch_4a
        0x2d -> :sswitch_4b
        0x2e -> :sswitch_4c
        0x2f -> :sswitch_4d
        0x30 -> :sswitch_43
        0x31 -> :sswitch_50
        0x32 -> :sswitch_51
        0x33 -> :sswitch_57
        0x34 -> :sswitch_58
        0x35 -> :sswitch_5a
        0x36 -> :sswitch_5c
        0x37 -> :sswitch_5e
        0x38 -> :sswitch_5f
        0x39 -> :sswitch_6a
        0x3a -> :sswitch_63
        0x3b -> :sswitch_74
        0x3c -> :sswitch_25
        0x3d -> :sswitch_49
        0x3e -> :sswitch_1e
        0x3f -> :sswitch_52
        0x40 -> :sswitch_53
        0x41 -> :sswitch_54
        0x42 -> :sswitch_6b
        0x43 -> :sswitch_a
        0x44 -> :sswitch_6c
        0x45 -> :sswitch_3e
        0x46 -> :sswitch_4e
        0x47 -> :sswitch_4f
        0x48 -> :sswitch_48
        0x49 -> :sswitch_59
        0x4a -> :sswitch_44
        0x4b -> :sswitch_2d
        0x4c -> :sswitch_64
        0x4d -> :sswitch_28
        0x4e -> :sswitch_5d
        0x4f -> :sswitch_77
        0x50 -> :sswitch_6f
        0x51 -> :sswitch_27
        0x52 -> :sswitch_26
        0x53 -> :sswitch_29
        0x54 -> :sswitch_79
        0x55 -> :sswitch_7e
        0x56 -> :sswitch_7a
        0x57 -> :sswitch_7b
        0x58 -> :sswitch_7c
        0x59 -> :sswitch_7d
        0x5a -> :sswitch_7f
        0x5b -> :sswitch_80
        0x5c -> :sswitch_81
        0x5d -> :sswitch_55
        0x5e -> :sswitch_56
        0x5f -> :sswitch_82
        0x60 -> :sswitch_83
        0x61 -> :sswitch_84
        0x62 -> :sswitch_85
        0x63 -> :sswitch_86
        0x64 -> :sswitch_8
        0x65 -> :sswitch_87
        0x66 -> :sswitch_72
        0x67 -> :sswitch_75
        0x68 -> :sswitch_88
        0x69 -> :sswitch_6
        0x6a -> :sswitch_12
        0x6b -> :sswitch_7
        0x6c -> :sswitch_2a
        0x6d -> :sswitch_8a
        0x6e -> :sswitch_73
        0x6f -> :sswitch_8b
        0x70 -> :sswitch_90
        0x71 -> :sswitch_91
        0x72 -> :sswitch_92
        0x73 -> :sswitch_93
        0x74 -> :sswitch_94
        0x75 -> :sswitch_95
        0x76 -> :sswitch_96
        0x77 -> :sswitch_97
        0x78 -> :sswitch_98
        0x79 -> :sswitch_99
        0x7a -> :sswitch_a2
        0x7b -> :sswitch_1d
        0x7c -> :sswitch_9a
        0x7d -> :sswitch_9b
        0x7e -> :sswitch_9c
        0x7f -> :sswitch_9d
        0x80 -> :sswitch_aa
        0x81 -> :sswitch_ab
        0x82 -> :sswitch_9e
        0x84 -> :sswitch_a4
        0x85 -> :sswitch_a6
        0x86 -> :sswitch_a7
        0x87 -> :sswitch_ac
        0x88 -> :sswitch_b0
        0x89 -> :sswitch_b1
        0x8a -> :sswitch_b3
        0x8c -> :sswitch_76
        0x8d -> :sswitch_39
        0x8e -> :sswitch_3f
        0x8f -> :sswitch_78
        0x90 -> :sswitch_70
        0x91 -> :sswitch_a1
        0x92 -> :sswitch_b6
        0x93 -> :sswitch_b7
        0x94 -> :sswitch_67
        0x95 -> :sswitch_e
        0x96 -> :sswitch_b8
        0x97 -> :sswitch_3c
        0x98 -> :sswitch_ad
        0x99 -> :sswitch_4
        0x9a -> :sswitch_a0
        0x9b -> :sswitch_ba
        0x9c -> :sswitch_bb
        0x9d -> :sswitch_a3
        0x9e -> :sswitch_bc
        0x9f -> :sswitch_bd
        0xa1 -> :sswitch_ae
        0xa2 -> :sswitch_be
        0xa3 -> :sswitch_c0
        0xa4 -> :sswitch_b9
        0xa5 -> :sswitch_c4
        0xa6 -> :sswitch_89
        0xa7 -> :sswitch_c5
        0xa8 -> :sswitch_cc
        0xa9 -> :sswitch_2f
        0xaa -> :sswitch_30
        0xab -> :sswitch_31
        0xac -> :sswitch_34
        0xad -> :sswitch_32
        0xae -> :sswitch_8d
        0xaf -> :sswitch_8e
        0xb0 -> :sswitch_c7
        0xb1 -> :sswitch_c6
        0xb2 -> :sswitch_c8
        0xb3 -> :sswitch_cb
        0xb4 -> :sswitch_60
        0xb5 -> :sswitch_61
        0xb6 -> :sswitch_62
        0xb7 -> :sswitch_3d
        0xb9 -> :sswitch_cf
        0xba -> :sswitch_cd
        0xbb -> :sswitch_ea
        0xd3 -> :sswitch_af
        0xd4 -> :sswitch_9f
        0xd5 -> :sswitch_33
        0xd6 -> :sswitch_d0
        0xd7 -> :sswitch_d1
        0xd8 -> :sswitch_d3
        0xd9 -> :sswitch_d5
        0xda -> :sswitch_d8
        0xdb -> :sswitch_9
        0xdc -> :sswitch_8f
        0xdd -> :sswitch_21
        0xde -> :sswitch_d2
        0xdf -> :sswitch_d4
        0xe0 -> :sswitch_f
        0xe1 -> :sswitch_8c
        0xe2 -> :sswitch_dd
        0xe3 -> :sswitch_de
        0xe4 -> :sswitch_df
        0xe5 -> :sswitch_e0
        0xe6 -> :sswitch_b
        0xe7 -> :sswitch_e1
        0xe8 -> :sswitch_b4
        0xe9 -> :sswitch_5
        0xea -> :sswitch_22
        0xeb -> :sswitch_23
        0xec -> :sswitch_10
        0xed -> :sswitch_11
        0xee -> :sswitch_e2
        0xef -> :sswitch_db
        0xf0 -> :sswitch_c1
        0xf1 -> :sswitch_dc
        0xf2 -> :sswitch_5b
        0xf3 -> :sswitch_36
        0x119 -> :sswitch_e3
        0x11a -> :sswitch_ce
        0x11b -> :sswitch_35
        0x11c -> :sswitch_d9
        0x11d -> :sswitch_bf
        0x11e -> :sswitch_da
        0x11f -> :sswitch_d6
        0x120 -> :sswitch_e4
        0x121 -> :sswitch_e5
        0x122 -> :sswitch_e6
        0x123 -> :sswitch_e7
        0x124 -> :sswitch_6d
        0x125 -> :sswitch_6e
        0x126 -> :sswitch_e9
        0x127 -> :sswitch_d7
        0x128 -> :sswitch_e8
        0x129 -> :sswitch_b5
        0x12a -> :sswitch_a8
        0x12b -> :sswitch_a9
        0x12c -> :sswitch_c2
        0x12d -> :sswitch_c3
        0x12e -> :sswitch_eb
        0x191 -> :sswitch_ec
        0x192 -> :sswitch_ef
        0x193 -> :sswitch_f0
        0x194 -> :sswitch_ed
        0x195 -> :sswitch_ee
        0x196 -> :sswitch_b2
        0x197 -> :sswitch_f1
        0x198 -> :sswitch_2c
        0x199 -> :sswitch_f2
        0x19a -> :sswitch_f3
        0x3e9 -> :sswitch_f4
        0x7d2 -> :sswitch_c9
        0x7d3 -> :sswitch_ca
        0xfa2 -> :sswitch_0
        0x138a -> :sswitch_1
        0x138b -> :sswitch_2
        0x1772 -> :sswitch_a5
    .end sparse-switch
.end method
