.class public abstract Landroid/app/FragmentHostCallback;
.super Landroid/app/FragmentContainer;
.source "FragmentHostCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/app/FragmentContainer;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAllLoaderManagers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/LoaderManager;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedForLoaderManager:Z

.field final mContext:Landroid/content/Context;

.field final mFragmentManager:Landroid/app/FragmentManagerImpl;

.field private final mHandler:Landroid/os/Handler;

.field private mLoaderManager:Landroid/app/LoaderManagerImpl;

.field private mLoadersStarted:Z

.field final mWindowAnimations:I


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 55
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p1, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Landroid/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    .line 54
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "windowAnimations"    # I

    .prologue
    .line 58
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    invoke-direct {p0}, Landroid/app/FragmentContainer;-><init>()V

    .line 44
    new-instance v0, Landroid/app/FragmentManagerImpl;

    invoke-direct {v0}, Landroid/app/FragmentManagerImpl;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 60
    iput-object p1, p0, Landroid/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    .line 61
    iput-object p2, p0, Landroid/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    .line 62
    iput-object p3, p0, Landroid/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    .line 63
    iput p4, p0, Landroid/app/FragmentHostCallback;->mWindowAnimations:I

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "windowAnimations"    # I

    .prologue
    .line 51
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    .line 50
    return-void
.end method


# virtual methods
.method doLoaderDestroy()V
    .locals 1

    .prologue
    .line 244
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-nez v0, :cond_0

    .line 245
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doDestroy()V

    .line 243
    return-void
.end method

.method doLoaderRetain()V
    .locals 1

    .prologue
    .line 237
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-nez v0, :cond_0

    .line 238
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doRetain()V

    .line 236
    return-void
.end method

.method doLoaderStart()V
    .locals 4

    .prologue
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    const/4 v3, 0x1

    .line 206
    iget-boolean v0, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    if-eqz v0, :cond_0

    .line 207
    return-void

    .line 209
    :cond_0
    iput-boolean v3, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    .line 211
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doStart()V

    .line 216
    :cond_1
    :goto_0
    iput-boolean v3, p0, Landroid/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    .line 205
    return-void

    .line 213
    :cond_2
    iget-boolean v0, p0, Landroid/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    if-nez v0, :cond_1

    .line 214
    const-string/jumbo v0, "(root)"

    iget-boolean v1, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    goto :goto_0
.end method

.method doLoaderStop(Z)V
    .locals 1
    .param p1, "retain"    # Z

    .prologue
    .line 220
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-nez v0, :cond_0

    .line 221
    return-void

    .line 224
    :cond_0
    iget-boolean v0, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    if-nez v0, :cond_1

    .line 225
    return-void

    .line 227
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    .line 229
    if-eqz p1, :cond_2

    .line 230
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doRetain()V

    .line 219
    :goto_0
    return-void

    .line 232
    :cond_2
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doStop()V

    goto :goto_0
.end method

.method dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 313
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLoadersStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 314
    iget-boolean v0, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 315
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Loader Manager "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 318
    const-string/jumbo v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/app/LoaderManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 312
    :cond_0
    return-void
.end method

.method getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 170
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 174
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getFragmentManagerImpl()Landroid/app/FragmentManagerImpl;
    .locals 1

    .prologue
    .line 182
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    return-object v0
.end method

.method getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 178
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getLoaderManager(Ljava/lang/String;ZZ)Landroid/app/LoaderManagerImpl;
    .locals 2
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "started"    # Z
    .param p3, "create"    # Z

    .prologue
    .line 266
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v1, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    if-nez v1, :cond_0

    .line 267
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    .line 269
    :cond_0
    iget-object v1, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoaderManagerImpl;

    .line 270
    .local v0, "lm":Landroid/app/LoaderManagerImpl;
    if-nez v0, :cond_2

    .line 271
    if-eqz p3, :cond_1

    .line 272
    new-instance v0, Landroid/app/LoaderManagerImpl;

    .end local v0    # "lm":Landroid/app/LoaderManagerImpl;
    invoke-direct {v0, p1, p0, p2}, Landroid/app/LoaderManagerImpl;-><init>(Ljava/lang/String;Landroid/app/FragmentHostCallback;Z)V

    .line 273
    .restart local v0    # "lm":Landroid/app/LoaderManagerImpl;
    iget-object v1, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_1
    :goto_0
    return-object v0

    .line 276
    :cond_2
    invoke-virtual {v0, p0}, Landroid/app/LoaderManagerImpl;->updateHostController(Landroid/app/FragmentHostCallback;)V

    goto :goto_0
.end method

.method getLoaderManagerImpl()Landroid/app/LoaderManagerImpl;
    .locals 3

    .prologue
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    const/4 v2, 0x1

    .line 186
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    return-object v0

    .line 189
    :cond_0
    iput-boolean v2, p0, Landroid/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    .line 190
    const-string/jumbo v0, "(root)"

    iget-boolean v1, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    .line 191
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    return-object v0
.end method

