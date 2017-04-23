.class Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$ServerSocketThread;
.super Ljava/lang/Thread;
.source "ActivityManagerPlusConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServerSocketThread"
.end annotation


# instance fields
.field private serverSocket:Landroid/net/LocalServerSocket;

.field final synthetic this$0:Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;


# direct methods
.method private constructor <init>(Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$ServerSocketThread;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$1;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$ServerSocketThread;-><init>(Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$ServerSocketThread;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$ServerSocketThread;->stopRun()V

    return-void
.end method

.method private stopRun()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$ServerSocketThread;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;

    const/4 v1, 0x0

    # setter for: Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->mProcessing:Z
    invoke-static {v0, v1}, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->access$202(Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;Z)Z

    .line 79
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$ServerSocketThread;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;

    const/4 v1, 0x1

    # setter for: Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->mProcessing:Z
    invoke-static {v0, v1}, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->access$202(Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;Z)Z

    .line 85
    new-instance v0, Landroid/net/LocalServerSocket;

    const-string/jumbo v1, "com.mediatek.ipomanager.ActivityManagerPlusConnection"

    invoke-direct {v0, v1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$ServerSocketThread;->serverSocket:Landroid/net/LocalServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$ServerSocketThread;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;

    # getter for: Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->mProcessing:Z
    invoke-static {v0}, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->access$200(Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$ServerSocketThread;->serverSocket:Landroid/net/LocalServerSocket;

    if-nez v0, :cond_2

    :goto_1
    const-string/jumbo v0, "ActivityManagerPlusConnection"

    const-string/jumbo v1, "ServerSocketThread exit"

    .line 115
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 89
    iget-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$ServerSocketThread;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;

    # setter for: Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->mProcessing:Z
    invoke-static {v0, v3}, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->access$202(Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;Z)Z

    .line 90
    return-void

    :cond_1
    const-string/jumbo v0, "ActivityManagerPlusConnection"

    const-string/jumbo v1, "wait for new client coming!"

    .line 94
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$ServerSocketThread;->serverSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$ServerSocketThread;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;

    # getter for: Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->mProcessing:Z
    invoke-static {v1}, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->access$200(Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ActivityManagerPlusConnection"

    const-string/jumbo v2, "new client coming!"

    .line 98
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v1, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;

    iget-object v2, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$ServerSocketThread;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;

    invoke-direct {v1, v2, v0}, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;-><init>(Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;Landroid/net/LocalSocket;)V

    invoke-virtual {v1}, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;->start()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 105
    :catch_1
    move-exception v0

    .line 103
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 104
    iget-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$ServerSocketThread;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;

    # setter for: Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->mProcessing:Z
    invoke-static {v0, v3}, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->access$202(Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;Z)Z

    goto :goto_0

    .line 110
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$ServerSocketThread;->serverSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 113
    :catch_2
    move-exception v0

    .line 112
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
