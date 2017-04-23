.class public abstract Landroid/app/IWallpaperManager$Stub;
.super Landroid/os/Binder;
.source "IWallpaperManager.java"

# interfaces
.implements Landroid/app/IWallpaperManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IWallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IWallpaperManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IWallpaperManager"

.field static final TRANSACTION_clearWallpaper:I = 0x7

.field static final TRANSACTION_copyFileFromExternalStorage:I = 0x14

.field static final TRANSACTION_getHeightHint:I = 0xb

.field static final TRANSACTION_getLockWallpaperByteFile:I = 0x13

.field static final TRANSACTION_getName:I = 0xd

.field static final TRANSACTION_getWallpaper:I = 0x4

.field static final TRANSACTION_getWallpaperInfo:I = 0x5

.field static final TRANSACTION_getWallpaperInfoWithIpo:I = 0x6

.field static final TRANSACTION_getWidthHint:I = 0xa

.field static final TRANSACTION_hasNamedWallpaper:I = 0x8

.field static final TRANSACTION_isWallpaperSupported:I = 0xf

.field static final TRANSACTION_onVisibilityChanged:I = 0x11

.field static final TRANSACTION_resetWallpaper:I = 0x10

.field static final TRANSACTION_setDimensionHints:I = 0x9

.field static final TRANSACTION_setDisplayPadding:I = 0xc

.field static final TRANSACTION_setLockScreenWallpaperByteFile:I = 0x12

.field static final TRANSACTION_setWallpaper:I = 0x1

.field static final TRANSACTION_setWallpaperComponent:I = 0x3

.field static final TRANSACTION_setWallpaperComponentChecked:I = 0x2

