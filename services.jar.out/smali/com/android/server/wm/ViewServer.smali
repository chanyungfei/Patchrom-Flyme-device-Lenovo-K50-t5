.class Lcom/android/server/wm/ViewServer;
.super Ljava/lang/Object;
.source "ViewServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ViewServer$ViewServerWorker;
    }
.end annotation


# static fields
.field private static final COMMAND_PROTOCOL_VERSION:Ljava/lang/String; = "PROTOCOL"

.field private static final COMMAND_SERVER_VERSION:Ljava/lang/String; = "SERVER"

.field private static final COMMAND_WINDOW_MANAGER_AUTOLIST:Ljava/lang/String; = "AUTOLIST"

.field private static final COMMAND_WINDOW_MANAGER_GET_FOCUS:Ljava/lang/String; = "GET_FOCUS"

.field private static final COMMAND_WINDOW_MANAGER_LIST:Ljava/lang/String; = "LIST"

.field private static final LOG_TAG:Ljava/lang/String; = "ViewServer"

.field private static final VALUE_PROTOCOL_VERSION:Ljava/lang/String; = "4"

.field private static final VALUE_SERVER_VERSION:Ljava/lang/String; = "4"

.field public static final VIEW_SERVER_DEFAULT_PORT:I = 0x134b

.field private static final VIEW_SERVER_MAX_CONNECTIONS:I = 0xa


# instance fields
.field private final mPort:I

.field private mServer:Ljava/net/ServerSocket;

.field private mSockets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private mThread:Ljava/lang/Thread;

.field private mThreadPool:Ljava/util/concurrent/ExecutorService;

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/wm/ViewServer;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ViewServer;->mSockets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ViewServer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/net/Socket;Ljava/lang/String;)Z
    .locals 1
    .param p0, "client"    # Ljava/net/Socket;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/wm/ViewServer;->writeValue(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;I)V
    .locals 1
    .param p1, "windowManager"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "port"    # I

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ViewServer;->mSockets:Ljava/util/ArrayList;

    .line 88
    iput-object p1, p0, Lcom/android/server/wm/ViewServer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 89
    iput p2, p0, Lcom/android/server/wm/ViewServer;->mPort:I

    .line 87
    return-void
.end method

