.class public Landroid/mtp/MtpServer;
.super Ljava/lang/Object;
.source "MtpServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mNativeContext:J

.field private mServerEndup:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/mtp/MtpDatabase;Z)V
    .locals 1
    .param p1, "database"    # Landroid/mtp/MtpDatabase;
    .param p2, "usePtp"    # Z

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v0, p0, Landroid/mtp/MtpServer;->mServerEndup:Z

    .line 33
    iput-boolean v0, p0, Landroid/mtp/MtpServer;->mServerEndup:Z

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/mtp/MtpServer;->native_setup(Landroid/mtp/MtpDatabase;Z)V

    .line 35
    invoke-virtual {p1, p0}, Landroid/mtp/MtpDatabase;->setServer(Landroid/mtp/MtpServer;)V

    .line 32
    return-void
.end method

.method private final native native_add_storage(Landroid/mtp/MtpStorage;)V
.end method

.method private final native native_cleanup()V
.end method

.method private final native native_remove_storage(I)V
.end method

.method private final native native_run()V
.end method

.method private final native native_send_device_property_changed(I)V
.end method

.method private final native native_send_object_added(I)V
.end method

.method private final native native_send_object_infoChanged(I)V
.end method

.method private final native native_send_object_removed(I)V
.end method

.method private final native native_send_storage_infoChanged(I)V
.end method

.method private final native native_setup(Landroid/mtp/MtpDatabase;Z)V
.end method

.method private final native native_update_storage(Landroid/mtp/MtpStorage;)V
.end method


# virtual methods
.method public addStorage(Landroid/mtp/MtpStorage;)V
    .locals 0
    .param p1, "storage"    # Landroid/mtp/MtpStorage;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_add_storage(Landroid/mtp/MtpStorage;)V

    .line 63
    return-void
.end method

.method public endSession()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public getStatus()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Landroid/mtp/MtpServer;->mServerEndup:Z

    return v0
.end method

.method public removeStorage(Landroid/mtp/MtpStorage;)V
    .locals 1
    .param p1, "storage"    # Landroid/mtp/MtpStorage;

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getStorageId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/mtp/MtpServer;->native_remove_storage(I)V

    .line 67
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/mtp/MtpServer;->native_run()V

    .line 47
    invoke-direct {p0}, Landroid/mtp/MtpServer;->native_cleanup()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/mtp/MtpServer;->mServerEndup:Z

    .line 45
    return-void
.end method

.method public sendDevicePropertyChanged(I)V
    .locals 0
    .param p1, "property"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_device_property_changed(I)V

    .line 59
    return-void
.end method

.method public sendObjectAdded(I)V
    .locals 0
    .param p1, "handle"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_object_added(I)V

    .line 51
    return-void
.end method

.method public sendObjectInfoChanged(I)V
    .locals 0
    .param p1, "handle"    # I

    .prologue
    .line 112
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_object_infoChanged(I)V

    .line 111
    return-void
.end method

.method public sendObjectRemoved(I)V
    .locals 0
    .param p1, "handle"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_object_removed(I)V

    .line 55
    return-void
.end method

.method public sendStorageInfoChanged(Landroid/mtp/MtpStorage;)V
    .locals 1
    .param p1, "storage"    # Landroid/mtp/MtpStorage;

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getStorageId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/mtp/MtpServer;->native_send_storage_infoChanged(I)V

    .line 84
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 39
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/mtp/MtpServer;->mServerEndup:Z

    .line 40
    new-instance v0, Ljava/lang/Thread;

    const-string/jumbo v1, "MtpServer"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 41
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 38
    return-void
.end method

.method public updateStorage(Landroid/mtp/MtpStorage;)V
    .locals 0
    .param p1, "storage"    # Landroid/mtp/MtpStorage;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_update_storage(Landroid/mtp/MtpStorage;)V

    .line 76
    return-void
.end method
