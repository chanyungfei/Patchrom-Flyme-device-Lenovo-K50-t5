.class final Landroid/content/ContentResolver$ParcelFileDescriptorInner;
.super Landroid/os/ParcelFileDescriptor;
.source "ContentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ParcelFileDescriptorInner"
.end annotation


# instance fields
.field private final mContentProvider:Landroid/content/IContentProvider;

.field private mProviderReleased:Z

.field final synthetic this$0:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/content/IContentProvider;)V
    .locals 0
    .param p1, "this$0"    # Landroid/content/ContentResolver;
    .param p2, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "icp"    # Landroid/content/IContentProvider;

    .prologue
    .line 2599
    iput-object p1, p0, Landroid/content/ContentResolver$ParcelFileDescriptorInner;->this$0:Landroid/content/ContentResolver;

    .line 2600
    invoke-direct {p0, p2}, Landroid/os/ParcelFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 2601
    iput-object p3, p0, Landroid/content/ContentResolver$ParcelFileDescriptorInner;->mContentProvider:Landroid/content/IContentProvider;

    .line 2599
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2615
    invoke-super {p0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 2616
    invoke-static {}, Landroid/content/ContentResolver;->-get1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2617
    iget-object v0, p0, Landroid/content/ContentResolver$ParcelFileDescriptorInner;->this$0:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Landroid/content/ContentResolver$ParcelFileDescriptorInner;->hashCode()I

    move-result v1

    .line 2618
    const/4 v2, 0x2

    .line 2617
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->removeFromQueryHistory(II)V

    .line 2614
    :cond_0
    return-void
.end method

.method public releaseResources()V
    .locals 2

    .prologue
    .line 2606
    iget-boolean v0, p0, Landroid/content/ContentResolver$ParcelFileDescriptorInner;->mProviderReleased:Z

    if-nez v0, :cond_0

    .line 2607
    iget-object v0, p0, Landroid/content/ContentResolver$ParcelFileDescriptorInner;->this$0:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/content/ContentResolver$ParcelFileDescriptorInner;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2608
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/ContentResolver$ParcelFileDescriptorInner;->mProviderReleased:Z

    .line 2605
    :cond_0
    return-void
.end method
