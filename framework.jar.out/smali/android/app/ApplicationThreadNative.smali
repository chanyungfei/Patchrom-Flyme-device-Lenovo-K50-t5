.class public abstract Landroid/app/ApplicationThreadNative;
.super Landroid/os/Binder;
.source "ApplicationThreadNative.java"

# interfaces
.implements Landroid/app/IApplicationThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 76
    const-string/jumbo v0, "android.app.IApplicationThread"

    invoke-virtual {p0, p0, v0}, Landroid/app/ApplicationThreadNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 63
    if-nez p0, :cond_0

    .line 64
    return-object v1

    .line 67
    :cond_0
    const-string/jumbo v1, "android.app.IApplicationThread"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IApplicationThread;

    .line 68
    .local v0, "in":Landroid/app/IApplicationThread;
    if-eqz v0, :cond_1

    .line 69
    return-object v0

    .line 72
    :cond_1
    new-instance v1, Landroid/app/ApplicationThreadProxy;

    invoke-direct {v1, p0}, Landroid/app/ApplicationThreadProxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 755
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 128
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
    .line 82
    packed-switch p1, :pswitch_data_0

    .line 750
    :pswitch_0
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    .line 85
    :pswitch_1
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 87
    .local v6, "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v7, 0x1

    .line 88
    .local v7, "finished":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v8, 0x1

    .line 89
    .local v8, "userLeaving":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 90
    .local v9, "configChanges":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v10, 0x1

    .local v10, "dontReport":Z
    :goto_2
    move-object/from16 v5, p0

    .line 91
    invoke-virtual/range {v5 .. v10}, Landroid/app/ApplicationThreadNative;->schedulePauseActivity(Landroid/os/IBinder;ZZIZ)V

    .line 92
    const/4 v5, 0x1

    return v5

    .line 87
    .end local v7    # "finished":Z
    .end local v8    # "userLeaving":Z
    .end local v9    # "configChanges":I
    .end local v10    # "dontReport":Z
    :cond_0
    const/4 v7, 0x0

    .restart local v7    # "finished":Z
    goto :goto_0

    .line 88
    :cond_1
    const/4 v8, 0x0

    .restart local v8    # "userLeaving":Z
    goto :goto_1

    .line 90
    .restart local v9    # "configChanges":I
    :cond_2
    const/4 v10, 0x0

    .restart local v10    # "dontReport":Z
    goto :goto_2

    .line 97
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v7    # "finished":Z
    .end local v8    # "userLeaving":Z
    .end local v9    # "configChanges":I
    .end local v10    # "dontReport":Z
    :pswitch_2
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 99
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    const/16 v123, 0x1

    .line 100
    .local v123, "show":Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 101
    .restart local v9    # "configChanges":I
    move-object/from16 v0, p0

    move/from16 v1, v123

    invoke-virtual {v0, v6, v1, v9}, Landroid/app/ApplicationThreadNative;->scheduleStopActivity(Landroid/os/IBinder;ZI)V

    .line 102
    const/4 v5, 0x1

    return v5

    .line 99
    .end local v9    # "configChanges":I
    .end local v123    # "show":Z
    :cond_3
    const/16 v123, 0x0

    .restart local v123    # "show":Z
    goto :goto_3

    .line 107
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v123    # "show":Z
    :pswitch_3
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 109
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    const/16 v123, 0x1

    .line 110
    .restart local v123    # "show":Z
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v123

    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V

    .line 111
    const/4 v5, 0x1

    return v5

    .line 109
    .end local v123    # "show":Z
    :cond_4
    const/16 v123, 0x0

    .restart local v123    # "show":Z
    goto :goto_4

    .line 116
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v123    # "show":Z
    :pswitch_4
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 118
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    const/16 v124, 0x1

    .line 119
    .local v124, "sleeping":Z
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v124

    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->scheduleSleeping(Landroid/os/IBinder;Z)V

    .line 120
    const/4 v5, 0x1

    return v5

    .line 118
    .end local v124    # "sleeping":Z
    :cond_5
    const/16 v124, 0x0

    .restart local v124    # "sleeping":Z
    goto :goto_5

    .line 125
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v124    # "sleeping":Z
    :pswitch_5
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 127
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 128
    .local v21, "procState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    const/16 v27, 0x1

    .line 129
    .local v27, "isForward":Z
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v120

    .line 130
    .local v120, "resumeArgs":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v27

    move-object/from16 v3, v120

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleResumeActivity(Landroid/os/IBinder;IZLandroid/os/Bundle;)V

    .line 131
    const/4 v5, 0x1

    return v5

    .line 128
    .end local v27    # "isForward":Z
    .end local v120    # "resumeArgs":Landroid/os/Bundle;
    :cond_6
    const/16 v27, 0x0

    .restart local v27    # "isForward":Z
    goto :goto_6

    .line 136
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v21    # "procState":I
    .end local v27    # "isForward":Z
    :pswitch_6
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 138
    .restart local v6    # "b":Landroid/os/IBinder;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v24

    .line 139
    .local v24, "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    .line 140
    const/4 v5, 0x1

    return v5

    .line 145
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v24    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    :pswitch_7
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    .line 147
    .local v12, "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 148
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 149
    .local v14, "ident":I
    sget-object v5, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ActivityInfo;

    .line 150
    .local v15, "info":Landroid/content/pm/ActivityInfo;
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/res/Configuration;

    .line 151
    .local v16, "curConfig":Landroid/content/res/Configuration;
    const/16 v17, 0x0

    .line 152
    .local v17, "overrideConfig":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    .line 153
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "overrideConfig":Landroid/content/res/Configuration;
    check-cast v17, Landroid/content/res/Configuration;

    .line 155
    :cond_7
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/res/CompatibilityInfo;

    .line 156
    .local v18, "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 158
    .local v19, "referrer":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 157
    invoke-static {v5}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v20

    .line 159
    .local v20, "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 160
    .restart local v21    # "procState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v22

    .line 161
    .local v22, "state":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v23

    .line 162
    .local v23, "persistentState":Landroid/os/PersistableBundle;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v24

    .line 163
    .restart local v24    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    sget-object v5, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v25

    .line 164
    .local v25, "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    const/16 v26, 0x1

    .line 165
    .local v26, "notResumed":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    const/16 v27, 0x1

    .line 166
    .restart local v27    # "isForward":Z
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    .line 167
    sget-object v5, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/app/ProfilerInfo;

    :goto_9
    move-object/from16 v11, p0

    move-object v13, v6

    .line 168
    invoke-virtual/range {v11 .. v28}, Landroid/app/ApplicationThreadNative;->scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZZLandroid/app/ProfilerInfo;)V

    .line 171
    const/4 v5, 0x1

    return v5

    .line 164
    .end local v26    # "notResumed":Z
    .end local v27    # "isForward":Z
    :cond_8
    const/16 v26, 0x0

    .restart local v26    # "notResumed":Z
    goto :goto_7

    .line 165
    :cond_9
    const/16 v27, 0x0

    .restart local v27    # "isForward":Z
    goto :goto_8

    .line 167
    :cond_a
    const/16 v28, 0x0

    .local v28, "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_9

    .line 176
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v14    # "ident":I
    .end local v15    # "info":Landroid/content/pm/ActivityInfo;
    .end local v16    # "curConfig":Landroid/content/res/Configuration;
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v19    # "referrer":Ljava/lang/String;
    .end local v20    # "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    .end local v21    # "procState":I
    .end local v22    # "state":Landroid/os/Bundle;
    .end local v23    # "persistentState":Landroid/os/PersistableBundle;
    .end local v24    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v25    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .end local v26    # "notResumed":Z
    .end local v27    # "isForward":Z
    .end local v28    # "profilerInfo":Landroid/app/ProfilerInfo;
    :pswitch_8
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 178
    .restart local v6    # "b":Landroid/os/IBinder;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v24

    .line 179
    .restart local v24    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    sget-object v5, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v25

    .line 180
    .restart local v25    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 181
    .restart local v9    # "configChanges":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    const/16 v26, 0x1

    .line 182
    .restart local v26    # "notResumed":Z
    :goto_a
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/res/Configuration;

    .line 183
    .local v35, "config":Landroid/content/res/Configuration;
    const/16 v17, 0x0

    .line 184
    .restart local v17    # "overrideConfig":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    .line 185
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "overrideConfig":Landroid/content/res/Configuration;
    check-cast v17, Landroid/content/res/Configuration;

    :cond_b
    move-object/from16 v29, p0

    move-object/from16 v30, v6

    move-object/from16 v31, v24

    move-object/from16 v32, v25

    move/from16 v33, v9

    move/from16 v34, v26

    move-object/from16 v36, v17

    .line 187
    invoke-virtual/range {v29 .. v36}, Landroid/app/ApplicationThreadNative;->scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 188
    const/4 v5, 0x1

    return v5

    .line 181
    .end local v26    # "notResumed":Z
    .end local v35    # "config":Landroid/content/res/Configuration;
    :cond_c
    const/16 v26, 0x0

    .restart local v26    # "notResumed":Z
    goto :goto_a

    .line 193
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v9    # "configChanges":I
    .end local v24    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v25    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .end local v26    # "notResumed":Z
    :pswitch_9
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    sget-object v5, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v25

    .line 195
    .restart local v25    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 196
    .restart local v6    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Landroid/app/ApplicationThreadNative;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V

    .line 197
    const/4 v5, 0x1

    return v5

    .line 202
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v25    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    :pswitch_a
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 204
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d

    const/16 v98, 0x1

    .line 205
    .local v98, "finishing":Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 206
    .restart local v9    # "configChanges":I
    move-object/from16 v0, p0

    move/from16 v1, v98

    invoke-virtual {v0, v6, v1, v9}, Landroid/app/ApplicationThreadNative;->scheduleDestroyActivity(Landroid/os/IBinder;ZI)V

    .line 207
    const/4 v5, 0x1

    return v5

    .line 204
    .end local v9    # "configChanges":I
    .end local v98    # "finishing":Z
    :cond_d
    const/16 v98, 0x0

    .restart local v98    # "finishing":Z
    goto :goto_b

    .line 212
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v98    # "finishing":Z
    :pswitch_b
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    .line 214
    .restart local v12    # "intent":Landroid/content/Intent;
    sget-object v5, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ActivityInfo;

    .line 215
    .restart local v15    # "info":Landroid/content/pm/ActivityInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/res/CompatibilityInfo;

    .line 216
    .restart local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 217
    .local v40, "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    .line 218
    .local v41, "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v42

    .line 219
    .local v42, "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e

    const/16 v43, 0x1

    .line 220
    .local v43, "sync":Z
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    .line 221
    .local v44, "sendingUser":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .local v45, "processState":I
    move-object/from16 v36, p0

    move-object/from16 v37, v12

    move-object/from16 v38, v15

    move-object/from16 v39, v18

    .line 222
    invoke-virtual/range {v36 .. v45}, Landroid/app/ApplicationThreadNative;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V

    .line 224
    const/4 v5, 0x1

    return v5

    .line 219
    .end local v43    # "sync":Z
    .end local v44    # "sendingUser":I
    .end local v45    # "processState":I
    :cond_e
    const/16 v43, 0x0

    .restart local v43    # "sync":Z
    goto :goto_c

    .line 228
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v15    # "info":Landroid/content/pm/ActivityInfo;
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v40    # "resultCode":I
    .end local v41    # "resultData":Ljava/lang/String;
    .end local v42    # "resultExtras":Landroid/os/Bundle;
    .end local v43    # "sync":Z
    :pswitch_c
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    .line 230
    .local v30, "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v101

    check-cast v101, Landroid/content/pm/ServiceInfo;

    .line 231
    .local v101, "info":Landroid/content/pm/ServiceInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/res/CompatibilityInfo;

    .line 232
    .restart local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 233
    .restart local v45    # "processState":I
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v101

    move-object/from16 v3, v18

    move/from16 v4, v45

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ApplicationThreadNative;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 234
    const/4 v5, 0x1

    return v5

    .line 238
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v30    # "token":Landroid/os/IBinder;
    .end local v45    # "processState":I
    .end local v101    # "info":Landroid/content/pm/ServiceInfo;
    :pswitch_d
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    .line 240
    .restart local v30    # "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    .line 241
    .restart local v12    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f

    const/16 v117, 0x1

    .line 242
    .local v117, "rebind":Z
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 243
    .restart local v45    # "processState":I
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v117

    move/from16 v3, v45

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V

    .line 244
    const/4 v5, 0x1

    return v5

    .line 241
    .end local v45    # "processState":I
    .end local v117    # "rebind":Z
    :cond_f
    const/16 v117, 0x0

    .restart local v117    # "rebind":Z
    goto :goto_d

    .line 248
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v30    # "token":Landroid/os/IBinder;
    .end local v117    # "rebind":Z
    :pswitch_e
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    .line 250
    .restart local v30    # "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    .line 251
    .restart local v12    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v12}, Landroid/app/ApplicationThreadNative;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V

    .line 252
    const/4 v5, 0x1

    return v5

    .line 257
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v30    # "token":Landroid/os/IBinder;
    :pswitch_f
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    .line 259
    .restart local v30    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_10

    const/16 v31, 0x1

    .line 260
    .local v31, "taskRemoved":Z
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v32

    .line 261
    .local v32, "startId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    .line 263
    .local v33, "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_11

    .line 264
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/Intent;

    :goto_f
    move-object/from16 v29, p0

    .line 268
    invoke-virtual/range {v29 .. v34}, Landroid/app/ApplicationThreadNative;->scheduleServiceArgs(Landroid/os/IBinder;ZIILandroid/content/Intent;)V

    .line 269
    const/4 v5, 0x1

    return v5

    .line 259
    .end local v31    # "taskRemoved":Z
    .end local v32    # "startId":I
    .end local v33    # "fl":I
    :cond_10
    const/16 v31, 0x0

    .restart local v31    # "taskRemoved":Z
    goto :goto_e

    .line 266
    .restart local v32    # "startId":I
    .restart local v33    # "fl":I
    :cond_11
    const/16 v34, 0x0

    .local v34, "args":Landroid/content/Intent;
    goto :goto_f

    .line 274
    .end local v30    # "token":Landroid/os/IBinder;
    .end local v31    # "taskRemoved":Z
    .end local v32    # "startId":I
    .end local v33    # "fl":I
    .end local v34    # "args":Landroid/content/Intent;
    :pswitch_10
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    .line 276
    .restart local v30    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleStopService(Landroid/os/IBinder;)V

    .line 277
    const/4 v5, 0x1

    return v5

    .line 282
    .end local v30    # "token":Landroid/os/IBinder;
    :pswitch_11
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v47

    .line 285
    .local v47, "packageName":Ljava/lang/String;
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/content/pm/ApplicationInfo;

    .line 287
    .local v48, "info":Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v49

    .line 288
    .local v49, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_12

    .line 289
    new-instance v50, Landroid/content/ComponentName;

    move-object/from16 v0, v50

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/os/Parcel;)V

    .line 290
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_13

    .line 291
    sget-object v5, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/app/ProfilerInfo;

    .line 292
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v52

    .line 293
    .local v52, "testArgs":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v91

    .line 294
    .local v91, "binder":Landroid/os/IBinder;
    invoke-static/range {v91 .. v91}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v53

    .line 295
    .local v53, "testWatcher":Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v91

    .line 297
    invoke-static/range {v91 .. v91}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v54

    .line 298
    .local v54, "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v55

    .line 299
    .local v55, "testMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_14

    const/16 v56, 0x1

    .line 300
    .local v56, "openGlTrace":Z
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_15

    const/16 v57, 0x1

    .line 301
    .local v57, "restrictedBackupMode":Z
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_16

    const/16 v58, 0x1

    .line 302
    .local v58, "persistent":Z
    :goto_14
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/res/Configuration;

    .line 303
    .restart local v35    # "config":Landroid/content/res/Configuration;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/res/CompatibilityInfo;

    .line 304
    .restart local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v61

    .line 305
    .local v61, "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IBinder;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v62

    .local v62, "coreSettings":Landroid/os/Bundle;
    move-object/from16 v46, p0

    move-object/from16 v51, v28

    move-object/from16 v59, v35

    move-object/from16 v60, v18

    .line 306
    invoke-virtual/range {v46 .. v62}, Landroid/app/ApplicationThreadNative;->bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Landroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;)V

    .line 309
    const/4 v5, 0x1

    return v5

    .line 289
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v35    # "config":Landroid/content/res/Configuration;
    .end local v52    # "testArgs":Landroid/os/Bundle;
    .end local v53    # "testWatcher":Landroid/app/IInstrumentationWatcher;
    .end local v54    # "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    .end local v55    # "testMode":I
    .end local v56    # "openGlTrace":Z
    .end local v57    # "restrictedBackupMode":Z
    .end local v58    # "persistent":Z
    .end local v61    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IBinder;>;"
    .end local v62    # "coreSettings":Landroid/os/Bundle;
    .end local v91    # "binder":Landroid/os/IBinder;
    :cond_12
    const/16 v50, 0x0

    .local v50, "testName":Landroid/content/ComponentName;
    goto :goto_10

    .line 291
    .end local v50    # "testName":Landroid/content/ComponentName;
    :cond_13
    const/16 v28, 0x0

    .restart local v28    # "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_11

    .line 299
    .end local v28    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v52    # "testArgs":Landroid/os/Bundle;
    .restart local v53    # "testWatcher":Landroid/app/IInstrumentationWatcher;
    .restart local v54    # "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    .restart local v55    # "testMode":I
    .restart local v91    # "binder":Landroid/os/IBinder;
    :cond_14
    const/16 v56, 0x0

    .restart local v56    # "openGlTrace":Z
    goto :goto_12

    .line 300
    :cond_15
    const/16 v57, 0x0

    .restart local v57    # "restrictedBackupMode":Z
    goto :goto_13

    .line 301
    :cond_16
    const/16 v58, 0x0

    .restart local v58    # "persistent":Z
    goto :goto_14

    .line 314
    .end local v47    # "packageName":Ljava/lang/String;
    .end local v48    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v49    # "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .end local v52    # "testArgs":Landroid/os/Bundle;
    .end local v53    # "testWatcher":Landroid/app/IInstrumentationWatcher;
    .end local v54    # "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    .end local v55    # "testMode":I
    .end local v56    # "openGlTrace":Z
    .end local v57    # "restrictedBackupMode":Z
    .end local v58    # "persistent":Z
    .end local v91    # "binder":Landroid/os/IBinder;
    :pswitch_12
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleExit()V

    .line 316
    const/4 v5, 0x1

    return v5

    .line 321
    :pswitch_13
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleSuicide()V

    .line 323
    const/4 v5, 0x1

    return v5

    .line 328
    :pswitch_14
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/res/Configuration;

    .line 330
    .restart local v35    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 331
    const/4 v5, 0x1

    return v5

    .line 335
    .end local v35    # "config":Landroid/content/res/Configuration;
    :pswitch_15
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->updateTimeZone()V

    .line 337
    const/4 v5, 0x1

    return v5

    .line 341
    :pswitch_16
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->clearDnsCache()V

    .line 343
    const/4 v5, 0x1

    return v5

    .line 347
    :pswitch_17
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v116

    .line 349
    .local v116, "proxy":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v111

    .line 350
    .local v111, "port":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v96

    .line 351
    .local v96, "exclList":Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v107

    check-cast v107, Landroid/net/Uri;

    .line 352
    .local v107, "pacFileUrl":Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v116

    move-object/from16 v2, v111

    move-object/from16 v3, v96

    move-object/from16 v4, v107

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ApplicationThreadNative;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 353
    const/4 v5, 0x1

    return v5

    .line 357
    .end local v96    # "exclList":Ljava/lang/String;
    .end local v107    # "pacFileUrl":Landroid/net/Uri;
    .end local v111    # "port":Ljava/lang/String;
    .end local v116    # "proxy":Ljava/lang/String;
    :pswitch_18
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->processInBackground()V

    .line 359
    const/4 v5, 0x1

    return v5

    .line 363
    :pswitch_19
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v97

    .line 365
    .local v97, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v121

    .line 366
    .local v121, "service":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v78

    .line 367
    .local v78, "args":[Ljava/lang/String;
    if-eqz v97, :cond_17

    .line 368
    invoke-virtual/range {v97 .. v97}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v121

    move-object/from16 v2, v78

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/ApplicationThreadNative;->dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 370
    :try_start_0
    invoke-virtual/range {v97 .. v97}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :cond_17
    :goto_15
    const/4 v5, 0x1

    return v5

    .line 371
    :catch_0
    move-exception v94

    .local v94, "e":Ljava/io/IOException;
    goto :goto_15

    .line 378
    .end local v78    # "args":[Ljava/lang/String;
    .end local v94    # "e":Ljava/io/IOException;
    .end local v97    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v121    # "service":Landroid/os/IBinder;
    :pswitch_1a
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v97

    .line 380
    .restart local v97    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v121

    .line 381
    .restart local v121    # "service":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v78

    .line 382
    .restart local v78    # "args":[Ljava/lang/String;
    if-eqz v97, :cond_18

    .line 383
    invoke-virtual/range {v97 .. v97}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v121

    move-object/from16 v2, v78

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/ApplicationThreadNative;->dumpProvider(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 385
    :try_start_1
    invoke-virtual/range {v97 .. v97}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 389
    :cond_18
    :goto_16
    const/4 v5, 0x1

    return v5

    .line 386
    :catch_1
    move-exception v94

    .restart local v94    # "e":Ljava/io/IOException;
    goto :goto_16

    .line 393
    .end local v78    # "args":[Ljava/lang/String;
    .end local v94    # "e":Ljava/io/IOException;
    .end local v97    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v121    # "service":Landroid/os/IBinder;
    :pswitch_1b
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 394
    invoke-static {v5}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v64

    .line 396
    .local v64, "receiver":Landroid/content/IIntentReceiver;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    .line 397
    .restart local v12    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 398
    .restart local v40    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v67

    .line 399
    .local v67, "dataStr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v68

    .line 400
    .local v68, "extras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_19

    const/16 v69, 0x1

    .line 401
    .local v69, "ordered":Z
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1a

    const/16 v70, 0x1

    .line 402
    .local v70, "sticky":Z
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    .line 403
    .restart local v44    # "sendingUser":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .restart local v45    # "processState":I
    move-object/from16 v63, p0

    move-object/from16 v65, v12

    move/from16 v66, v40

    move/from16 v71, v44

    move/from16 v72, v45

    .line 404
    invoke-virtual/range {v63 .. v72}, Landroid/app/ApplicationThreadNative;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V

    .line 406
    const/4 v5, 0x1

    return v5

    .line 400
    .end local v44    # "sendingUser":I
    .end local v45    # "processState":I
    .end local v69    # "ordered":Z
    .end local v70    # "sticky":Z
    :cond_19
    const/16 v69, 0x0

    .restart local v69    # "ordered":Z
    goto :goto_17

    .line 401
    :cond_1a
    const/16 v70, 0x0

    .restart local v70    # "sticky":Z
    goto :goto_18

    .line 411
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v40    # "resultCode":I
    .end local v64    # "receiver":Landroid/content/IIntentReceiver;
    .end local v67    # "dataStr":Ljava/lang/String;
    .end local v68    # "extras":Landroid/os/Bundle;
    .end local v69    # "ordered":Z
    .end local v70    # "sticky":Z
    :pswitch_1c
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleLowMemory()V

    .line 413
    const/4 v5, 0x1

    return v5

    .line 418
    :pswitch_1d
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 420
    .restart local v6    # "b":Landroid/os/IBinder;
    const/16 v17, 0x0

    .line 421
    .restart local v17    # "overrideConfig":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1b

    .line 422
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "overrideConfig":Landroid/content/res/Configuration;
    check-cast v17, Landroid/content/res/Configuration;

    .line 424
    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->scheduleActivityConfigurationChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;)V

    .line 425
    const/4 v5, 0x1

    return v5

    .line 430
    .end local v6    # "b":Landroid/os/IBinder;
    :pswitch_1e
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1c

    const/16 v125, 0x1

    .line 432
    .local v125, "start":Z
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v113

    .line 433
    .local v113, "profileType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1d

    .line 434
    sget-object v5, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/app/ProfilerInfo;

    .line 435
    :goto_1a
    move-object/from16 v0, p0

    move/from16 v1, v125

    move-object/from16 v2, v28

    move/from16 v3, v113

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->profilerControl(ZLandroid/app/ProfilerInfo;I)V

    .line 436
    const/4 v5, 0x1

    return v5

    .line 431
    .end local v113    # "profileType":I
    .end local v125    # "start":Z
    :cond_1c
    const/16 v125, 0x0

    .restart local v125    # "start":Z
    goto :goto_19

    .line 434
    .restart local v113    # "profileType":I
    :cond_1d
    const/16 v28, 0x0

    .restart local v28    # "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_1a

    .line 441
    .end local v28    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v113    # "profileType":I
    .end local v125    # "start":Z
    :pswitch_1f
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v100

    .line 443
    .local v100, "group":I
    move-object/from16 v0, p0

    move/from16 v1, v100

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setSchedulingGroup(I)V

    .line 444
    const/4 v5, 0x1

    return v5

    .line 449
    .end local v100    # "group":I
    :pswitch_20
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v89

    check-cast v89, Landroid/content/pm/ApplicationInfo;

    .line 451
    .local v89, "appInfo":Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/res/CompatibilityInfo;

    .line 452
    .restart local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v90

    .line 453
    .local v90, "backupMode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v89

    move-object/from16 v2, v18

    move/from16 v3, v90

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 454
    const/4 v5, 0x1

    return v5

    .line 459
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v89    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v90    # "backupMode":I
    :pswitch_21
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v89

    check-cast v89, Landroid/content/pm/ApplicationInfo;

    .line 461
    .restart local v89    # "appInfo":Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/res/CompatibilityInfo;

    .line 462
    .restart local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v89

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V

    .line 463
    const/4 v5, 0x1

    return v5

    .line 468
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v89    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :pswitch_22
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v92

    .line 470
    .local v92, "cmd":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v108

    .line 471
    .local v108, "packages":[Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v92

    move-object/from16 v2, v108

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->dispatchPackageBroadcast(I[Ljava/lang/String;)V

    .line 472
    const/4 v5, 0x1

    return v5

    .line 477
    .end local v92    # "cmd":I
    .end local v108    # "packages":[Ljava/lang/String;
    :pswitch_23
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v105

    .line 479
    .local v105, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleCrash(Ljava/lang/String;)V

    .line 480
    const/4 v5, 0x1

    return v5

    .line 485
    .end local v105    # "msg":Ljava/lang/String;
    :pswitch_24
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1e

    const/16 v104, 0x1

    .line 487
    .local v104, "managed":Z
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v109

    .line 488
    .local v109, "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1f

    .line 489
    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/os/ParcelFileDescriptor;

    .line 490
    :goto_1c
    move-object/from16 v0, p0

    move/from16 v1, v104

    move-object/from16 v2, v109

    move-object/from16 v3, v97

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->dumpHeap(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 491
    const/4 v5, 0x1

    return v5

    .line 486
    .end local v104    # "managed":Z
    .end local v109    # "path":Ljava/lang/String;
    :cond_1e
    const/16 v104, 0x0

    .restart local v104    # "managed":Z
    goto :goto_1b

    .line 489
    .restart local v109    # "path":Ljava/lang/String;
    :cond_1f
    const/16 v97, 0x0

    .local v97, "fd":Landroid/os/ParcelFileDescriptor;
    goto :goto_1c

    .line 495
    .end local v97    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v104    # "managed":Z
    .end local v109    # "path":Ljava/lang/String;
    :pswitch_25
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v97

    .line 497
    .local v97, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v87

    .line 498
    .local v87, "activity":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v112

    .line 499
    .local v112, "prefix":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v78

    .line 500
    .restart local v78    # "args":[Ljava/lang/String;
    if-eqz v97, :cond_20

    .line 501
    invoke-virtual/range {v97 .. v97}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    move-object/from16 v2, v112

    move-object/from16 v3, v78

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->dumpActivity(Ljava/io/FileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 503
    :try_start_2
    invoke-virtual/range {v97 .. v97}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 507
    :cond_20
    :goto_1d
    const/4 v5, 0x1

    return v5

    .line 504
    :catch_2
    move-exception v94

    .restart local v94    # "e":Ljava/io/IOException;
    goto :goto_1d

    .line 511
    .end local v78    # "args":[Ljava/lang/String;
    .end local v87    # "activity":Landroid/os/IBinder;
    .end local v94    # "e":Ljava/io/IOException;
    .end local v97    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v112    # "prefix":Ljava/lang/String;
    :pswitch_26
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v122

    .line 513
    .local v122, "settings":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v122

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setCoreSettings(Landroid/os/Bundle;)V

    .line 514
    const/4 v5, 0x1

    return v5

    .line 518
    .end local v122    # "settings":Landroid/os/Bundle;
    :pswitch_27
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v110

    .line 520
    .local v110, "pkg":Ljava/lang/String;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v93

    check-cast v93, Landroid/content/res/CompatibilityInfo;

    .line 521
    .local v93, "compat":Landroid/content/res/CompatibilityInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v110

    move-object/from16 v2, v93

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V

    .line 522
    const/4 v5, 0x1

    return v5

    .line 526
    .end local v93    # "compat":Landroid/content/res/CompatibilityInfo;
    .end local v110    # "pkg":Ljava/lang/String;
    :pswitch_28
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v103

    .line 528
    .local v103, "level":I
    move-object/from16 v0, p0

    move/from16 v1, v103

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleTrimMemory(I)V

    .line 529
    const/4 v5, 0x1

    return v5

    .line 534
    .end local v103    # "level":I
    :pswitch_29
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 535
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v97

    .line 536
    .restart local v97    # "fd":Landroid/os/ParcelFileDescriptor;
    sget-object v5, Landroid/os/Debug$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Landroid/os/Debug$MemoryInfo;

    .line 537
    .local v73, "mi":Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_22

    const/16 v74, 0x1

    .line 538
    .local v74, "checkin":Z
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_23

    const/16 v75, 0x1

    .line 539
    .local v75, "dumpInfo":Z
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_24

    const/16 v76, 0x1

    .line 540
    .local v76, "dumpDalvik":Z
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_25

    const/16 v77, 0x1

    .line 541
    .local v77, "dumpSummaryOnly":Z
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v78

    .line 542
    .restart local v78    # "args":[Ljava/lang/String;
    if-eqz v97, :cond_21

    .line 544
    :try_start_3
    invoke-virtual/range {v97 .. v97}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v72

    move-object/from16 v71, p0

    invoke-virtual/range {v71 .. v78}, Landroid/app/ApplicationThreadNative;->dumpMemInfo(Ljava/io/FileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZ[Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 548
    :try_start_4
    invoke-virtual/range {v97 .. v97}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 554
    :cond_21
    :goto_22
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    const/4 v5, 0x1

    return v5

    .line 537
    .end local v74    # "checkin":Z
    .end local v75    # "dumpInfo":Z
    .end local v76    # "dumpDalvik":Z
    .end local v77    # "dumpSummaryOnly":Z
    .end local v78    # "args":[Ljava/lang/String;
    :cond_22
    const/16 v74, 0x0

    .restart local v74    # "checkin":Z
    goto :goto_1e

    .line 538
    :cond_23
    const/16 v75, 0x0

    .restart local v75    # "dumpInfo":Z
    goto :goto_1f

    .line 539
    :cond_24
    const/16 v76, 0x0

    .restart local v76    # "dumpDalvik":Z
    goto :goto_20

    .line 540
    :cond_25
    const/16 v77, 0x0

    .restart local v77    # "dumpSummaryOnly":Z
    goto :goto_21

    .line 549
    .restart local v78    # "args":[Ljava/lang/String;
    :catch_3
    move-exception v94

    .restart local v94    # "e":Ljava/io/IOException;
    goto :goto_22

    .line 546
    .end local v94    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 548
    :try_start_5
    invoke-virtual/range {v97 .. v97}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 546
    :goto_23
    throw v5

    .line 549
    :catch_4
    move-exception v94

    .restart local v94    # "e":Ljava/io/IOException;
    goto :goto_23

    .line 560
    .end local v73    # "mi":Landroid/os/Debug$MemoryInfo;
    .end local v74    # "checkin":Z
    .end local v75    # "dumpInfo":Z
    .end local v76    # "dumpDalvik":Z
    .end local v77    # "dumpSummaryOnly":Z
    .end local v78    # "args":[Ljava/lang/String;
    .end local v94    # "e":Ljava/io/IOException;
    .end local v97    # "fd":Landroid/os/ParcelFileDescriptor;
    :pswitch_2a
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 561
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v97

    .line 562
    .restart local v97    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v78

    .line 563
    .restart local v78    # "args":[Ljava/lang/String;
    if-eqz v97, :cond_26

    .line 565
    :try_start_6
    invoke-virtual/range {v97 .. v97}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v5, v1}, Landroid/app/ApplicationThreadNative;->dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 568
    :try_start_7
    invoke-virtual/range {v97 .. v97}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 574
    :cond_26
    :goto_24
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 575
    const/4 v5, 0x1

    return v5

    .line 569
    :catch_5
    move-exception v94

    .restart local v94    # "e":Ljava/io/IOException;
    goto :goto_24

    .line 566
    .end local v94    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    .line 568
    :try_start_8
    invoke-virtual/range {v97 .. v97}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 566
    :goto_25
    throw v5

    .line 569
    :catch_6
    move-exception v94

    .restart local v94    # "e":Ljava/io/IOException;
    goto :goto_25

    .line 580
    .end local v78    # "args":[Ljava/lang/String;
    .end local v94    # "e":Ljava/io/IOException;
    .end local v97    # "fd":Landroid/os/ParcelFileDescriptor;
    :pswitch_2b
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 581
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v97

    .line 582
    .restart local v97    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v78

    .line 583
    .restart local v78    # "args":[Ljava/lang/String;
    if-eqz v97, :cond_27

    .line 585
    :try_start_9
    invoke-virtual/range {v97 .. v97}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v5, v1}, Landroid/app/ApplicationThreadNative;->dumpDbInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 588
    :try_start_a
    invoke-virtual/range {v97 .. v97}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 594
    :cond_27
    :goto_26
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    const/4 v5, 0x1

    return v5

    .line 589
    :catch_7
    move-exception v94

    .restart local v94    # "e":Ljava/io/IOException;
    goto :goto_26

    .line 586
    .end local v94    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v5

    .line 588
    :try_start_b
    invoke-virtual/range {v97 .. v97}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 586
    :goto_27
    throw v5

    .line 589
    :catch_8
    move-exception v94

    .restart local v94    # "e":Ljava/io/IOException;
    goto :goto_27

    .line 600
    .end local v78    # "args":[Ljava/lang/String;
    .end local v94    # "e":Ljava/io/IOException;
    .end local v97    # "fd":Landroid/os/ParcelFileDescriptor;
    :pswitch_2c
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 601
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v115

    .line 602
    .local v115, "provider":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v115

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 603
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    const/4 v5, 0x1

    return v5

    .line 609
    .end local v115    # "provider":Landroid/os/IBinder;
    :pswitch_2d
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 610
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v88

    .line 611
    .local v88, "activityToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v118

    .line 612
    .local v118, "requestToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v119

    .line 613
    .local v119, "requestType":I
    move-object/from16 v0, p0

    move-object/from16 v1, v88

    move-object/from16 v2, v118

    move/from16 v3, v119

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;I)V

    .line 614
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 615
    const/4 v5, 0x1

    return v5

    .line 620
    .end local v88    # "activityToken":Landroid/os/IBinder;
    .end local v118    # "requestToken":Landroid/os/IBinder;
    .end local v119    # "requestType":I
    :pswitch_2e
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 621
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    .line 622
    .restart local v30    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/4 v11, 0x1

    if-ne v5, v11, :cond_28

    const/16 v127, 0x1

    .line 623
    .local v127, "timeout":Z
    :goto_28
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v127

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V

    .line 624
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 625
    const/4 v5, 0x1

    return v5

    .line 622
    .end local v127    # "timeout":Z
    :cond_28
    const/16 v127, 0x0

    .restart local v127    # "timeout":Z
    goto :goto_28

    .line 630
    .end local v30    # "token":Landroid/os/IBinder;
    .end local v127    # "timeout":Z
    :pswitch_2f
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 631
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    .line 632
    .restart local v30    # "token":Landroid/os/IBinder;
    new-instance v106, Landroid/app/ActivityOptions;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v5

    move-object/from16 v0, v106

    invoke-direct {v0, v5}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    .line 633
    .local v106, "options":Landroid/app/ActivityOptions;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v106

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V

    .line 634
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    const/4 v5, 0x1

    return v5

    .line 640
    .end local v30    # "token":Landroid/os/IBinder;
    .end local v106    # "options":Landroid/app/ActivityOptions;
    :pswitch_30
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 641
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v126

    .line 642
    .local v126, "state":I
    move-object/from16 v0, p0

    move/from16 v1, v126

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setProcessState(I)V

    .line 643
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    const/4 v5, 0x1

    return v5

    .line 649
    .end local v126    # "state":I
    :pswitch_31
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 650
    sget-object v5, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v114

    check-cast v114, Landroid/content/pm/ProviderInfo;

    .line 651
    .local v114, "provider":Landroid/content/pm/ProviderInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v114

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    .line 652
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    const/4 v5, 0x1

    return v5

    .line 658
    .end local v114    # "provider":Landroid/content/pm/ProviderInfo;
    :pswitch_32
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 659
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v102

    .line 660
    .local v102, "is24Hour":B
    const/4 v5, 0x1

    move/from16 v0, v102

    if-ne v0, v5, :cond_29

    const/4 v5, 0x1

    :goto_29
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/ApplicationThreadNative;->updateTimePrefs(Z)V

    .line 661
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    const/4 v5, 0x1

    return v5

    .line 660
    :cond_29
    const/4 v5, 0x0

    goto :goto_29

    .line 667
    .end local v102    # "is24Hour":B
    :pswitch_33
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 668
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    .line 669
    .restart local v30    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleCancelVisibleBehind(Landroid/os/IBinder;)V

    .line 670
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    const/4 v5, 0x1

    return v5

    .line 676
    .end local v30    # "token":Landroid/os/IBinder;
    :pswitch_34
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 677
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    .line 678
    .restart local v30    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-lez v5, :cond_2a

    const/16 v95, 0x1

    .line 679
    .local v95, "enabled":Z
    :goto_2a
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v95

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleBackgroundVisibleBehindChanged(Landroid/os/IBinder;Z)V

    .line 680
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 681
    const/4 v5, 0x1

    return v5

    .line 678
    .end local v95    # "enabled":Z
    :cond_2a
    const/16 v95, 0x0

    .restart local v95    # "enabled":Z
    goto :goto_2a

    .line 686
    .end local v30    # "token":Landroid/os/IBinder;
    .end local v95    # "enabled":Z
    :pswitch_35
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 687
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    .line 688
    .restart local v30    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V

    .line 689
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 690
    const/4 v5, 0x1

    return v5

    .line 695
    .end local v30    # "token":Landroid/os/IBinder;
    :pswitch_36
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 696
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v99

    .line 697
    .local v99, "firstPacket":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->notifyCleartextNetwork([B)V

    .line 698
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 699
    const/4 v5, 0x1

    return v5

    .line 706
    .end local v99    # "firstPacket":[B
    :pswitch_37
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->dumpMessageHistory()V

    .line 708
    const/4 v5, 0x1

    return v5

    .line 716
    :pswitch_38
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->dumpAllMessageHistory()V

    .line 718
    const/4 v5, 0x1

    return v5

    .line 725
    :pswitch_39
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->enableLooperLog()V

    .line 726
    const/4 v5, 0x1

    return v5

    .line 733
    :pswitch_3a
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 734
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 735
    .restart local v6    # "b":Landroid/os/IBinder;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v24

    .line 736
    .restart local v24    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    sget-object v5, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v25

    .line 737
    .restart local v25    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 738
    .restart local v9    # "configChanges":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2c

    const/16 v26, 0x1

    .line 739
    .restart local v26    # "notResumed":Z
    :goto_2b
    const/16 v35, 0x0

    .line 740
    .local v35, "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2b

    .line 741
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    .end local v35    # "config":Landroid/content/res/Configuration;
    check-cast v35, Landroid/content/res/Configuration;

    .line 743
    :cond_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2d

    const/16 v86, 0x1

    .local v86, "toMax":Z
    :goto_2c
    move-object/from16 v79, p0

    move-object/from16 v80, v6

    move-object/from16 v81, v24

    move-object/from16 v82, v25

    move/from16 v83, v9

    move/from16 v84, v26

    move-object/from16 v85, v35

    .line 744
    invoke-virtual/range {v79 .. v86}, Landroid/app/ApplicationThreadNative;->scheduleRestoreActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Z)V

    .line 745
    const/4 v5, 0x1

    return v5

    .line 738
    .end local v26    # "notResumed":Z
    .end local v86    # "toMax":Z
    :cond_2c
    const/16 v26, 0x0

    .restart local v26    # "notResumed":Z
    goto :goto_2b

    .line 743
    :cond_2d
    const/16 v86, 0x0

    .restart local v86    # "toMax":Z
    goto :goto_2c

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_14
        :pswitch_f
        :pswitch_15
        :pswitch_18
        :pswitch_d
        :pswitch_e
        :pswitch_19
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_8
        :pswitch_4
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_2f
        :pswitch_13
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_16
        :pswitch_17
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_1a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_37
        :pswitch_39
        :pswitch_0
        :pswitch_0
        :pswitch_38
        :pswitch_3a
    .end packed-switch
.end method
