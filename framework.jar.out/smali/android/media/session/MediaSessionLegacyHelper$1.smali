.class Landroid/media/session/MediaSessionLegacyHelper$1;
.super Ljava/lang/Object;
.source "MediaSessionLegacyHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSessionLegacyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/session/MediaSessionLegacyHelper;


# direct methods
.method constructor <init>(Landroid/media/session/MediaSessionLegacyHelper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/session/MediaSessionLegacyHelper;

    .prologue
    .line 185
    iput-object p1, p0, Landroid/media/session/MediaSessionLegacyHelper$1;->this$0:Landroid/media/session/MediaSessionLegacyHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 188
    invoke-static {v5}, Landroid/media/session/MediaSessionLegacyHelper;->-set0(Z)Z

    .line 189
    const-string/jumbo v2, "MediaSessionHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Long press, send media key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/media/session/MediaSessionLegacyHelper;->-get1()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v0, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/media/session/MediaSessionLegacyHelper;->-get1()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 191
    .local v0, "keyEvent_D":Landroid/view/KeyEvent;
    iget-object v2, p0, Landroid/media/session/MediaSessionLegacyHelper$1;->this$0:Landroid/media/session/MediaSessionLegacyHelper;

    invoke-static {v2}, Landroid/media/session/MediaSessionLegacyHelper;->-get2(Landroid/media/session/MediaSessionLegacyHelper;)Landroid/media/session/MediaSessionManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/media/session/MediaSessionManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 192
    new-instance v1, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/media/session/MediaSessionLegacyHelper;->-get1()I

    move-result v2

    invoke-direct {v1, v5, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 193
    .local v1, "keyEvent_U":Landroid/view/KeyEvent;
    iget-object v2, p0, Landroid/media/session/MediaSessionLegacyHelper$1;->this$0:Landroid/media/session/MediaSessionLegacyHelper;

    invoke-static {v2}, Landroid/media/session/MediaSessionLegacyHelper;->-get2(Landroid/media/session/MediaSessionLegacyHelper;)Landroid/media/session/MediaSessionManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/session/MediaSessionManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 187
    return-void
.end method
