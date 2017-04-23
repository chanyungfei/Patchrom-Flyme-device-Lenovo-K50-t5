.class Lcom/android/internal/telephony/ITelephony$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephony$Stub;
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
    .line 1550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1552
    iput-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 1550
    return-void
.end method


# virtual methods
.method public answerRingingCall()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1666
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1667
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1669
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1670
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1671
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1674
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1675
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1664
    return-void

    .line 1673
    :catchall_0
    move-exception v2

    .line 1674
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1675
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1673
    throw v2
.end method

.method public answerRingingCallForSubscriber(I)V
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1695
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1696
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1698
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1699
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1700
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1701
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1704
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1705
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1693
    return-void

    .line 1703
    :catchall_0
    move-exception v2

    .line 1704
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1705
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1703
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1590
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1591
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1593
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1594
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1595
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1596
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1597
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1600
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1601
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1588
    return-void

    .line 1599
    :catchall_0
    move-exception v2

    .line 1600
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1601
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1599
    throw v2
.end method

.method public canChangeDtmfToneLength()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4288
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4289
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4292
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4293
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x72

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4294
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4295
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4298
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4301
    return v2

    .line 4295
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4297
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4298
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4297
    throw v3
.end method

.method public checkCarrierPrivilegesForPackage(Ljava/lang/String;)I
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3869
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3870
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3873
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3874
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3875
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x62

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3876
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3877
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3880
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3881
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3883
    return v2

    .line 3879
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3880
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3881
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3879
    throw v3
.end method

.method public checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3890
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3891
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3894
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3895
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3896
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x63

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3897
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3898
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3901
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3904
    return v2

    .line 3900
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3901
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3900
    throw v3
.end method

.method public dial(Ljava/lang/String;)V
    .locals 5
    .param p1, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1570
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1571
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1573
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1574
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1575
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1576
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1579
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1580
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1568
    return-void

    .line 1578
    :catchall_0
    move-exception v2

    .line 1579
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1580
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1578
    throw v2
.end method

.method public disableDataConnectivity()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2449
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2450
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2453
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2454
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x27

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2455
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2456
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2459
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2460
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2462
    return v2

    .line 2456
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2458
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2459
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2460
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2458
    throw v3
.end method

.method public disableLocationUpdates()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2393
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2394
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2396
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2397
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2398
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2401
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2402
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2391
    return-void

    .line 2400
    :catchall_0
    move-exception v2

    .line 2401
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2402
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2400
    throw v2
.end method

.method public disableLocationUpdatesForSubscriber(I)V
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2411
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2412
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2414
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2415
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2416
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2417
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2420
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2409
    return-void

    .line 2419
    :catchall_0
    move-exception v2

    .line 2420
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2419
    throw v2
.end method

.method public enableDataConnectivity()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2429
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2430
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2433
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2434
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x26

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2435
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2436
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2439
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2440
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2442
    return v2

    .line 2436
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2438
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2439
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2440
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2438
    throw v3
.end method

.method public enableLocationUpdates()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2357
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2358
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2360
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2361
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2362
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2365
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2366
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2355
    return-void

    .line 2364
    :catchall_0
    move-exception v2

    .line 2365
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2366
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2364
    throw v2
.end method

.method public enableLocationUpdatesForSubscriber(I)V
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2375
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2376
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2378
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2379
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2380
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2381
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2384
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2385
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2373
    return-void

    .line 2383
    :catchall_0
    move-exception v2

    .line 2384
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2385
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2383
    throw v2
.end method

.method public enableVideoCalling(Z)V
    .locals 5
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4244
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4245
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4247
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4248
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4249
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x70

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4250
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4253
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4242
    return-void

    .line 4252
    :catchall_0
    move-exception v2

    .line 4253
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4252
    throw v2
.end method

.method public endCall()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1611
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1612
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1615
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1616
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1617
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1618
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1621
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1622
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1624
    return v2

    .line 1618
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1620
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1621
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1622
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1620
    throw v3
.end method

.method public endCallForSubscriber(I)Z
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1633
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1634
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1637
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1638
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1639
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1640
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1641
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1644
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1647
    return v2

    .line 1641
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1643
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1644
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1643
    throw v3
.end method

.method public factoryReset(I)V
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4504
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4505
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4507
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4508
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4509
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4510
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4513
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4502
    return-void

    .line 4512
    :catchall_0
    move-exception v2

    .line 4513
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4512
    throw v2
.end method

.method public getActivePhoneType()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2679
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2680
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2683
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2684
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x32

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2685
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2686
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2689
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2690
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2692
    return v2

    .line 2688
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2689
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2690
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2688
    throw v3
.end method

