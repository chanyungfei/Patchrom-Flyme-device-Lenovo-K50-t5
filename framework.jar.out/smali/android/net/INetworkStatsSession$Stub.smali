.class public abstract Landroid/net/INetworkStatsSession$Stub;
.super Landroid/os/Binder;
.source "INetworkStatsSession.java"

# interfaces
.implements Landroid/net/INetworkStatsSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkStatsSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkStatsSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.INetworkStatsSession"

.field static final TRANSACTION_close:I = 0x8

.field static final TRANSACTION_getDeviceSummaryForNetwork:I = 0x1

.field static final TRANSACTION_getHistoryForNetwork:I = 0x3

.field static final TRANSACTION_getHistoryForUid:I = 0x5

.field static final TRANSACTION_getHistoryIntervalForUid:I = 0x6

.field static final TRANSACTION_getMobileTotalBytes:I = 0x9

.field static final TRANSACTION_getRelevantUids:I = 0x7

.field static final TRANSACTION_getSummaryForAllUid:I = 0x4

.field static final TRANSACTION_getSummaryForNetwork:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "android.net.INetworkStatsSession"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkStatsSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsSession;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 24
    if-nez p0, :cond_0

    .line 25
    return-object v1

    .line 27
    :cond_0
    const-string/jumbo v1, "android.net.INetworkStatsSession"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/INetworkStatsSession;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/net/INetworkStatsSession;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/INetworkStatsSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/INetworkStatsSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 32
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
    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 238
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 43
    :sswitch_0
    const-string/jumbo v4, "android.net.INetworkStatsSession"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v4, 0x1

    return v4

    .line 48
    :sswitch_1
    const-string/jumbo v4, "android.net.INetworkStatsSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 51
    sget-object v4, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkTemplate;

    .line 57
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 59
    .local v6, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .local v8, "_arg2":J
    move-object/from16 v4, p0

    .line 60
    invoke-virtual/range {v4 .. v9}, Landroid/net/INetworkStatsSession$Stub;->getDeviceSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v21

    .line 61
    .local v21, "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v21, :cond_1

    .line 63
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    const/4 v4, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 69
    :goto_1
    const/4 v4, 0x1

    return v4

    .line 54
    .end local v6    # "_arg1":J
    .end local v8    # "_arg2":J
    .end local v21    # "_result":Landroid/net/NetworkStats;
    :cond_0
    const/4 v5, 0x0

    .local v5, "_arg0":Landroid/net/NetworkTemplate;
    goto :goto_0

    .line 67
    .end local v5    # "_arg0":Landroid/net/NetworkTemplate;
    .restart local v6    # "_arg1":J
    .restart local v8    # "_arg2":J
    .restart local v21    # "_result":Landroid/net/NetworkStats;
    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 73
    .end local v6    # "_arg1":J
    .end local v8    # "_arg2":J
    .end local v21    # "_result":Landroid/net/NetworkStats;
    :sswitch_2
    const-string/jumbo v4, "android.net.INetworkStatsSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 76
    sget-object v4, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkTemplate;

    .line 82
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 84
    .restart local v6    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .restart local v8    # "_arg2":J
    move-object/from16 v4, p0

    .line 85
    invoke-virtual/range {v4 .. v9}, Landroid/net/INetworkStatsSession$Stub;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v21

    .line 86
    .restart local v21    # "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v21, :cond_3

    .line 88
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    const/4 v4, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 94
    :goto_3
    const/4 v4, 0x1

    return v4

    .line 79
    .end local v6    # "_arg1":J
    .end local v8    # "_arg2":J
    .end local v21    # "_result":Landroid/net/NetworkStats;
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/net/NetworkTemplate;
    goto :goto_2

    .line 92
    .end local v5    # "_arg0":Landroid/net/NetworkTemplate;
    .restart local v6    # "_arg1":J
    .restart local v8    # "_arg2":J
    .restart local v21    # "_result":Landroid/net/NetworkStats;
    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 98
    .end local v6    # "_arg1":J
    .end local v8    # "_arg2":J
    .end local v21    # "_result":Landroid/net/NetworkStats;
    :sswitch_3
    const-string/jumbo v4, "android.net.INetworkStatsSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 101
    sget-object v4, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkTemplate;

    .line 107
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 108
    .local v13, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v13}, Landroid/net/INetworkStatsSession$Stub;->getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v30

    .line 109
    .local v30, "_result":Landroid/net/NetworkStatsHistory;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    if-eqz v30, :cond_5

    .line 111
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkStatsHistory;->writeToParcel(Landroid/os/Parcel;I)V

    .line 117
    :goto_5
    const/4 v4, 0x1

    return v4

    .line 104
    .end local v13    # "_arg1":I
    .end local v30    # "_result":Landroid/net/NetworkStatsHistory;
    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/net/NetworkTemplate;
    goto :goto_4

    .line 115
    .end local v5    # "_arg0":Landroid/net/NetworkTemplate;
    .restart local v13    # "_arg1":I
    .restart local v30    # "_result":Landroid/net/NetworkStatsHistory;
    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 121
    .end local v13    # "_arg1":I
    .end local v30    # "_result":Landroid/net/NetworkStatsHistory;
    :sswitch_4
    const-string/jumbo v4, "android.net.INetworkStatsSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    .line 124
    sget-object v4, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkTemplate;

    .line 130
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 132
    .restart local v6    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 134
    .restart local v8    # "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    const/4 v10, 0x1

    .local v10, "_arg3":Z
    :goto_7
    move-object/from16 v4, p0

    .line 135
    invoke-virtual/range {v4 .. v10}, Landroid/net/INetworkStatsSession$Stub;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;

    move-result-object v21

    .line 136
    .restart local v21    # "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v21, :cond_8

    .line 138
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    const/4 v4, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 144
    :goto_8
    const/4 v4, 0x1

    return v4

    .line 127
    .end local v6    # "_arg1":J
    .end local v8    # "_arg2":J
    .end local v10    # "_arg3":Z
    .end local v21    # "_result":Landroid/net/NetworkStats;
    :cond_6
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/net/NetworkTemplate;
    goto :goto_6

    .line 134
    .end local v5    # "_arg0":Landroid/net/NetworkTemplate;
    .restart local v6    # "_arg1":J
    .restart local v8    # "_arg2":J
    :cond_7
    const/4 v10, 0x0

    .restart local v10    # "_arg3":Z
    goto :goto_7

    .line 142
    .restart local v21    # "_result":Landroid/net/NetworkStats;
    :cond_8
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 148
    .end local v6    # "_arg1":J
    .end local v8    # "_arg2":J
    .end local v10    # "_arg3":Z
    .end local v21    # "_result":Landroid/net/NetworkStats;
    :sswitch_5
    const-string/jumbo v4, "android.net.INetworkStatsSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    .line 151
    sget-object v4, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkTemplate;

    .line 157
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 159
    .restart local v13    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 161
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 163
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .local v16, "_arg4":I
    move-object/from16 v11, p0

    move-object v12, v5

    .line 164
    invoke-virtual/range {v11 .. v16}, Landroid/net/INetworkStatsSession$Stub;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v30

    .line 165
    .restart local v30    # "_result":Landroid/net/NetworkStatsHistory;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    if-eqz v30, :cond_a

    .line 167
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkStatsHistory;->writeToParcel(Landroid/os/Parcel;I)V

    .line 173
    :goto_a
    const/4 v4, 0x1

    return v4

    .line 154
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    .end local v30    # "_result":Landroid/net/NetworkStatsHistory;
    :cond_9
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/net/NetworkTemplate;
    goto :goto_9

    .line 171
    .end local v5    # "_arg0":Landroid/net/NetworkTemplate;
    .restart local v13    # "_arg1":I
    .restart local v14    # "_arg2":I
    .restart local v15    # "_arg3":I
    .restart local v16    # "_arg4":I
    .restart local v30    # "_result":Landroid/net/NetworkStatsHistory;
    :cond_a
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 177
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    .end local v30    # "_result":Landroid/net/NetworkStatsHistory;
    :sswitch_6
    const-string/jumbo v4, "android.net.INetworkStatsSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    .line 180
    sget-object v4, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkTemplate;

    .line 186
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 188
    .restart local v13    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 190
    .restart local v14    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 192
    .restart local v15    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 194
    .restart local v16    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 196
    .local v17, "_arg5":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .local v19, "_arg6":J
    move-object/from16 v11, p0

    move-object v12, v5

    .line 197
    invoke-virtual/range {v11 .. v20}, Landroid/net/INetworkStatsSession$Stub;->getHistoryIntervalForUid(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;

    move-result-object v30

    .line 198
    .restart local v30    # "_result":Landroid/net/NetworkStatsHistory;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    if-eqz v30, :cond_c

    .line 200
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkStatsHistory;->writeToParcel(Landroid/os/Parcel;I)V

    .line 206
    :goto_c
    const/4 v4, 0x1

    return v4

    .line 183
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    .end local v17    # "_arg5":J
    .end local v19    # "_arg6":J
    .end local v30    # "_result":Landroid/net/NetworkStatsHistory;
    :cond_b
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/net/NetworkTemplate;
    goto :goto_b

    .line 204
    .end local v5    # "_arg0":Landroid/net/NetworkTemplate;
    .restart local v13    # "_arg1":I
    .restart local v14    # "_arg2":I
    .restart local v15    # "_arg3":I
    .restart local v16    # "_arg4":I
    .restart local v17    # "_arg5":J
    .restart local v19    # "_arg6":J
    .restart local v30    # "_result":Landroid/net/NetworkStatsHistory;
    :cond_c
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    .line 210
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    .end local v17    # "_arg5":J
    .end local v19    # "_arg6":J
    .end local v30    # "_result":Landroid/net/NetworkStatsHistory;
    :sswitch_7
    const-string/jumbo v4, "android.net.INetworkStatsSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkStatsSession$Stub;->getRelevantUids()[I

    move-result-object v31

    .line 212
    .local v31, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 214
    const/4 v4, 0x1

    return v4

    .line 218
    .end local v31    # "_result":[I
    :sswitch_8
    const-string/jumbo v4, "android.net.INetworkStatsSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkStatsSession$Stub;->close()V

    .line 220
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    const/4 v4, 0x1

    return v4

    .line 225
    :sswitch_9
    const-string/jumbo v4, "android.net.INetworkStatsSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 229
    .local v23, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 231
    .restart local v6    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .restart local v8    # "_arg2":J
    move-object/from16 v22, p0

    move-wide/from16 v24, v6

    move-wide/from16 v26, v8

    .line 232
    invoke-virtual/range {v22 .. v27}, Landroid/net/INetworkStatsSession$Stub;->getMobileTotalBytes(IJJ)J

    move-result-wide v28

    .line 233
    .local v28, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    move-object/from16 v0, p3

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 235
    const/4 v4, 0x1

    return v4

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
