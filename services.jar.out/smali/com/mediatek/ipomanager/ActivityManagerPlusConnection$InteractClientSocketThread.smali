.class Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;
.super Ljava/lang/Thread;
.source "ActivityManagerPlusConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InteractClientSocketThread"
.end annotation


# static fields
.field static final ACK:Ljava/lang/String; = "ok"


# instance fields
.field private interactClientSocket:Landroid/net/LocalSocket;

.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field final synthetic this$0:Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;


# direct methods
.method public constructor <init>(Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;Landroid/net/LocalSocket;)V
    .locals 1

    .prologue
    .line 125
    iput-object p1, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 121
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;->mActionDoneSync:Ljava/lang/Object;

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;->mActionDone:Z

    .line 126
    iput-object p2, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;->interactClientSocket:Landroid/net/LocalSocket;

    .line 127
    return-void
.end method


# virtual methods
.method actionDone()V
    .locals 2

    .prologue
    .line 130
    iget-object v1, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 131
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;->mActionDone:Z

    .line 132
    iget-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 133
    monitor-exit v1

    .line 134
    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 13

    .prologue
    const/4 v3, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string/jumbo v0, ""

    .line 143
    new-instance v4, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread$1;

    invoke-direct {v4, p0}, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread$1;-><init>(Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;)V

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;->interactClientSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v12

    .line 151
    :try_start_1
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x1000

    .line 152
    new-array v2, v2, [C

    .line 155
    invoke-virtual {v1, v2}, Ljava/io/InputStreamReader;->read([C)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 182
    :goto_0
    iget-object v3, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v1, v10

    .line 183
    :goto_1
    :try_start_2
    iget-boolean v2, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;->mActionDone:Z

    if-eqz v2, :cond_4

    .line 193
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string/jumbo v2, "ActivityManagerPlusConnection"

    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " completed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    int-to-double v4, v1

    const-wide/high16 v6, 0x4069000000000000L    # 200.0

    mul-double/2addr v4, v6

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "s"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "android.intent.action.ACTION_BOOT_IPO"

    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 201
    :goto_2
    iget-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;->interactClientSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v1

    .line 202
    :try_start_4
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const-string/jumbo v2, "ok"

    const/4 v3, 0x0

    const-string/jumbo v4, "ok"

    .line 203
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;II)V

    .line 204
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_e
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 210
    if-nez v12, :cond_6

    .line 217
    :goto_3
    if-nez v1, :cond_7

    .line 225
    :goto_4
    :try_start_5
    iget-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;->interactClientSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 230
    :goto_5
    return-void

    .line 156
    :cond_0
    :try_start_6
    new-instance v0, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Ljava/lang/String;-><init>([CII)V

    const-string/jumbo v1, "ActivityManagerPlusConnection"

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Receive String from client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "ACTION_PREBOOT_IPO"

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "ACTION_BOOT_IPO"

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "ActivityManagerPlusConnection"

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unrecognized intent request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 210
    if-nez v12, :cond_3

    .line 225
    :goto_6
    :try_start_7
    iget-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;->interactClientSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 228
    :goto_7
    return-void

    .line 160
    :cond_1
    const/4 v0, 0x1

    :try_start_8
    # setter for: Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->sBooting:Z
    invoke-static {v0}, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->access$302(Z)Z

    .line 161
    invoke-static {}, Lcom/android/internal/app/ShutdownManager;->getInstance()Lcom/android/internal/app/ShutdownManager;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;

    # getter for: Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->access$400(Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ShutdownManager;->preRestoreStates(Landroid/content/Context;)V

    const-string/jumbo v9, "android.intent.action.ACTION_PREBOOT_IPO"

    :goto_8
    const-string/jumbo v0, "ActivityManagerPlusConnection"

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sent broadcast : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;

    # getter for: Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->access$400(Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    move-object v0, v9

    .line 177
    goto/16 :goto_0

    :cond_2
    const-string/jumbo v9, "android.intent.action.ACTION_BOOT_IPO"
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_8

    .line 212
    :cond_3
    :try_start_9
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_6

    .line 215
    :catch_0
    move-exception v0

    .line 214
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 228
    :catch_1
    move-exception v0

    .line 227
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 185
    :cond_4
    :try_start_a
    iget-object v2, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;->mActionDoneSync:Ljava/lang/Object;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 186
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 191
    :catch_2
    move-exception v2

    :try_start_b
    const-string/jumbo v4, "ActivityManagerPlusConnection"

    .line 189
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "wait "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " but interrupted"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 229
    :catch_3
    move-exception v0

    move-object v1, v11

    move-object v11, v12

    :goto_9
    :try_start_d
    const-string/jumbo v2, "ActivityManagerPlusConnection"

    const-string/jumbo v3, "transfer data error"

    .line 207
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 210
    if-nez v11, :cond_8

    .line 217
    :goto_a
    if-nez v1, :cond_9

    .line 225
    :goto_b
    :try_start_e
    iget-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;->interactClientSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    goto/16 :goto_5

    .line 228
    :catch_4
    move-exception v0

    .line 227
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 197
    :cond_5
    const/4 v0, 0x0

    :try_start_f
    # setter for: Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->sBooting:Z
    invoke-static {v0}, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->access$302(Z)Z
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto/16 :goto_2

    .line 229
    :catchall_1
    move-exception v0

    .line 210
    :goto_c
    if-nez v12, :cond_a

    .line 217
    :goto_d
    if-nez v11, :cond_b

    .line 225
    :goto_e
    :try_start_10
    iget-object v1, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;->interactClientSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    .line 228
    :goto_f
    throw v0

    .line 212
    :cond_6
    :try_start_11
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5

    goto/16 :goto_3

    .line 215
    :catch_5
    move-exception v0

    .line 214
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 219
    :cond_7
    :try_start_12
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6

    goto/16 :goto_4

    .line 222
    :catch_6
    move-exception v0

    .line 221
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 228
    :catch_7
    move-exception v0

    .line 227
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 212
    :cond_8
    :try_start_13
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8

    goto :goto_a

    .line 215
    :catch_8
    move-exception v0

    .line 214
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 219
    :cond_9
    :try_start_14
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_9

    goto :goto_b

    .line 222
    :catch_9
    move-exception v0

    .line 221
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 212
    :cond_a
    :try_start_15
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_a

    goto :goto_d

    .line 215
    :catch_a
    move-exception v1

    .line 214
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 219
    :cond_b
    :try_start_16
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_b

    goto :goto_e

    .line 222
    :catch_b
    move-exception v1

    .line 221
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 228
    :catch_c
    move-exception v1

    .line 227
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    .line 229
    :catchall_2
    move-exception v0

    move-object v12, v11

    goto :goto_c

    :catchall_3
    move-exception v0

    move-object v11, v1

    goto :goto_c

    :catchall_4
    move-exception v0

    move-object v12, v11

    move-object v11, v1

    goto :goto_c

    :catch_d
    move-exception v0

    move-object v1, v11

    goto :goto_9

    :catch_e
    move-exception v0

    move-object v11, v12

    goto/16 :goto_9
.end method
