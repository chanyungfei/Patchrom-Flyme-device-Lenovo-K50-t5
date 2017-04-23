.class abstract Lcom/android/internal/app/ResolverActivity$LoadIconTask;
.super Landroid/os/AsyncTask;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "LoadIconTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field protected final mDisplayResolveInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

.field private final mResolveInfo:Landroid/content/pm/ResolveInfo;

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverActivity;
    .param p2, "dri"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .prologue
    .line 1837
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$LoadIconTask;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1838
    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$LoadIconTask;->mDisplayResolveInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 1839
    invoke-virtual {p2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$LoadIconTask;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 1837
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1845
    const-string/jumbo v1, "ResolverActivity"

    const-string/jumbo v2, "LoadIconTask doInBackground Enter:"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$LoadIconTask;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$LoadIconTask;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ResolverActivity;->loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1850
    .local v0, "r":Landroid/graphics/drawable/Drawable;
    const-string/jumbo v1, "ResolverActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "LoadIconTask doInBackground Leave: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 1843
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$LoadIconTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1857
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$LoadIconTask;->mDisplayResolveInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->setDisplayIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1856
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "d"    # Ljava/lang/Object;

    .prologue
    .line 1856
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .end local p1    # "d":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$LoadIconTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
