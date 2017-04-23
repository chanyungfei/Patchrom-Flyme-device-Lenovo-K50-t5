.class final Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;
.super Landroid/print/PrintDocumentAdapter$WriteResultCallback;
.source "PrintManager.java"

# interfaces
.implements Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintManager$PrintDocumentAdapterDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyWriteResultCallback"
.end annotation


# instance fields
.field private mCallback:Landroid/print/IWriteResultCallback;

.field private mFd:Landroid/os/ParcelFileDescriptor;

.field private final mSequence:I

.field final synthetic this$1:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;


# direct methods
.method public constructor <init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/IWriteResultCallback;Landroid/os/ParcelFileDescriptor;I)V
    .locals 0
    .param p1, "this$1"    # Landroid/print/PrintManager$PrintDocumentAdapterDelegate;
    .param p2, "callback"    # Landroid/print/IWriteResultCallback;
    .param p3, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "sequence"    # I

    .prologue
    .line 934
    iput-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->this$1:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-direct {p0}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;-><init>()V

    .line 936
    iput-object p3, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mFd:Landroid/os/ParcelFileDescriptor;

    .line 937
    iput p4, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mSequence:I

    .line 938
    iput-object p2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mCallback:Landroid/print/IWriteResultCallback;

    .line 935
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    .line 1045
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->this$1:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-get0(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1046
    :try_start_0
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mFd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1047
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mCallback:Landroid/print/IWriteResultCallback;

    .line 1048
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mFd:Landroid/os/ParcelFileDescriptor;

    .line 1049
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->this$1:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-set0(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;)Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1044
    return-void

    .line 1045
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onWriteCancelled()V
    .locals 5

    .prologue
    .line 1015
    iget-object v3, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->this$1:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v3}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-get0(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1016
    :try_start_0
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mCallback:Landroid/print/IWriteResultCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "callback":Landroid/print/IWriteResultCallback;
    monitor-exit v3

    .line 1020
    if-nez v0, :cond_0

    .line 1021
    const-string/jumbo v3, "PrintManager"

    const-string/jumbo v4, "PrintDocumentAdapter is destroyed. Did you finish the printing activity before print completion or did you invoke a callback after finish?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    return-void

    .line 1015
    .end local v0    # "callback":Landroid/print/IWriteResultCallback;
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    .line 1028
    .restart local v0    # "callback":Landroid/print/IWriteResultCallback;
    :cond_0
    :try_start_1
    iget v3, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mSequence:I

    invoke-interface {v0, v3}, Landroid/print/IWriteResultCallback;->onWriteCanceled(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1039
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->destroy()V

    .line 1013
    :goto_0
    return-void

    .line 1034
    :catch_0
    move-exception v1

    .line 1035
    .local v1, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    const-string/jumbo v3, "PrintManager"

    const-string/jumbo v4, "PrintDocumentAdapter is destroyed or under destroy"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mCallback:Landroid/print/IWriteResultCallback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1039
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->destroy()V

    goto :goto_0

    .line 1029
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v2

    .line 1030
    .local v2, "re":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v3, "PrintManager"

    const-string/jumbo v4, "Error calling onWriteCanceled"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1039
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->destroy()V

    goto :goto_0

    .line 1038
    .end local v2    # "re":Landroid/os/RemoteException;
    :catchall_1
    move-exception v3

    .line 1039
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->destroy()V

    .line 1038
    throw v3
.end method

.method public onWriteFailed(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "error"    # Ljava/lang/CharSequence;

    .prologue
    .line 984
    iget-object v3, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->this$1:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v3}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-get0(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 985
    :try_start_0
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mCallback:Landroid/print/IWriteResultCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "callback":Landroid/print/IWriteResultCallback;
    monitor-exit v3

    .line 989
    if-nez v0, :cond_0

    .line 990
    const-string/jumbo v3, "PrintManager"

    const-string/jumbo v4, "PrintDocumentAdapter is destroyed. Did you finish the printing activity before print completion or did you invoke a callback after finish?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    return-void

    .line 984
    .end local v0    # "callback":Landroid/print/IWriteResultCallback;
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    .line 997
    .restart local v0    # "callback":Landroid/print/IWriteResultCallback;
    :cond_0
    :try_start_1
    iget v3, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mSequence:I

    invoke-interface {v0, p1, v3}, Landroid/print/IWriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1008
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->destroy()V

    .line 982
    :goto_0
    return-void

    .line 1003
    :catch_0
    move-exception v1

    .line 1004
    .local v1, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    const-string/jumbo v3, "PrintManager"

    const-string/jumbo v4, "PrintDocumentAdapter is destroyed or under destroy"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mCallback:Landroid/print/IWriteResultCallback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1008
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->destroy()V

    goto :goto_0

    .line 998
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v2

    .line 999
    .local v2, "re":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v3, "PrintManager"

    const-string/jumbo v4, "Error calling onWriteFailed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1008
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->destroy()V

    goto :goto_0

    .line 1007
    .end local v2    # "re":Landroid/os/RemoteException;
    :catchall_1
    move-exception v3

    .line 1008
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->destroy()V

    .line 1007
    throw v3
.end method

.method public onWriteFinished([Landroid/print/PageRange;)V
    .locals 5
    .param p1, "pages"    # [Landroid/print/PageRange;

    .prologue
    .line 944
    iget-object v3, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->this$1:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v3}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-get0(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 945
    :try_start_0
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mCallback:Landroid/print/IWriteResultCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "callback":Landroid/print/IWriteResultCallback;
    monitor-exit v3

    .line 949
    if-nez v0, :cond_0

    .line 950
    const-string/jumbo v3, "PrintManager"

    const-string/jumbo v4, "PrintDocumentAdapter is destroyed. Did you finish the printing activity before print completion or did you invoke a callback after finish?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    return-void

    .line 944
    .end local v0    # "callback":Landroid/print/IWriteResultCallback;
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    .line 957
    .restart local v0    # "callback":Landroid/print/IWriteResultCallback;
    :cond_0
    if-nez p1, :cond_1

    .line 958
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "pages cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 976
    :catchall_1
    move-exception v3

    .line 977
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->destroy()V

    .line 976
    throw v3

    .line 960
    :cond_1
    :try_start_2
    array-length v3, p1

    if-nez v3, :cond_2

    .line 961
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "pages cannot be empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 965
    :cond_2
    :try_start_3
    iget v3, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mSequence:I

    invoke-interface {v0, p1, v3}, Landroid/print/IWriteResultCallback;->onWriteFinished([Landroid/print/PageRange;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 977
    :goto_0
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->destroy()V

    .line 942
    return-void

    .line 971
    :catch_0
    move-exception v1

    .line 972
    .local v1, "e":Ljava/lang/IllegalStateException;
    :try_start_4
    const-string/jumbo v3, "PrintManager"

    const-string/jumbo v4, "PrintDocumentAdapter is destroyed or under destroy"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mCallback:Landroid/print/IWriteResultCallback;

    goto :goto_0

    .line 966
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v2

    .line 967
    .local v2, "re":Landroid/os/RemoteException;
    const-string/jumbo v3, "PrintManager"

    const-string/jumbo v4, "Error calling onWriteFinished"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0
.end method