.method private static writeValue(Ljava/net/Socket;Ljava/lang/String;)Z
    .locals 8
    .param p0, "client"    # Ljava/net/Socket;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 208
    const/4 v3, 0x0

    .line 210
    .local v3, "out":Ljava/io/BufferedWriter;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 211
    .local v0, "clientStream":Ljava/io/OutputStream;
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v7, 0x2000

    invoke-direct {v4, v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .local v4, "out":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v4, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 213
    const-string/jumbo v6, "\n"

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 215
    const/4 v5, 0x1

    .line 219
    .local v5, "result":Z
    if-eqz v4, :cond_0

    .line 221
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v3, v4

    .line 227
    .end local v0    # "clientStream":Ljava/io/OutputStream;
    .end local v4    # "out":Ljava/io/BufferedWriter;
    :cond_1
    :goto_1
    return v5

    .line 222
    .restart local v0    # "clientStream":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_0

    .line 216
    .end local v0    # "clientStream":Ljava/io/OutputStream;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "out":Ljava/io/BufferedWriter;
    .end local v5    # "result":Z
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v2

    .line 217
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    const/4 v5, 0x0

    .line 219
    .restart local v5    # "result":Z
    if-eqz v3, :cond_1

    .line 221
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 222
    :catch_2
    move-exception v1

    .line 223
    .restart local v1    # "e":Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_1

    .line 218
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "result":Z
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v6

    .line 219
    .end local v3    # "out":Ljava/io/BufferedWriter;
    :goto_3
    if-eqz v3, :cond_2

    .line 221
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 218
    :cond_2
    :goto_4
    throw v6

    .line 222
    :catch_3
    move-exception v1

    .line 223
    .restart local v1    # "e":Ljava/io/IOException;
    const/4 v5, 0x0

    .restart local v5    # "result":Z
    goto :goto_4

    .line 218
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "result":Z
    .restart local v0    # "clientStream":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "out":Ljava/io/BufferedWriter;
    .local v3, "out":Ljava/io/BufferedWriter;
    goto :goto_3

    .line 216
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    goto :goto_2
.end method


# virtual methods
.method isRunning()Z
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/server/wm/ViewServer;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ViewServer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 184
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ViewServer;->mThread:Ljava/lang/Thread;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/ViewServer;->mServer:Ljava/net/ServerSocket;

    if-eqz v3, :cond_1

    .line 187
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/ViewServer;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 188
    .local v0, "client":Ljava/net/Socket;
    iget-object v3, p0, Lcom/android/server/wm/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v3, :cond_0

    .line 189
    iget-object v4, p0, Lcom/android/server/wm/ViewServer;->mSockets:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/ViewServer;->mSockets:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v4

    .line 192
    iget-object v3, p0, Lcom/android/server/wm/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/android/server/wm/ViewServer$ViewServerWorker;

    invoke-direct {v4, p0, v0}, Lcom/android/server/wm/ViewServer$ViewServerWorker;-><init>(Lcom/android/server/wm/ViewServer;Ljava/net/Socket;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 200
    .end local v0    # "client":Ljava/net/Socket;
    :catch_0
    move-exception v2

    .line 201
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ViewServer"

    const-string/jumbo v4, "Connection error: "

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 189
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "client":Ljava/net/Socket;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4

    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 195
    :cond_0
    :try_start_4
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 196
    :catch_1
    move-exception v1

    .line 197
    .local v1, "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 182
    .end local v0    # "client":Ljava/net/Socket;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    return-void
.end method

.method start()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    monitor-enter p0

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ViewServer;->mThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 105
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 108
    :cond_0
    :try_start_1
    new-instance v0, Ljava/net/ServerSocket;

    .line 109
    iget v1, p0, Lcom/android/server/wm/ViewServer;->mPort:I

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v2

    const/16 v3, 0xa

    .line 108
    invoke-direct {v0, v1, v3, v2}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v0, p0, Lcom/android/server/wm/ViewServer;->mServer:Ljava/net/ServerSocket;

    .line 110
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Remote View Server [port="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/ViewServer;->mPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/ViewServer;->mThread:Ljava/lang/Thread;

    .line 111
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 112
    iget-object v0, p0, Lcom/android/server/wm/ViewServer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method stop()Z
    .locals 7

    .prologue
    .line 129
    monitor-enter p0

    .line 130
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/ViewServer;->mThread:Ljava/lang/Thread;

    if-eqz v3, :cond_4

    .line 132
    iget-object v3, p0, Lcom/android/server/wm/ViewServer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 133
    iget-object v3, p0, Lcom/android/server/wm/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_1

    .line 135
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 139
    :try_start_2
    iget-object v4, p0, Lcom/android/server/wm/ViewServer;->mSockets:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 140
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_3
    iget-object v3, p0, Lcom/android/server/wm/ViewServer;->mSockets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    if-ge v2, v3, :cond_0

    .line 142
    :try_start_4
    iget-object v3, p0, Lcom/android/server/wm/ViewServer;->mSockets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 140
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v3, "ViewServer"

    const-string/jumbo v5, "Could not close mSockets"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 139
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :try_start_6
    monitor-exit v4

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 129
    .end local v2    # "i":I
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 147
    .restart local v2    # "i":I
    :cond_0
    :try_start_7
    iget-object v3, p0, Lcom/android/server/wm/ViewServer;->mSockets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    monitor-exit v4

    .line 151
    .end local v2    # "i":I
    :cond_1
    :goto_2
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/wm/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 152
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/wm/ViewServer;->mThread:Ljava/lang/Thread;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 155
    :try_start_9
    iget-object v3, p0, Lcom/android/server/wm/ViewServer;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V

    .line 156
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/wm/ViewServer;->mServer:Ljava/net/ServerSocket;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 157
    const/4 v3, 0x1

    monitor-exit p0

    return v3

    .line 136
    :catch_1
    move-exception v1

    .line 137
    .local v1, "e":Ljava/lang/SecurityException;
    :try_start_a
    const-string/jumbo v3, "ViewServer"

    const-string/jumbo v4, "Could not stop all view server threads"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 139
    :try_start_b
    iget-object v4, p0, Lcom/android/server/wm/ViewServer;->mSockets:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 140
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    :try_start_c
    iget-object v3, p0, Lcom/android/server/wm/ViewServer;->mSockets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-result v3

    if-ge v2, v3, :cond_2

    .line 142
    :try_start_d
    iget-object v3, p0, Lcom/android/server/wm/ViewServer;->mSockets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 140
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 143
    :catch_2
    move-exception v0

    .line 144
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_e
    const-string/jumbo v3, "ViewServer"

    const-string/jumbo v5, "Could not close mSockets"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto :goto_4

    .line 139
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v3

    :try_start_f
    monitor-exit v4

    throw v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 147
    :cond_2
    :try_start_10
    iget-object v3, p0, Lcom/android/server/wm/ViewServer;->mSockets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :try_start_11
    monitor-exit v4

    goto :goto_2

    .line 138
    .end local v1    # "e":Ljava/lang/SecurityException;
    .end local v2    # "i":I
    :catchall_3
    move-exception v3

    move-object v4, v3

    .line 139
    iget-object v5, p0, Lcom/android/server/wm/ViewServer;->mSockets:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 140
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5
    :try_start_12
    iget-object v3, p0, Lcom/android/server/wm/ViewServer;->mSockets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    move-result v3

    if-ge v2, v3, :cond_3

    .line 142
    :try_start_13
    iget-object v3, p0, Lcom/android/server/wm/ViewServer;->mSockets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 140
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 143
    :catch_3
    move-exception v0

    .line 144
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_14
    const-string/jumbo v3, "ViewServer"

    const-string/jumbo v6, "Could not close mSockets"

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    goto :goto_6

    .line 139
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_4
    move-exception v3

    :try_start_15
    monitor-exit v5

    throw v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 147
    :cond_3
    :try_start_16
    iget-object v3, p0, Lcom/android/server/wm/ViewServer;->mSockets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    :try_start_17
    monitor-exit v5

    .line 138
    throw v4

    .line 158
    .end local v2    # "i":I
    :catch_4
    move-exception v0

    .line 159
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v3, "ViewServer"

    const-string/jumbo v4, "Could not close the view server"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 162
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    const/4 v3, 0x0

    monitor-exit p0

    return v3
.end method
