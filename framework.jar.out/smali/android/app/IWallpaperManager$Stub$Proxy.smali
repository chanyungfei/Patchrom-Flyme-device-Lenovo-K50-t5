.class Landroid/app/IWallpaperManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWallpaperManager.java"

# interfaces
.implements Landroid/app/IWallpaperManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IWallpaperManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-object p1, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 304
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public clearWallpaper(Ljava/lang/String;)V
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 473
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 474
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 476
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.IWallpaperManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 477
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 478
    iget-object v2, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 479
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 483
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 471
    return-void

    .line 481
    :catchall_0
    move-exception v2

    .line 482
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 483
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 481
    throw v2
.end method

.method public copyFileFromExternalStorage(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p1, "dir"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 743
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 744
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 747
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IWallpaperManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 748
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 749
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 750
    iget-object v3, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 751
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 752
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 753
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 760
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 761
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 763
    return-object v2

    .line 756
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    .line 759
    .end local v2    # "_result":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v3

    .line 760
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 761
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 759
    throw v3
.end method

.method public getHeightHint()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 553
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 554
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 557
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IWallpaperManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 558
    iget-object v3, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 559
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 560
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 563
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 566
    return v2

    .line 562
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 563
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 562
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    const-string/jumbo v0, "android.app.IWallpaperManager"

    return-object v0
.end method

.method public getLockWallpaperByteFile()Landroid/os/ParcelFileDescriptor;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 716
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 717
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 720
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IWallpaperManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 721
    iget-object v3, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x13

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 722
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 723
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 724
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 731
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 734
    return-object v2

    .line 727
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    .line 730
    .end local v2    # "_result":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v3

    .line 731
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 730
    throw v3
.end method

.method public getName()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 598
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 599
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 602
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IWallpaperManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 603
    iget-object v3, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 604
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 605
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 608
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 609
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 611
    return-object v2

    .line 607
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 608
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 609
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 607
    throw v3
.end method

.method public getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p1, "cb"    # Landroid/app/IWallpaperManagerCallback;
    .param p2, "outParams"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 397
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 398
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 401
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.app.IWallpaperManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 402
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IWallpaperManagerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 403
    iget-object v3, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 404
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 405
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 406
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 411
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 412
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 419
    return-object v2

    .line 409
    :cond_2
    const/4 v2, 0x0

    .local v2, "_result":Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    .line 415
    .end local v2    # "_result":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v3

    .line 416
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 415
    throw v3
.end method

.method public getWallpaperInfo()Landroid/app/WallpaperInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 426
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 427
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 430
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IWallpaperManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 431
    iget-object v3, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 432
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 433
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 434
    sget-object v3, Landroid/app/WallpaperInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/WallpaperInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 442
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 444
    return-object v2

    .line 437
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/app/WallpaperInfo;
    goto :goto_0

    .line 440
    .end local v2    # "_result":Landroid/app/WallpaperInfo;
    :catchall_0
    move-exception v3

    .line 441
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 442
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 440
    throw v3
.end method

.method public getWallpaperInfoWithIpo()Landroid/app/WallpaperInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 448
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 449
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 452
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IWallpaperManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 453
    iget-object v3, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 454
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 455
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 456
    sget-object v3, Landroid/app/WallpaperInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/WallpaperInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 466
    return-object v2

    .line 459
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/app/WallpaperInfo;
    goto :goto_0

    .line 462
    .end local v2    # "_result":Landroid/app/WallpaperInfo;
    :catchall_0
    move-exception v3

    .line 463
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 462
    throw v3
.end method

.method public getWidthHint()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 533
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 534
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 537
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IWallpaperManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 538
    iget-object v3, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 539
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 540
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 543
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 546
    return v2

    .line 542
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 543
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 542
    throw v3
.end method

.method public hasNamedWallpaper(Ljava/lang/String;)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 491
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 492
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 495
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IWallpaperManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 496
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 497
    iget-object v3, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 498
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 499
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 502
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 505
    return v2

    .line 499
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 501
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 502
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 501
    throw v3
.end method

.method public isWallpaperSupported(Ljava/lang/String;)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 635
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 636
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 639
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IWallpaperManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 640
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 641
    iget-object v3, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 642
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 643
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 646
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 647
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 649
    return v2

    .line 643
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 645
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 646
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 647
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 645
    throw v3
.end method

.method public onVisibilityChanged(Z)V
    .locals 5
    .param p1, "isVisible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 673
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 674
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 676
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IWallpaperManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 677
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 678
    iget-object v2, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 679
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 682
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 683
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 671
    return-void

    .line 681
    :catchall_0
    move-exception v2

    .line 682
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 683
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 681
    throw v2
.end method

.method public resetWallpaper()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 656
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 657
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 659
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.IWallpaperManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 660
    iget-object v2, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 661
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 665
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 654
    return-void

    .line 663
    :catchall_0
    move-exception v2

    .line 664
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 665
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 663
    throw v2
.end method

.method public setDimensionHints(IILjava/lang/String;)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 513
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 514
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 516
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.IWallpaperManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 517
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 518
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 520
    iget-object v2, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 521
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 525
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 511
    return-void

    .line 523
    :catchall_0
    move-exception v2

    .line 524
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 525
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 523
    throw v2
.end method

.method public setDisplayPadding(Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 5
    .param p1, "padding"    # Landroid/graphics/Rect;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 573
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 574
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 576
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.IWallpaperManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 577
    if-eqz p1, :cond_0

    .line 578
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 579
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 584
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 585
    iget-object v2, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 586
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 590
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 571
    return-void

    .line 582
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 588
    :catchall_0
    move-exception v2

    .line 589
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 590
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 588
    throw v2
.end method

.method public setLockScreenWallpaperByteFile()Landroid/os/ParcelFileDescriptor;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 691
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 692
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 695
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IWallpaperManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 696
    iget-object v3, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 697
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 698
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 699
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 707
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 709
    return-object v2

    .line 702
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    .line 705
    .end local v2    # "_result":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v3

    .line 706
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 707
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 705
    throw v3
.end method

.method public setWallpaper(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 321
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 322
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 325
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IWallpaperManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 328
    iget-object v3, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 329
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 330
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 331
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 341
    return-object v2

    .line 334
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    .line 337
    .end local v2    # "_result":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v3

    .line 338
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 337
    throw v3
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 373
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 374
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 376
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.IWallpaperManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 377
    if-eqz p1, :cond_0

    .line 378
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 384
    :goto_0
    iget-object v2, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 385
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 371
    return-void

    .line 382
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 387
    :catchall_0
    move-exception v2

    .line 388
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 387
    throw v2
.end method

.method public setWallpaperComponentChecked(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 348
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 349
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 351
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.IWallpaperManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 352
    if-eqz p1, :cond_0

    .line 353
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 359
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 360
    iget-object v2, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 361
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 346
    return-void

    .line 357
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 363
    :catchall_0
    move-exception v2

    .line 364
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 363
    throw v2
.end method

.method public settingsRestored()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 618
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 619
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 621
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.IWallpaperManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 622
    iget-object v2, p0, Landroid/app/IWallpaperManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 623
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 627
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 616
    return-void

    .line 625
    :catchall_0
    move-exception v2

    .line 626
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 627
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 625
    throw v2
.end method