.method public getActivePhoneTypeForSubscriber(I)I
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2702
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2703
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2706
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2707
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2708
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x33

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2709
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2710
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2713
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2716
    return v2

    .line 2712
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2713
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2712
    throw v3
.end method

.method public getAllCellInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3167
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3168
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3171
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3172
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3173
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x47

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3174
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3175
    sget-object v3, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3178
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3181
    return-object v2

    .line 3177
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :catchall_0
    move-exception v3

    .line 3178
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3177
    throw v3
.end method

.method public getCalculatedPreferredNetworkType(Ljava/lang/String;)I
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3533
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3534
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3537
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3538
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3539
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x54

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3540
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3541
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3544
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3545
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3547
    return v2

    .line 3543
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3544
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3545
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3543
    throw v3
.end method

.method public getCallState()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2554
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2555
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2558
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2559
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2560
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2561
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2564
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2565
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2567
    return v2

    .line 2563
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2564
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2565
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2563
    throw v3
.end method

.method public getCallStateForSubscriber(I)I
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2574
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2575
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2578
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2579
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2580
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2581
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2582
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2585
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2586
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2588
    return v2

    .line 2584
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2585
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2586
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2584
    throw v3
.end method

.method public getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3918
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3919
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3922
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3923
    if-eqz p1, :cond_0

    .line 3924
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3925
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3930
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3931
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x64

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3932
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3933
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3936
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3937
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3939
    return-object v2

    .line 3928
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3935
    :catchall_0
    move-exception v3

    .line 3936
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3937
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3935
    throw v3
.end method

.method public getCarrierPrivilegeStatus()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3849
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3850
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3853
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3854
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x61

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3855
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3856
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3859
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3860
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3862
    return v2

    .line 3858
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3859
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3860
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3858
    throw v3
.end method

.method public getCdmaEriIconIndex(Ljava/lang/String;)I
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2724
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2725
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2728
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2729
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2730
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x34

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2731
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2732
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2735
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2736
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2738
    return v2

    .line 2734
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2735
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2736
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2734
    throw v3
.end method

.method public getCdmaEriIconIndexForSubscriber(ILjava/lang/String;)I
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2747
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2748
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2751
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2752
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2753
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2754
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x35

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2755
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2756
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2759
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2760
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2762
    return v2

    .line 2758
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2759
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2760
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2758
    throw v3
.end method

.method public getCdmaEriIconMode(Ljava/lang/String;)I
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2772
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2773
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2776
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2777
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2778
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x36

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2779
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2780
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2783
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2784
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2786
    return v2

    .line 2782
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2783
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2784
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2782
    throw v3
.end method

.method public getCdmaEriIconModeForSubscriber(ILjava/lang/String;)I
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2797
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2798
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2801
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2802
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2803
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2804
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x37

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2805
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2806
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2809
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2810
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2812
    return v2

    .line 2808
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2809
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2810
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2808
    throw v3
.end method

