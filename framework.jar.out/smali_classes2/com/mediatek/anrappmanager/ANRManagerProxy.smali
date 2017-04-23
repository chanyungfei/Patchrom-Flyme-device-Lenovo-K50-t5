.class Lcom/mediatek/anrappmanager/ANRManagerProxy;
.super Ljava/lang/Object;
.source "ANRManagerProxy.java"

# interfaces
.implements Lcom/mediatek/anrappmanager/IANRManager;


# static fields
.field private static mFramework:Lcom/mediatek/anrappmanager/IFrameworks;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    sput-object v0, Lcom/mediatek/anrappmanager/ANRManagerProxy;->mFramework:Lcom/mediatek/anrappmanager/IFrameworks;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Lcom/mediatek/anrappmanager/IFrameworks;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/mediatek/anrappmanager/ANRManagerProxy;->mRemote:Landroid/os/IBinder;

    .line 15
    sput-object p2, Lcom/mediatek/anrappmanager/ANRManagerProxy;->mFramework:Lcom/mediatek/anrappmanager/IFrameworks;

    .line 16
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/mediatek/anrappmanager/ANRManagerProxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public informMessageDump(Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string/jumbo v1, "android.app.IANRManager"

    .line 40
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-object v1, p0, Lcom/mediatek/anrappmanager/ANRManagerProxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v1, v2, v0, v4, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 44
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 45
    return-void
.end method

.method public notifyLightWeightANR(ILjava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 25
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 26
    sget-object v2, Lcom/mediatek/anrappmanager/ANRManagerProxy;->mFramework:Lcom/mediatek/anrappmanager/IFrameworks;

    invoke-interface {v2}, Lcom/mediatek/anrappmanager/IFrameworks;->getActivityManagerDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    iget-object v2, p0, Lcom/mediatek/anrappmanager/ANRManagerProxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 31
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 34
    return-void
.end method