.method inactivateFragment(Ljava/lang/String;)V
    .locals 2
    .param p1, "who"    # Ljava/lang/String;

    .prologue
    .line 196
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v1, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoaderManagerImpl;

    .line 198
    .local v0, "lm":Landroid/app/LoaderManagerImpl;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/app/LoaderManagerImpl;->mRetaining:Z

    if-eqz v1, :cond_1

    .line 194
    .end local v0    # "lm":Landroid/app/LoaderManagerImpl;
    :cond_0
    :goto_0
    return-void

    .line 199
    .restart local v0    # "lm":Landroid/app/LoaderManagerImpl;
    :cond_1
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doDestroy()V

    .line 200
    iget-object v1, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 155
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    return-void
.end method

.method public onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 75
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    return-void
.end method

.method public onFindViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 161
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract onGetHost()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public onGetLayoutInflater()Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 90
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public onGetWindowAnimations()I
    .locals 1

    .prologue
    .line 147
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget v0, p0, Landroid/app/FragmentHostCallback;->mWindowAnimations:I

    return v0
.end method

.method public onHasView()Z
    .locals 1

    .prologue
    .line 166
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public onHasWindowAnimations()Z
    .locals 1

    .prologue
    .line 140
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public onInvalidateOptionsMenu()V
    .locals 0

    .prologue
    .line 112
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    return-void
.end method

.method public onRequestPermissionsFromFragment(Landroid/app/Fragment;[Ljava/lang/String;I)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "requestCode"    # I

    .prologue
    .line 133
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    return-void
.end method

.method public onShouldSaveFragmentState(Landroid/app/Fragment;)Z
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 82
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public onStartActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .prologue
    .line 121
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 123
    const-string/jumbo v1, "Starting activity with a requestCode requires a FragmentActivity host"

    .line 122
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 120
    return-void
.end method

.method public onUseFragmentManagerInflaterFactory()Z
    .locals 1

    .prologue
    .line 97
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method reportLoaderStart()V
    .locals 5

    .prologue
    .line 251
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v4, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    if-eqz v4, :cond_1

    .line 252
    iget-object v4, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 253
    .local v0, "N":I
    new-array v3, v0, [Landroid/app/LoaderManagerImpl;

    .line 254
    .local v3, "loaders":[Landroid/app/LoaderManagerImpl;
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 255
    iget-object v4, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/LoaderManagerImpl;

    aput-object v4, v3, v1

    .line 254
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 257
    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 258
    aget-object v2, v3, v1

    .line 259
    .local v2, "lm":Landroid/app/LoaderManagerImpl;
    invoke-virtual {v2}, Landroid/app/LoaderManagerImpl;->finishRetain()V

    .line 260
    invoke-virtual {v2}, Landroid/app/LoaderManagerImpl;->doReportStart()V

    .line 257
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 250
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "lm":Landroid/app/LoaderManagerImpl;
    .end local v3    # "loaders":[Landroid/app/LoaderManagerImpl;
    :cond_1
    return-void
.end method

.method restoreLoaderNonConfig(Landroid/util/ArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/LoaderManager;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 309
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    .local p1, "loaderManagers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/LoaderManager;>;"
    iput-object p1, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    .line 308
    return-void
.end method

.method retainLoaderNonConfig()Landroid/util/ArrayMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/LoaderManager;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    const/4 v7, 0x0

    .line 282
    const/4 v4, 0x0

    .line 283
    .local v4, "retainLoaders":Z
    iget-object v5, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    if-eqz v5, :cond_2

    .line 286
    iget-object v5, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 287
    .local v0, "N":I
    new-array v3, v0, [Landroid/app/LoaderManagerImpl;

    .line 288
    .local v3, "loaders":[Landroid/app/LoaderManagerImpl;
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 289
    iget-object v5, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/LoaderManagerImpl;

    aput-object v5, v3, v1

    .line 288
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 291
    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 292
    aget-object v2, v3, v1

    .line 293
    .local v2, "lm":Landroid/app/LoaderManagerImpl;
    iget-boolean v5, v2, Landroid/app/LoaderManagerImpl;->mRetaining:Z

    if-eqz v5, :cond_1

    .line 294
    const/4 v4, 0x1

    .line 291
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 296
    :cond_1
    invoke-virtual {v2}, Landroid/app/LoaderManagerImpl;->doDestroy()V

    .line 297
    iget-object v5, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    iget-object v6, v2, Landroid/app/LoaderManagerImpl;->mWho:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 302
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "lm":Landroid/app/LoaderManagerImpl;
    .end local v3    # "loaders":[Landroid/app/LoaderManagerImpl;
    :cond_2
    if-eqz v4, :cond_3

    .line 303
    iget-object v5, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    return-object v5

    .line 305
    :cond_3
    return-object v7
.end method