.method public getCdmaEriText(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2820
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2821
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2824
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2825
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2826
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x38

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2827
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2828
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2831
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2832
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2834
    return-object v2

    .line 2830
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 2831
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2832
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2830
    throw v3
.end method

.method public getCdmaEriTextForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2843
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2844
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2847
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2848
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2849
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2850
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x39

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2851
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2852
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2855
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2856
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2858
    return-object v2

    .line 2854
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 2855
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2856
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2854
    throw v3
.end method

.method public getCdmaMdn(I)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3798
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3799
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3802
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3803
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3804
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3805
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3806
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3809
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3810
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3812
    return-object v2

    .line 3808
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 3809
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3810
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3808
    throw v3
.end method

.method public getCdmaMin(I)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3820
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3821
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3824
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3825
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3826
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x60

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3827
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3828
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3831
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3832
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3834
    return-object v2

    .line 3830
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 3831
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3832
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3830
    throw v3
.end method

.method public getCellLocation(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6
    .param p1, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2486
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2487
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2490
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2491
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2492
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x29

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2493
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2494
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2495
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2502
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2505
    return-object v2

    .line 2498
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/os/Bundle;
    goto :goto_0

    .line 2501
    .end local v2    # "_result":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    .line 2502
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2501
    throw v3
.end method

.method public getCellLocationById(I)Landroid/os/Bundle;
    .locals 6
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2510
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2511
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2514
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2515
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2516
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2517
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2518
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2519
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2526
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2529
    return-object v2

    .line 2522
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/os/Bundle;
    goto :goto_0

    .line 2525
    .end local v2    # "_result":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    .line 2526
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2525
    throw v3
.end method

.method public getCellNetworkScanResults(I)Lcom/android/internal/telephony/CellNetworkScanResult;
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3626
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3627
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3630
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3631
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3632
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x58

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3633
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3634
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 3635
    sget-object v3, Lcom/android/internal/telephony/CellNetworkScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/CellNetworkScanResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3642
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3643
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3645
    return-object v2

    .line 3638
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Lcom/android/internal/telephony/CellNetworkScanResult;
    goto :goto_0

    .line 3641
    .end local v2    # "_result":Lcom/android/internal/telephony/CellNetworkScanResult;
    :catchall_0
    move-exception v3

    .line 3642
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3643
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3641
    throw v3
.end method

.method public getDataActivity()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2595
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2596
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2599
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2600
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2601
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2602
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2605
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2606
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2608
    return v2

    .line 2604
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2605
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2606
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2604
    throw v3
.end method

.method public getDataActivityForSubscriber(I)I
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2615
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2616
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2619
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2620
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2621
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2622
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2623
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2626
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2627
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2629
    return v2

    .line 2625
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2626
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2627
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2625
    throw v3
.end method

.method public getDataEnabled(I)Z
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3734
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3735
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3738
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3739
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3740
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3741
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3742
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3745
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3746
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3748
    return v2

    .line 3742
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3744
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3745
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3746
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3744
    throw v3
.end method

.method public getDataNetworkType(Ljava/lang/String;)I
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2999
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3000
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3003
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3004
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3005
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x40

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3006
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3007
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3010
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3011
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3013
    return v2

    .line 3009
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3010
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3011
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3009
    throw v3
.end method

.method public getDataNetworkTypeForSubscriber(ILjava/lang/String;)I
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3022
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3023
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3026
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3027
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3028
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3029
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x41

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3030
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3031
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3034
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3035
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3037
    return v2

    .line 3033
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3034
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3035
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3033
    throw v3
.end method

.method public getDataState()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2636
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2637
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2640
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2641
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x30

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2642
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2643
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2646
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2647
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2649
    return v2

    .line 2645
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2646
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2647
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2645
    throw v3
.end method

.method public getDataStateForSubscriber(I)I
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2656
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2657
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2660
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2661
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2662
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x31

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2663
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2664
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2667
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2668
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2670
    return v2

    .line 2666
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2667
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2668
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2666
    throw v3
.end method

.method public getDefaultSim()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3207
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3208
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3211
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3212
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x49

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3213
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3214
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3217
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3220
    return v2

    .line 3216
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3217
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3216
    throw v3
.end method

.method public getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4459
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4460
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4463
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4464
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4465
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4466
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4467
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4470
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4471
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4473
    return-object v2

    .line 4469
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 4470
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4471
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4469
    throw v3
.end method

.method public getIccAtr(I)Ljava/lang/String;
    .locals 6
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4567
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4568
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4571
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4572
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4573
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4574
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4575
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4578
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4579
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4581
    return-object v2

    .line 4577
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 4578
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4579
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4577
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1560
    const-string/jumbo v0, "com.android.internal.telephony.ITelephony"

    return-object v0
.end method

.method public getLine1AlphaTagForDisplay(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4010
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4011
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4014
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4015
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4016
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4017
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x67

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4018
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4019
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4022
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4023
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4025
    return-object v2

    .line 4021
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 4022
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4023
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4021
    throw v3
.end method

.method public getLine1NumberForDisplay(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3982
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3983
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3986
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3987
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3988
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3989
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x66

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3990
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3991
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3994
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3995
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3997
    return-object v2

    .line 3993
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 3994
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3995
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3993
    throw v3
.end method

.method public getLocaleFromDefaultSim()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4525
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4526
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4529
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4530
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4531
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4532
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4535
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4536
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4538
    return-object v2

    .line 4534
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 4535
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4536
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4534
    throw v3
.end method

.method public getLteOnCdmaMode(Ljava/lang/String;)I
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3118
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3119
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3122
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3123
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3124
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x45

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3125
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3126
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3129
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3132
    return v2

    .line 3128
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3129
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3128
    throw v3
.end method

.method public getLteOnCdmaModeForSubscriber(ILjava/lang/String;)I
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3145
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3146
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3149
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3150
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3151
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3152
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x46

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3153
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3154
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3157
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3158
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3160
    return v2

    .line 3156
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3157
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3158
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3156
    throw v3
.end method

.method public getMergedSubscriberIds(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4029
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4030
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4033
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4034
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4035
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x68

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4036
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4037
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4040
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4041
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4043
    return-object v2

    .line 4039
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 4040
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4041
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4039
    throw v3
.end method

.method public getModemActivityInfo()Landroid/telephony/ModemActivityInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4545
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4546
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4549
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4550
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4551
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4552
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 4553
    sget-object v3, Landroid/telephony/ModemActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ModemActivityInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4560
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4561
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4563
    return-object v2

    .line 4556
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/telephony/ModemActivityInfo;
    goto :goto_0

    .line 4559
    .end local v2    # "_result":Landroid/telephony/ModemActivityInfo;
    :catchall_0
    move-exception v3

    .line 4560
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4561
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4559
    throw v3
.end method

.method public getNeighboringCellInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2536
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2537
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2540
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2541
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2542
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2543
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2544
    sget-object v3, Landroid/telephony/NeighboringCellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2547
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2548
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2550
    return-object v2

    .line 2546
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :catchall_0
    move-exception v3

    .line 2547
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2548
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2546
    throw v3
.end method

.method public getNetworkType()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2954
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2955
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2958
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2959
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2960
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2961
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2964
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2965
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2967
    return v2

    .line 2963
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2964
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2965
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2963
    throw v3
.end method

.method public getNetworkTypeForSubscriber(ILjava/lang/String;)I
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2976
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2977
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2980
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2981
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2982
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2983
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2984
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2985
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2988
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2989
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2991
    return v2

    .line 2987
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2988
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2989
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2987
    throw v3
.end method

.method public getPcscfAddress(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3757
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3758
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3761
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3762
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3763
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3764
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3765
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3766
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3769
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3772
    return-object v2

    .line 3768
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 3769
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3768
    throw v3
.end method

.method public getPreferredNetworkType(I)I
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3558
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3559
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3562
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3563
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3564
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x55

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3565
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3566
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3569
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3570
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3572
    return v2

    .line 3568
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3569
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3570
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3568
    throw v3
.end method

.method public getRadioAccessFamily(ILjava/lang/String;)I
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4220
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4221
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4224
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4225
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4226
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4227
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4228
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4229
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4232
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4235
    return v2

    .line 4231
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 4232
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4231
    throw v3
.end method

.method public getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I
    .locals 6
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4480
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4481
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4484
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4485
    if-eqz p1, :cond_0

    .line 4486
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4487
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/telecom/PhoneAccount;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4492
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4493
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4494
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4497
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4500
    return v2

    .line 4490
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4496
    :catchall_0
    move-exception v3

    .line 4497
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4496
    throw v3
.end method

.method public getTetherApnRequired()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3583
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3584
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3587
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3588
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x56

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3589
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3590
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3593
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3594
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3596
    return v2

    .line 3592
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3593
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3594
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3592
    throw v3
.end method

.method public getVoiceMessageCount()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2910
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2911
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2914
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2915
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2916
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2917
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2920
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2921
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2923
    return v2

    .line 2919
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2920
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2921
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2919
    throw v3
.end method

.method public getVoiceMessageCountForSubscriber(I)I
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2932
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2933
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2936
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2937
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2938
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2939
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2940
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2943
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2944
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2946
    return v2

    .line 2942
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2943
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2944
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2942
    throw v3
.end method

.method public getVoiceNetworkTypeForSubscriber(ILjava/lang/String;)I
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3047
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3048
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3051
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3052
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3053
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3054
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x42

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3055
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3056
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3059
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3060
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3062
    return v2

    .line 3058
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3059
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3060
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3058
    throw v3
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 6
    .param p1, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2172
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2173
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2176
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2177
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2178
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x19

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2179
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2180
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2183
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2184
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2186
    return v2

    .line 2180
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2182
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2183
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2184
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2182
    throw v3
.end method

.method public handlePinMmiForSubscriber(ILjava/lang/String;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2198
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2199
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2202
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2203
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2204
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2205
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2206
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2207
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2210
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2211
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2213
    return v2

    .line 2207
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2209
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2210
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2211
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2209
    throw v3
.end method

.method public hasIccCard()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3069
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3070
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3073
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3074
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x43

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3075
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3076
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3079
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3080
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3082
    return v2

    .line 3076
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3078
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3079
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3080
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3078
    throw v3
.end method

.method public hasIccCardUsingSlotId(I)Z
    .locals 6
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3091
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3092
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3095
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3096
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3097
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x44

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3098
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3099
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3102
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3105
    return v2

    .line 3099
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3101
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3102
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3101
    throw v3
.end method

.method public iccCloseLogicalChannel(I)Z
    .locals 6
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3264
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3265
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3268
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3269
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3270
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3271
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3272
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3275
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3276
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3278
    return v2

    .line 3272
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3274
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3275
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3276
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3274
    throw v3
.end method

.method public iccCloseLogicalChannelUsingSlot(II)Z
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4695
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4696
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4699
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4700
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4701
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4702
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x84

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4703
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4704
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4707
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4708
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4710
    return v2

    .line 4704
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4706
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4707
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4708
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4706
    throw v3
.end method

.method public iccExchangeSimIO(IIIIILjava/lang/String;)[B
    .locals 6
    .param p1, "fileID"    # I
    .param p2, "command"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3372
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3373
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3376
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3377
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3378
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3379
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3380
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3381
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3382
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3383
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3384
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3385
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3388
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3391
    return-object v2

    .line 3387
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    .line 3388
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3387
    throw v3
.end method

.method public iccExchangeSimIOExUsingSlot(IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "fileID"    # I
    .param p3, "command"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "filePath"    # Ljava/lang/String;
    .param p8, "data"    # Ljava/lang/String;
    .param p9, "pin2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4628
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4629
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4632
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4633
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4634
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4635
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4636
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4637
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4638
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 4639
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4640
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4641
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4642
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x82

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4643
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4644
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4647
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4648
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4650
    return-object v2

    .line 4646
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    .line 4647
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4648
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4646
    throw v3
.end method

.method public iccExchangeSimIOUsingSlot(IIIIIILjava/lang/String;)[B
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "fileID"    # I
    .param p3, "command"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4604
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4605
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4608
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4609
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4610
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4611
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4612
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4613
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4614
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 4615
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4616
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x81

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4617
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4618
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4621
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4622
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4624
    return-object v2

    .line 4620
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    .line 4621
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4622
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4620
    throw v3
.end method

.method public iccOpenLogicalChannel(Ljava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;
    .locals 6
    .param p1, "AID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3232
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3233
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3236
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3237
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3238
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3239
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3240
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 3241
    sget-object v3, Landroid/telephony/IccOpenLogicalChannelResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/IccOpenLogicalChannelResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3248
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3251
    return-object v2

    .line 3244
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    goto :goto_0

    .line 3247
    .end local v2    # "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    :catchall_0
    move-exception v3

    .line 3248
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3247
    throw v3
.end method

.method public iccOpenLogicalChannelUsingSlot(ILjava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "AID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4662
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4663
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4666
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4667
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4668
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4669
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x83

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4670
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4671
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 4672
    sget-object v3, Landroid/telephony/IccOpenLogicalChannelResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/IccOpenLogicalChannelResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4679
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4680
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4682
    return-object v2

    .line 4675
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    goto :goto_0

    .line 4678
    .end local v2    # "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    :catchall_0
    move-exception v3

    .line 4679
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4680
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4678
    throw v3
.end method

.method public iccOpenLogicalChannelWithSW(ILjava/lang/String;)[B
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "AID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4585
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4586
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4589
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4590
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4591
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4592
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x80

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4593
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4594
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4597
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4598
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4600
    return-object v2

    .line 4596
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    .line 4597
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4598
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4596
    throw v3
.end method

.method public iccTransmitApduBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "cla"    # I
    .param p2, "instruction"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3338
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3339
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3342
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3343
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3344
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3345
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3346
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3347
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3348
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3349
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3350
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3351
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3354
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3357
    return-object v2

    .line 3353
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 3354
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3353
    throw v3
.end method

.method public iccTransmitApduBasicChannelUsingSlot(IIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "cla"    # I
    .param p3, "command"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4756
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4757
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4760
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4761
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4762
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4763
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4764
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4765
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4766
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 4767
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4768
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x86

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4769
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4770
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4773
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4774
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4776
    return-object v2

    .line 4772
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 4773
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4774
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4772
    throw v3
.end method

.method public iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "channel"    # I
    .param p2, "cla"    # I
    .param p3, "instruction"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3299
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3300
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3303
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3304
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3305
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3306
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3307
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3308
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3309
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3310
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3311
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3312
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3313
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3316
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3317
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3319
    return-object v2

    .line 3315
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 3316
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3317
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3315
    throw v3
.end method

.method public iccTransmitApduLogicalChannelUsingSlot(IIIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "channel"    # I
    .param p3, "cla"    # I
    .param p4, "instruction"    # I
    .param p5, "p1"    # I
    .param p6, "p2"    # I
    .param p7, "p3"    # I
    .param p8, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4731
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4732
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4735
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4736
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4737
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4738
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4739
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4740
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4741
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 4742
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 4743
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4744
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x85

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4745
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4746
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4749
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4750
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4752
    return-object v2

    .line 4748
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 4749
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4750
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4748
    throw v3
.end method

.method public invokeOemRilRequestRaw([B[B)I
    .locals 6
    .param p1, "oemReq"    # [B
    .param p2, "oemResp"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4127
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4128
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4131
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4132
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 4133
    if-nez p2, :cond_0

    .line 4134
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4139
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4140
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4141
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4142
    .local v2, "_result":I
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readByteArray([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4145
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4148
    return v2

    .line 4137
    .end local v2    # "_result":I
    :cond_0
    :try_start_1
    array-length v3, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4144
    :catchall_0
    move-exception v3

    .line 4145
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4144
    throw v3
.end method

.method public isDataConnectivityPossible()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2469
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2470
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2473
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2474
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x28

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2475
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2476
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2479
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2482
    return v2

    .line 2476
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2478
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2479
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2478
    throw v3
.end method

.method public isHearingAidCompatibilitySupported()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4354
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4355
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4358
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4359
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x75

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4360
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4361
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4364
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4367
    return v2

    .line 4361
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4363
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4364
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4363
    throw v3
.end method

.method public isIdle(Ljava/lang/String;)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1839
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1840
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1843
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1844
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1845
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1846
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1847
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1850
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1851
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1853
    return v2

    .line 1847
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1849
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1850
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1851
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1849
    throw v3
.end method

.method public isIdleForSubscriber(ILjava/lang/String;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1864
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1865
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1868
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1869
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1870
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1871
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1872
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1873
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1876
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1877
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1879
    return v2

    .line 1873
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1875
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1876
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1877
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1875
    throw v3
.end method

.method public isImsRegistered()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4374
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4375
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4378
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4379
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x76

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4380
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4381
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4384
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4385
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4387
    return v2

    .line 4381
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4383
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4384
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4385
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4383
    throw v3
.end method

.method public isOffhook(Ljava/lang/String;)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1740
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1741
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1744
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1745
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1746
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1747
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1748
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1751
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1752
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1754
    return v2

    .line 1748
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1750
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1751
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1752
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1750
    throw v3
.end method

.method public isOffhookForSubscriber(ILjava/lang/String;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1765
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1766
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1769
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1770
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1771
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1772
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1773
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1774
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1777
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1778
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1780
    return v2

    .line 1774
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1776
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1777
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1778
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1776
    throw v3
.end method

.method public isRadioOn(Ljava/lang/String;)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1888
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1889
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1892
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1893
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1894
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1895
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1896
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1899
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1900
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1902
    return v2

    .line 1896
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1898
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1899
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1900
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1898
    throw v3
.end method

.method public isRadioOnForSubscriber(ILjava/lang/String;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1912
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1913
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1916
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1917
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1918
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1919
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1920
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1921
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1924
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1925
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1927
    return v2

    .line 1921
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1923
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1924
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1925
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1923
    throw v3
.end method

.method public isRinging(Ljava/lang/String;)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1816
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1817
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1820
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1821
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1822
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1823
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1824
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1827
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1828
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1830
    return v2

    .line 1824
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1826
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1827
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1828
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1826
    throw v3
.end method

.method public isRingingForSubscriber(ILjava/lang/String;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1792
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1793
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1796
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1797
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1798
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1799
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1800
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1801
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1804
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1805
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1807
    return v2

    .line 1801
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1803
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1804
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1805
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1803
    throw v3
.end method

.method public isSimPinEnabled(Ljava/lang/String;)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1936
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1937
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1940
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1941
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1942
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1943
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1944
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1947
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1950
    return v2

    .line 1944
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1946
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1947
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1946
    throw v3
.end method

.method public isTtyModeSupported()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4332
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4333
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4336
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4337
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x74

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4338
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4339
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4342
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4343
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4345
    return v2

    .line 4339
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4341
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4342
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4343
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4341
    throw v3
.end method

.method public isVideoCallingEnabled(Ljava/lang/String;)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4265
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4266
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4269
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4270
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4271
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x71

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4272
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4273
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4276
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4277
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4279
    return v2

    .line 4273
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4275
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4276
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4277
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4275
    throw v3
.end method

.method public isVideoTelephonyAvailable()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4434
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4435
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4438
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4439
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x79

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4440
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4441
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4444
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4445
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4447
    return v2

    .line 4441
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4443
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4444
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4445
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4443
    throw v3
.end method

.method public isVolteAvailable()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4414
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4415
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4418
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4419
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x78

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4420
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4421
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4424
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4427
    return v2

    .line 4421
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4423
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4424
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4423
    throw v3
.end method

.method public isWifiCallingAvailable()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4394
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4395
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4398
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4399
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x77

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4400
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4401
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4404
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4405
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4407
    return v2

    .line 4401
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4403
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4404
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4405
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4403
    throw v3
.end method

.method public isWorldPhone()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4310
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4311
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4314
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4315
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x73

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4316
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4317
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4320
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4323
    return v2

    .line 4317
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4319
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4320
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4319
    throw v3
.end method

.method public needMobileRadioShutdown()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4157
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4158
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4161
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4162
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4163
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4164
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4167
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4170
    return v2

    .line 4164
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4166
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4167
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4166
    throw v3
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2867
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2868
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2871
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2872
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2873
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2874
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2877
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2878
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2880
    return v2

    .line 2874
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2876
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2877
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2878
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2876
    throw v3
.end method

.method public nvReadItem(I)Ljava/lang/String;
    .locals 6
    .param p1, "itemID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3430
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3431
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3434
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3435
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3436
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x50

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3437
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3438
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3441
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3442
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3444
    return-object v2

    .line 3440
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 3441
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3442
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3440
    throw v3
.end method

.method public nvResetConfig(I)Z
    .locals 6
    .param p1, "resetType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3508
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3509
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3512
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3513
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3514
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x53

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3515
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3516
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3519
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3522
    return v2

    .line 3516
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3518
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3519
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3518
    throw v3
.end method

.method public nvWriteCdmaPrl([B)Z
    .locals 6
    .param p1, "preferredRoamingList"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3482
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3483
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3486
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3487
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3488
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x52

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3489
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3490
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3493
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3494
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3496
    return v2

    .line 3490
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3492
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3493
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3494
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3492
    throw v3
.end method

.method public nvWriteItem(ILjava/lang/String;)Z
    .locals 6
    .param p1, "itemID"    # I
    .param p2, "itemValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3456
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3457
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3460
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3461
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3462
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3463
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x51

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3464
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3465
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3468
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3469
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3471
    return v2

    .line 3465
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3467
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3468
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3469
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3467
    throw v3
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3405
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3406
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3409
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3410
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3411
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3412
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3413
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3416
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3419
    return-object v2

    .line 3415
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 3416
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3415
    throw v3
.end method

.method public setCellInfoListRate(I)V
    .locals 5
    .param p1, "rateInMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3188
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3189
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3191
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3192
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3193
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x48

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3194
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3197
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3186
    return-void

    .line 3196
    :catchall_0
    move-exception v2

    .line 3197
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3196
    throw v2
.end method

.method public setDataEnabled(IZ)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3713
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3714
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3716
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3717
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3718
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3719
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3720
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3723
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3724
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3711
    return-void

    .line 3722
    :catchall_0
    move-exception v2

    .line 3723
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3724
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3722
    throw v2
.end method

.method public setImsRegistrationState(Z)V
    .locals 5
    .param p1, "registered"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3779
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3780
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3782
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3783
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3784
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3785
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3788
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3789
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3777
    return-void

    .line 3787
    :catchall_0
    move-exception v2

    .line 3788
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3789
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3787
    throw v2
.end method

.method public setLine1NumberForDisplayForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "alphaTag"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3954
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3955
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3958
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3959
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3960
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3961
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3962
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x65

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3963
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3964
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3967
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3968
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3970
    return v2

    .line 3964
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3966
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3967
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3968
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3966
    throw v3
.end method

.method public setNetworkSelectionModeAutomatic(I)V
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3605
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3606
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3608
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3609
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3610
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x57

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3611
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3614
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3615
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3603
    return-void

    .line 3613
    :catchall_0
    move-exception v2

    .line 3614
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3615
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3613
    throw v2
.end method

.method public setNetworkSelectionModeManual(ILcom/android/internal/telephony/OperatorInfo;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "operator"    # Lcom/android/internal/telephony/OperatorInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3656
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3657
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3660
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3661
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3662
    if-eqz p2, :cond_0

    .line 3663
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3664
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Lcom/android/internal/telephony/OperatorInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3669
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x59

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3670
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3671
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 3674
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3675
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3677
    return v2

    .line 3667
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3673
    :catchall_0
    move-exception v3

    .line 3674
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3675
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3673
    throw v3

    .line 3671
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public setOperatorBrandOverride(Ljava/lang/String;)Z
    .locals 6
    .param p1, "brand"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4062
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4063
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4066
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4067
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4068
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x69

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4069
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4070
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4073
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4074
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4076
    return v2

    .line 4070
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4072
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4073
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4074
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4072
    throw v3
.end method

.method public setPolicyDataEnableForSubscriber(IZ)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4780
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4781
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4783
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4784
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4785
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4786
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x87

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4787
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4790
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4791
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4778
    return-void

    .line 4789
    :catchall_0
    move-exception v2

    .line 4790
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4791
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4789
    throw v2
.end method

.method public setPreferredNetworkType(II)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "networkType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3689
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3690
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3693
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3694
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3695
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3696
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3697
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3698
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3701
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3702
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3704
    return v2

    .line 3698
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3700
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3701
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3702
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3700
    throw v3
.end method

.method public setRadio(Z)Z
    .locals 6
    .param p1, "turnOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2256
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2257
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2260
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2261
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2262
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2263
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2264
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 2267
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2270
    return v2

    .line 2264
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2266
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2267
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2266
    throw v3
.end method

.method public setRadioCapability([Landroid/telephony/RadioAccessFamily;)V
    .locals 5
    .param p1, "rafs"    # [Landroid/telephony/RadioAccessFamily;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4198
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4199
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4201
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4202
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 4203
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4204
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4207
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4208
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4196
    return-void

    .line 4206
    :catchall_0
    move-exception v2

    .line 4207
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4208
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4206
    throw v2
.end method

.method public setRadioForSubscriber(IZ)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "turnOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2278
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2279
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2282
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2283
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2284
    if-eqz p2, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2285
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2286
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2287
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 2290
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2291
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2293
    return v2

    .line 2287
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2289
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2290
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2291
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2289
    throw v3
.end method

.method public setRadioPower(Z)Z
    .locals 6
    .param p1, "turnOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2300
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2301
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2304
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2305
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2306
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2307
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2308
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 2311
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2314
    return v2

    .line 2308
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2310
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2311
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2310
    throw v3
.end method

.method public setRoamingOverride(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4097
    .local p1, "gsmRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "gsmNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "cdmaRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "cdmaNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4098
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4101
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4102
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4103
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4104
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4105
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4106
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4107
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4108
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4111
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4114
    return v2

    .line 4108
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4110
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4111
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4110
    throw v3
.end method

.method public setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "alphaTag"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2887
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2888
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2891
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2892
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2893
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2894
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2895
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2896
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2897
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2900
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2901
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2903
    return v2

    .line 2897
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2899
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2900
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2901
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2899
    throw v3
.end method

.method public shutdownMobileRadios()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4177
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4178
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4180
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4181
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4182
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4185
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4175
    return-void

    .line 4184
    :catchall_0
    move-exception v2

    .line 4185
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4184
    throw v2
.end method

.method public silenceRinger()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1721
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1722
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1724
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1725
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1726
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1729
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1730
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1719
    return-void

    .line 1728
    :catchall_0
    move-exception v2

    .line 1729
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1730
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1728
    throw v2
.end method

.method public supplyPin(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1959
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1960
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1963
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1964
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1965
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1966
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1967
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1970
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1971
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1973
    return v2

    .line 1967
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1969
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1970
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1971
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1969
    throw v3
.end method

.method public supplyPinForSubscriber(ILjava/lang/String;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1984
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1985
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1988
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1989
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1990
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1991
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1992
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1993
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1996
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1997
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1999
    return v2

    .line 1993
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1995
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1996
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1997
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1995
    throw v3
.end method

.method public supplyPinReportResult(Ljava/lang/String;)[I
    .locals 6
    .param p1, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2064
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2065
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2068
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2069
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2070
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x15

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2071
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2072
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2075
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2076
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2078
    return-object v2

    .line 2074
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    .line 2075
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2076
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2074
    throw v3
.end method

.method public supplyPinReportResultForSubscriber(ILjava/lang/String;)[I
    .locals 6
    .param p1, "subId"    # I
    .param p2, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2089
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2090
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2093
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2094
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2095
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2096
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2097
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2098
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2101
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2102
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2104
    return-object v2

    .line 2100
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    .line 2101
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2102
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2100
    throw v3
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2010
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2011
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2014
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2015
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2016
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2017
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x13

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2018
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2019
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2022
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2023
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2025
    return v2

    .line 2019
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2021
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2022
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2023
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2021
    throw v3
.end method

.method public supplyPukForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "puk"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2037
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2038
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2041
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2042
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2043
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2044
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2045
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2046
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2047
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2050
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2051
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2053
    return v2

    .line 2047
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2049
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2050
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2051
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2049
    throw v3
.end method

.method public supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 6
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2117
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2118
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2121
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2122
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2123
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2124
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x17

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2125
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2126
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2129
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2132
    return-object v2

    .line 2128
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    .line 2129
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2128
    throw v3
.end method

.method public supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I
    .locals 6
    .param p1, "subId"    # I
    .param p2, "puk"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2145
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2146
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2149
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2150
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2151
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2152
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2153
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x18

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2154
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2155
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2158
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2159
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2161
    return-object v2

    .line 2157
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    .line 2158
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2159
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2157
    throw v3
.end method

.method public toggleRadioOnOff()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2220
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2221
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2223
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2224
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2225
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2228
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2218
    return-void

    .line 2227
    :catchall_0
    move-exception v2

    .line 2228
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2227
    throw v2
.end method

.method public toggleRadioOnOffForSubscriber(I)V
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2238
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2239
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2241
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2242
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2243
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2244
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2247
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2236
    return-void

    .line 2246
    :catchall_0
    move-exception v2

    .line 2247
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2246
    throw v2
.end method

.method public updateServiceLocation()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2321
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2322
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2324
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2325
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2326
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2329
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2319
    return-void

    .line 2328
    :catchall_0
    move-exception v2

    .line 2329
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2328
    throw v2
.end method

.method public updateServiceLocationForSubscriber(I)V
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2339
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2340
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2342
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2343
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2344
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2345
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2348
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2337
    return-void

    .line 2347
    :catchall_0
    move-exception v2

    .line 2348
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2347
    throw v2
.end method
