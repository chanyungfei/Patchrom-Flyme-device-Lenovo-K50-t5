.class Landroid/app/Activity$1;
.super Ljava/lang/Object;
.source "Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/Activity;->initTintAndIconTheme()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/Activity;

    .prologue
    .line 4999
    iput-object p1, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5001
    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-static {v0}, Landroid/app/Activity;->-wrap1(Landroid/app/Activity;)V

    .line 5002
    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-static {v0}, Landroid/app/Activity;->-get1(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5003
    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-static {v0}, Landroid/app/Activity;->-get3(Landroid/app/Activity;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5004
    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-static {v1}, Landroid/app/Activity;->-get3(Landroid/app/Activity;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 5005
    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    iget-object v1, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-static {v1}, Landroid/app/Activity;->-get3(Landroid/app/Activity;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/app/Activity;->-wrap0(I)Z

    move-result v1

    invoke-static {v0, v1}, Landroid/app/Activity;->-wrap3(Landroid/app/Activity;Z)V

    .line 5000
    :cond_0
    :goto_0
    return-void

    .line 5008
    :cond_1
    const-string/jumbo v0, "Fail to get the tint color"

    invoke-static {v0}, Landroid/app/Activity;->-wrap4(Ljava/lang/String;)V

    .line 5009
    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/Activity;->-wrap2(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 5011
    :cond_2
    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-static {v0}, Landroid/app/Activity;->-get0(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5012
    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-static {v0}, Landroid/app/Activity;->-get2(Landroid/app/Activity;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5013
    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    iget-object v1, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-static {v1}, Landroid/app/Activity;->-get2(Landroid/app/Activity;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/app/Activity;->-wrap0(I)Z

    move-result v1

    invoke-static {v0, v1}, Landroid/app/Activity;->-wrap3(Landroid/app/Activity;Z)V

    goto :goto_0
.end method
