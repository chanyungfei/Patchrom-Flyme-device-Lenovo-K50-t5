.class Landroid/preference/PreferenceActivity$1;
.super Landroid/os/Handler;
.source "PreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/PreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/PreferenceActivity;


# direct methods
.method constructor <init>(Landroid/preference/PreferenceActivity;)V
    .locals 0
    .param p1, "this$0"    # Landroid/preference/PreferenceActivity;

    .prologue
    .line 236
    iput-object p1, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 239
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 241
    :pswitch_0
    invoke-static {}, Landroid/preference/PreferenceActivity;->-get0()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 242
    const-string/jumbo v3, "PreferenceActivity"

    const-string/jumbo v4, "handleMessage, MSG_BIND_PREFERENCES"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_1
    iget-object v3, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v3}, Landroid/preference/PreferenceActivity;->-wrap0(Landroid/preference/PreferenceActivity;)V

    goto :goto_0

    .line 248
    :pswitch_1
    invoke-static {}, Landroid/preference/PreferenceActivity;->-get0()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 249
    const-string/jumbo v3, "PreferenceActivity"

    const-string/jumbo v4, "handleMessage, MSG_BUILD_HEADERS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v3}, Landroid/preference/PreferenceActivity;->-get3(Landroid/preference/PreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 253
    .local v2, "oldHeaders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    iget-object v3, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v3}, Landroid/preference/PreferenceActivity;->-get3(Landroid/preference/PreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 254
    iget-object v3, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    iget-object v4, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v4}, Landroid/preference/PreferenceActivity;->-get3(Landroid/preference/PreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceActivity;->onBuildHeaders(Ljava/util/List;)V

    .line 255
    iget-object v3, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v3}, Landroid/preference/PreferenceActivity;->-get1(Landroid/preference/PreferenceActivity;)Landroid/widget/ListAdapter;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/BaseAdapter;

    if-eqz v3, :cond_3

    .line 256
    iget-object v3, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v3}, Landroid/preference/PreferenceActivity;->-get1(Landroid/preference/PreferenceActivity;)Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Landroid/widget/BaseAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 258
    :cond_3
    iget-object v3, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onGetNewHeader()Landroid/preference/PreferenceActivity$Header;

    move-result-object v0

    .line 259
    .local v0, "header":Landroid/preference/PreferenceActivity$Header;
    if-eqz v0, :cond_5

    iget-object v3, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 260
    iget-object v3, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    invoke-virtual {v3, v0, v2}, Landroid/preference/PreferenceActivity;->findBestMatchingHeader(Landroid/preference/PreferenceActivity$Header;Ljava/util/ArrayList;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v1

    .line 261
    .local v1, "mappedHeader":Landroid/preference/PreferenceActivity$Header;
    if-eqz v1, :cond_4

    iget-object v3, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v3}, Landroid/preference/PreferenceActivity;->-get2(Landroid/preference/PreferenceActivity;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v3

    if-eq v3, v1, :cond_0

    .line 262
    :cond_4
    iget-object v3, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    goto :goto_0

    .line 264
    .end local v1    # "mappedHeader":Landroid/preference/PreferenceActivity$Header;
    :cond_5
    iget-object v3, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v3}, Landroid/preference/PreferenceActivity;->-get2(Landroid/preference/PreferenceActivity;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 265
    iget-object v3, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    iget-object v4, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v4}, Landroid/preference/PreferenceActivity;->-get2(Landroid/preference/PreferenceActivity;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v4

    iget-object v5, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v5}, Landroid/preference/PreferenceActivity;->-get3(Landroid/preference/PreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/preference/PreferenceActivity;->findBestMatchingHeader(Landroid/preference/PreferenceActivity$Header;Ljava/util/ArrayList;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v1

    .line 266
    .restart local v1    # "mappedHeader":Landroid/preference/PreferenceActivity$Header;
    if-eqz v1, :cond_0

    .line 267
    iget-object v3, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceActivity;->setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V

    goto/16 :goto_0

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
