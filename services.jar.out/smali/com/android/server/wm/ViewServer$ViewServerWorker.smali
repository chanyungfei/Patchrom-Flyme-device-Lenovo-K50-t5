.class Lcom/android/server/wm/ViewServer$ViewServerWorker;
.super Ljava/lang/Object;
.source "ViewServer.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/server/wm/WindowManagerService$WindowChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ViewServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewServerWorker"
.end annotation


# instance fields
.field private mClient:Ljava/net/Socket;

.field private mNeedFocusedWindowUpdate:Z

.field private mNeedWindowListUpdate:Z

.field final synthetic this$0:Lcom/android/server/wm/ViewServer;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ViewServer;Ljava/net/Socket;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wm/ViewServer;
    .param p2, "client"    # Ljava/net/Socket;

    .prologue
    const/4 v0, 0x0

    .line 235
    iput-object p1, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput-object p2, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    .line 237
    iput-boolean v0, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    .line 238
    iput-boolean v0, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    .line 235
    return-void
.end method

.method private windowManagerAutolistLoop()Z
    .locals 8

    .prologue
    .line 319
    iget-object v6, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    invoke-static {v6}, Lcom/android/server/wm/ViewServer;->-get1(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/android/server/wm/WindowManagerService;->addWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V

    .line 320
    const/4 v4, 0x0

    .line 322
    .local v4, "out":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    iget-object v7, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 323
    .end local v4    # "out":Ljava/io/BufferedWriter;
    .local v5, "out":Ljava/io/BufferedWriter;
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-nez v6, :cond_8

    .line 324
    const/4 v3, 0x0

    .line 325
    .local v3, "needWindowListUpdate":Z
    const/4 v2, 0x0

    .line 326
    .local v2, "needFocusedWindowUpdate":Z
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 327
    :goto_1
    :try_start_2
    iget-boolean v6, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    if-eqz v6, :cond_6

    .line 330
    :cond_1
    iget-boolean v6, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    if-eqz v6, :cond_2

    .line 331
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    .line 332
    const/4 v3, 0x1

    .line 334
    :cond_2
    iget-boolean v6, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    if-eqz v6, :cond_3

    .line 335
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 336
    const/4 v2, 0x1

    :cond_3
    :try_start_3
    monitor-exit p0

    .line 339
    if-eqz v3, :cond_4

    .line 340
    const-string/jumbo v6, "LIST UPDATE\n"

    invoke-virtual {v5, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V

    .line 343
    :cond_4
    if-eqz v2, :cond_0

    .line 344
    const-string/jumbo v6, "ACTION_FOCUS UPDATE\n"

    invoke-virtual {v5, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 348
    .end local v2    # "needFocusedWindowUpdate":Z
    .end local v3    # "needWindowListUpdate":Z
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v4, v5

    .line 351
    .end local v5    # "out":Ljava/io/BufferedWriter;
    :goto_2
    if-eqz v4, :cond_5

    .line 353
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 358
    :cond_5
    :goto_3
    iget-object v6, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    invoke-static {v6}, Lcom/android/server/wm/ViewServer;->-get1(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/android/server/wm/WindowManagerService;->removeWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V

    .line 360
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4
    const/4 v6, 0x1

    return v6

    .line 328
    .restart local v2    # "needFocusedWindowUpdate":Z
    .restart local v3    # "needWindowListUpdate":Z
    .restart local v5    # "out":Ljava/io/BufferedWriter;
    :cond_6
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/wm/ViewServer$ViewServerWorker;->wait()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 326
    :catchall_0
    move-exception v6

    :try_start_6
    monitor-exit p0

    throw v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 350
    .end local v2    # "needFocusedWindowUpdate":Z
    .end local v3    # "needWindowListUpdate":Z
    :catchall_1
    move-exception v6

    move-object v4, v5

    .line 351
    .end local v5    # "out":Ljava/io/BufferedWriter;
    :goto_5
    if-eqz v4, :cond_7

    .line 353
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 358
    :cond_7
    :goto_6
    iget-object v7, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    invoke-static {v7}, Lcom/android/server/wm/ViewServer;->-get1(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/android/server/wm/WindowManagerService;->removeWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V

    .line 350
    throw v6

    .line 351
    .restart local v5    # "out":Ljava/io/BufferedWriter;
    :cond_8
    if-eqz v5, :cond_9

    .line 353
    :try_start_8
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 358
    :cond_9
    :goto_7
    iget-object v6, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    invoke-static {v6}, Lcom/android/server/wm/ViewServer;->-get1(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/android/server/wm/WindowManagerService;->removeWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V

    move-object v4, v5

    .end local v5    # "out":Ljava/io/BufferedWriter;
    .local v4, "out":Ljava/io/BufferedWriter;
    goto :goto_4

    .line 354
    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v5    # "out":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_7

    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_3

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 350
    .end local v0    # "e":Ljava/io/IOException;
    .local v4, "out":Ljava/io/BufferedWriter;
    :catchall_2
    move-exception v6

    goto :goto_5

    .line 348
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    goto :goto_2
.end method


# virtual methods
.method public focusChanged()V
    .locals 1

    .prologue
    .line 312
    monitor-enter p0

    .line 313
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    .line 314
    invoke-virtual {p0}, Lcom/android/server/wm/ViewServer$ViewServerWorker;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 311
    return-void

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 12

    .prologue
    .line 243
    const/4 v2, 0x0

    .line 245
    .local v2, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    iget-object v9, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v9, 0x400

    invoke-direct {v3, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 247
    .end local v2    # "in":Ljava/io/BufferedReader;
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 252
    .local v6, "request":Ljava/lang/String;
    const/16 v8, 0x20

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 253
    .local v4, "index":I
    const/4 v8, -0x1

    if-ne v4, v8, :cond_4

    .line 254
    move-object v0, v6

    .line 255
    .local v0, "command":Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 262
    .local v5, "parameters":Ljava/lang/String;
    :goto_0
    const-string/jumbo v8, "PROTOCOL"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 263
    iget-object v8, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    const-string/jumbo v9, "4"

    invoke-static {v8, v9}, Lcom/android/server/wm/ViewServer;->-wrap0(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v7

    .line 277
    .local v7, "result":Z
    :goto_1
    if-nez v7, :cond_0

    .line 278
    const-string/jumbo v8, "ViewServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "An error occurred with the command: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 283
    :cond_0
    if-eqz v3, :cond_1

    .line 285
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 291
    :cond_1
    :goto_2
    iget-object v8, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    if-eqz v8, :cond_2

    .line 293
    :try_start_3
    iget-object v8, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->close()V

    .line 294
    iget-object v8, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    invoke-static {v8}, Lcom/android/server/wm/ViewServer;->-get0(Lcom/android/server/wm/ViewServer;)Ljava/util/ArrayList;

    move-result-object v9

    monitor-enter v9
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 295
    :try_start_4
    iget-object v8, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    invoke-static {v8}, Lcom/android/server/wm/ViewServer;->-get0(Lcom/android/server/wm/ViewServer;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit v9
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_2
    :goto_3
    move-object v2, v3

    .line 241
    .end local v0    # "command":Ljava/lang/String;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v4    # "index":I
    .end local v5    # "parameters":Ljava/lang/String;
    .end local v6    # "request":Ljava/lang/String;
    .end local v7    # "result":Z
    :cond_3
    :goto_4
    return-void

    .line 257
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "index":I
    .restart local v6    # "request":Ljava/lang/String;
    :cond_4
    const/4 v8, 0x0

    :try_start_6
    invoke-virtual {v6, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 258
    .restart local v0    # "command":Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "parameters":Ljava/lang/String;
    goto :goto_0

    .line 264
    :cond_5
    const-string/jumbo v8, "SERVER"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 265
    iget-object v8, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    const-string/jumbo v9, "4"

    invoke-static {v8, v9}, Lcom/android/server/wm/ViewServer;->-wrap0(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v7

    .restart local v7    # "result":Z
    goto :goto_1

    .line 266
    .end local v7    # "result":Z
    :cond_6
    const-string/jumbo v8, "LIST"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 267
    iget-object v8, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    invoke-static {v8}, Lcom/android/server/wm/ViewServer;->-get1(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService;->viewServerListWindows(Ljava/net/Socket;)Z

    move-result v7

    .restart local v7    # "result":Z
    goto :goto_1

    .line 268
    .end local v7    # "result":Z
    :cond_7
    const-string/jumbo v8, "GET_FOCUS"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 269
    iget-object v8, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    invoke-static {v8}, Lcom/android/server/wm/ViewServer;->-get1(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService;->viewServerGetFocusedWindow(Ljava/net/Socket;)Z

    move-result v7

    .restart local v7    # "result":Z
    goto/16 :goto_1

    .line 270
    .end local v7    # "result":Z
    :cond_8
    const-string/jumbo v8, "AUTOLIST"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 271
    invoke-direct {p0}, Lcom/android/server/wm/ViewServer$ViewServerWorker;->windowManagerAutolistLoop()Z

    move-result v7

    .restart local v7    # "result":Z
    goto/16 :goto_1

    .line 273
    .end local v7    # "result":Z
    :cond_9
    iget-object v8, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    invoke-static {v8}, Lcom/android/server/wm/ViewServer;->-get1(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v8, v9, v0, v5}, Lcom/android/server/wm/WindowManagerService;->viewServerWindowCommand(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-result v7

    .restart local v7    # "result":Z
    goto/16 :goto_1

    .line 287
    :catch_0
    move-exception v1

    .line 288
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 294
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :try_start_7
    monitor-exit v9

    throw v8
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 297
    :catch_1
    move-exception v1

    .line 298
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 280
    .end local v0    # "command":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v4    # "index":I
    .end local v5    # "parameters":Ljava/lang/String;
    .end local v6    # "request":Ljava/lang/String;
    .end local v7    # "result":Z
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catch_2
    move-exception v1

    .line 281
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_8
    const-string/jumbo v8, "ViewServer"

    const-string/jumbo v9, "Connection error: "

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 283
    if-eqz v2, :cond_a

    .line 285
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 291
    :cond_a
    :goto_6
    iget-object v8, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    if-eqz v8, :cond_3

    .line 293
    :try_start_a
    iget-object v8, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->close()V

    .line 294
    iget-object v8, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    invoke-static {v8}, Lcom/android/server/wm/ViewServer;->-get0(Lcom/android/server/wm/ViewServer;)Ljava/util/ArrayList;

    move-result-object v9

    monitor-enter v9
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 295
    :try_start_b
    iget-object v8, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    invoke-static {v8}, Lcom/android/server/wm/ViewServer;->-get0(Lcom/android/server/wm/ViewServer;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    monitor-exit v9
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_4

    .line 297
    :catch_3
    move-exception v1

    .line 298
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 287
    :catch_4
    move-exception v1

    .line 288
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 294
    :catchall_1
    move-exception v8

    :try_start_d
    monitor-exit v9

    throw v8
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    .line 282
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v8

    .line 283
    :goto_7
    if-eqz v2, :cond_b

    .line 285
    :try_start_e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    .line 291
    :cond_b
    :goto_8
    iget-object v9, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    if-eqz v9, :cond_c

    .line 293
    :try_start_f
    iget-object v9, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->close()V

    .line 294
    iget-object v9, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    invoke-static {v9}, Lcom/android/server/wm/ViewServer;->-get0(Lcom/android/server/wm/ViewServer;)Ljava/util/ArrayList;

    move-result-object v10

    monitor-enter v10
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6

    .line 295
    :try_start_10
    iget-object v9, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    invoke-static {v9}, Lcom/android/server/wm/ViewServer;->-get0(Lcom/android/server/wm/ViewServer;)Ljava/util/ArrayList;

    move-result-object v9

    iget-object v11, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :try_start_11
    monitor-exit v10
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6

    .line 282
    :cond_c
    :goto_9
    throw v8

    .line 287
    :catch_5
    move-exception v1

    .line 288
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 294
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v9

    :try_start_12
    monitor-exit v10

    throw v9
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6

    .line 297
    :catch_6
    move-exception v1

    .line 298
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 282
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catchall_4
    move-exception v8

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v2, "in":Ljava/io/BufferedReader;
    goto :goto_7

    .line 280
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_7
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_5
.end method

.method public windowsChanged()V
    .locals 1

    .prologue
    .line 305
    monitor-enter p0

    .line 306
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    .line 307
    invoke-virtual {p0}, Lcom/android/server/wm/ViewServer$ViewServerWorker;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 304
    return-void

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