.field static final TRANSACTION_settingsRestored:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "android.app.IWallpaperManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IWallpaperManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;
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
    const-string/jumbo v1, "android.app.IWallpaperManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IWallpaperManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/app/IWallpaperManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/IWallpaperManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IWallpaperManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 18
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

    .line 299
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v17

    return v17

    .line 43
    :sswitch_0
    const-string/jumbo v17, "android.app.IWallpaperManager"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/16 v17, 0x1

    return v17

    .line 48
    :sswitch_1
    const-string/jumbo v17, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 52
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 53
    .local v10, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10}, Landroid/app/IWallpaperManager$Stub;->setWallpaper(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v14

    .line 54
    .local v14, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v14, :cond_0

    .line 56
    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 62
    :goto_0
    const/16 v17, 0x1

    return v17

    .line 60
    :cond_0
    const/16 v17, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 66
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v14    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_2
    const-string/jumbo v17, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_1

    .line 69
    sget-object v17, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 75
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 76
    .restart local v10    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v10}, Landroid/app/IWallpaperManager$Stub;->setWallpaperComponentChecked(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    const/16 v17, 0x1

    return v17

    .line 72
    .end local v10    # "_arg1":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    .local v4, "_arg0":Landroid/content/ComponentName;
    goto :goto_1

    .line 82
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_3
    const-string/jumbo v17, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_2

    .line 85
    sget-object v17, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 90
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/IWallpaperManager$Stub;->setWallpaperComponent(Landroid/content/ComponentName;)V

    .line 91
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    const/16 v17, 0x1

    return v17

    .line 88
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2

    .line 96
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_4
    const-string/jumbo v17, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v3

    .line 100
    .local v3, "_arg0":Landroid/app/IWallpaperManagerCallback;
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 101
    .local v9, "_arg1":Landroid/os/Bundle;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v9}, Landroid/app/IWallpaperManager$Stub;->getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v14

    .line 102
    .restart local v14    # "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    if-eqz v14, :cond_3

    .line 104
    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 110
    :goto_3
    if-eqz v9, :cond_4

    .line 111
    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 117
    :goto_4
    const/16 v17, 0x1

    return v17

    .line 108
    :cond_3
    const/16 v17, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 115
    :cond_4
    const/16 v17, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 121
    .end local v3    # "_arg0":Landroid/app/IWallpaperManagerCallback;
    .end local v9    # "_arg1":Landroid/os/Bundle;
    .end local v14    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_5
    const-string/jumbo v17, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v13

    .line 123
    .local v13, "_result":Landroid/app/WallpaperInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    if-eqz v13, :cond_5

    .line 125
    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/app/WallpaperInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 131
    :goto_5
    const/16 v17, 0x1

    return v17

    .line 129
    :cond_5
    const/16 v17, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 135
    .end local v13    # "_result":Landroid/app/WallpaperInfo;
    :sswitch_6
    const-string/jumbo v17, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getWallpaperInfoWithIpo()Landroid/app/WallpaperInfo;

    move-result-object v13

    .line 137
    .restart local v13    # "_result":Landroid/app/WallpaperInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    if-eqz v13, :cond_6

    .line 139
    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/app/WallpaperInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 145
    :goto_6
    const/16 v17, 0x1

    return v17

    .line 143
    :cond_6
    const/16 v17, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 149
    .end local v13    # "_result":Landroid/app/WallpaperInfo;
    :sswitch_7
    const-string/jumbo v17, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 152
    .restart local v6    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/IWallpaperManager$Stub;->clearWallpaper(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    const/16 v17, 0x1

    return v17

    .line 158
    .end local v6    # "_arg0":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v17, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 161
    .restart local v6    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/IWallpaperManager$Stub;->hasNamedWallpaper(Ljava/lang/String;)Z

    move-result v16

    .line 162
    .local v16, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    if-eqz v16, :cond_7

    const/16 v17, 0x1

    :goto_7
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    const/16 v17, 0x1

    return v17

    .line 163
    :cond_7
    const/16 v17, 0x0

    goto :goto_7

    .line 168
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v16    # "_result":Z
    :sswitch_9
    const-string/jumbo v17, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 172
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 174
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 175
    .local v11, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8, v11}, Landroid/app/IWallpaperManager$Stub;->setDimensionHints(IILjava/lang/String;)V

    .line 176
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    const/16 v17, 0x1

    return v17

    .line 181
    .end local v2    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v11    # "_arg2":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v17, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getWidthHint()I

    move-result v12

    .line 183
    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    const/16 v17, 0x1

    return v17

    .line 189
    .end local v12    # "_result":I
    :sswitch_b
    const-string/jumbo v17, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getHeightHint()I

    move-result v12

    .line 191
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    const/16 v17, 0x1

    return v17

    .line 197
    .end local v12    # "_result":I
    :sswitch_c
    const-string/jumbo v17, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_8

    .line 200
    sget-object v17, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 206
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 207
    .restart local v10    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v10}, Landroid/app/IWallpaperManager$Stub;->setDisplayPadding(Landroid/graphics/Rect;Ljava/lang/String;)V

    .line 208
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    const/16 v17, 0x1

    return v17

    .line 203
    .end local v10    # "_arg1":Ljava/lang/String;
    :cond_8
    const/4 v5, 0x0

    .local v5, "_arg0":Landroid/graphics/Rect;
    goto :goto_8

    .line 213
    .end local v5    # "_arg0":Landroid/graphics/Rect;
    :sswitch_d
    const-string/jumbo v17, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getName()Ljava/lang/String;

    move-result-object v15

    .line 215
    .local v15, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    const/16 v17, 0x1

    return v17

    .line 221
    .end local v15    # "_result":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v17, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->settingsRestored()V

    .line 223
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    const/16 v17, 0x1

    return v17

    .line 228
    :sswitch_f
    const-string/jumbo v17, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 231
    .restart local v6    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/IWallpaperManager$Stub;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v16

    .line 232
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    if-eqz v16, :cond_9

    const/16 v17, 0x1

    :goto_9
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    const/16 v17, 0x1

    return v17

    .line 233
    :cond_9
    const/16 v17, 0x0

    goto :goto_9

    .line 238
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v16    # "_result":Z
    :sswitch_10
    const-string/jumbo v17, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->resetWallpaper()V

    .line 240
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    const/16 v17, 0x1

    return v17

    .line 245
    :sswitch_11
    const-string/jumbo v17, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_a

    const/4 v7, 0x1

    .line 248
    .local v7, "_arg0":Z
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/IWallpaperManager$Stub;->onVisibilityChanged(Z)V

    .line 249
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    const/16 v17, 0x1

    return v17

    .line 247
    .end local v7    # "_arg0":Z
    :cond_a
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Z
    goto :goto_a

    .line 254
    .end local v7    # "_arg0":Z
    :sswitch_12
    const-string/jumbo v17, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->setLockScreenWallpaperByteFile()Landroid/os/ParcelFileDescriptor;

    move-result-object v14

    .line 256
    .restart local v14    # "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    if-eqz v14, :cond_b

    .line 258
    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 264
    :goto_b
    const/16 v17, 0x1

    return v17

    .line 262
    :cond_b
    const/16 v17, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .line 268
    .end local v14    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_13
    const-string/jumbo v17, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getLockWallpaperByteFile()Landroid/os/ParcelFileDescriptor;

    move-result-object v14

    .line 270
    .restart local v14    # "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    if-eqz v14, :cond_c

    .line 272
    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 278
    :goto_c
    const/16 v17, 0x1

    return v17

    .line 276
    :cond_c
    const/16 v17, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    .line 282
    .end local v14    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_14
    const-string/jumbo v17, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 286
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 287
    .restart local v10    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10}, Landroid/app/IWallpaperManager$Stub;->copyFileFromExternalStorage(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v14

    .line 288
    .restart local v14    # "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    if-eqz v14, :cond_d

    .line 290
    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 296
    :goto_d
    const/16 v17, 0x1

    return v17

    .line 294
    :cond_d
    const/16 v17, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d

    .line 39
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
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
