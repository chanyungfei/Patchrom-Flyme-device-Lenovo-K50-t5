.class Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
.super Ljava/lang/Object;
.source "HotKnotActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/hotknot/HotKnotActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HotKnotActivityState"
.end annotation


# instance fields
.field activity:Landroid/app/Activity;

.field clientId:I

.field flags:I

.field hotKnotMessage:Lcom/mediatek/hotknot/HotKnotMessage;

.field hotKnotMessageCallback:Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;

.field onHotKnotCompleteCallback:Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;

.field resumed:Z

.field final synthetic this$0:Lcom/mediatek/hotknot/HotKnotActivityManager;

.field token:Landroid/os/Binder;

.field uriCallback:Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;

.field uris:[Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/mediatek/hotknot/HotKnotActivityManager;Landroid/app/Activity;)V
    .locals 2
    .param p1, "this$0"    # Lcom/mediatek/hotknot/HotKnotActivityManager;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 109
    iput-object p1, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->this$0:Lcom/mediatek/hotknot/HotKnotActivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-boolean v1, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->resumed:Z

    .line 99
    iput-object v0, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->hotKnotMessage:Lcom/mediatek/hotknot/HotKnotMessage;

    .line 100
    iput-object v0, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->hotKnotMessageCallback:Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;

    .line 101
    iput-object v0, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->onHotKnotCompleteCallback:Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;

    .line 102
    iput-object v0, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->uriCallback:Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;

    .line 104
    iput-object v0, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->uris:[Landroid/net/Uri;

    .line 105
    iput v1, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->flags:I

    .line 107
    iput v1, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->clientId:I

    .line 110
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "activity is already destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    invoke-virtual {p2}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->resumed:Z

    .line 117
    iput-object p2, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->activity:Landroid/app/Activity;

    .line 118
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->token:Landroid/os/Binder;

    .line 119
    iget-object v0, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->token:Landroid/os/Binder;

    invoke-virtual {v0}, Landroid/os/Binder;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->clientId:I

    .line 120
    invoke-virtual {p2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->registerApplication(Landroid/app/Application;)V

    .line 109
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 123
    iget-object v0, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->this$0:Lcom/mediatek/hotknot/HotKnotActivityManager;

    iget-object v1, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->unregisterApplication(Landroid/app/Application;)V

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->resumed:Z

    .line 125
    iput-object v2, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->activity:Landroid/app/Activity;

    .line 126
    iput-object v2, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->hotKnotMessage:Lcom/mediatek/hotknot/HotKnotMessage;

    .line 127
    iput-object v2, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->hotKnotMessageCallback:Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;

    .line 128
    iput-object v2, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->onHotKnotCompleteCallback:Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;

    .line 129
    iput-object v2, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->uriCallback:Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;

    .line 130
    iput-object v2, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->uris:[Landroid/net/Uri;

    .line 131
    iput-object v2, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->token:Landroid/os/Binder;

    .line 122
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "["

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 136
    .local v0, "s":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->hotKnotMessage:Lcom/mediatek/hotknot/HotKnotMessage;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->hotKnotMessageCallback:Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget-object v2, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->onHotKnotCompleteCallback:Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "]"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget-object v2, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->uriCallback:Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;

    if-eqz v2, :cond_2

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-object v2, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->uris:[Landroid/net/Uri;

    if-eqz v2, :cond_3

    .line 140
    iget-object v2, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->uris:[Landroid/net/Uri;

    array-length v3, v2

    :goto_3
    if-ge v4, v3, :cond_3

    aget-object v1, v2, v4

    .line 141
    .local v1, "uri":Landroid/net/Uri;
    const-string/jumbo v5, " ["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    move v2, v4

    .line 136
    goto :goto_0

    :cond_1
    move v2, v4

    .line 137
    goto :goto_1

    :cond_2
    move v3, v4

    .line 138
    goto :goto_2

    .line 144
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
