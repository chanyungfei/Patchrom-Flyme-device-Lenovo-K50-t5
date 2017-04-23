.class Ltheme/content/res/AppIconThemeServices$3;
.super Ljava/lang/Object;
.source "AppIconThemeServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltheme/content/res/AppIconThemeServices;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltheme/content/res/AppIconThemeServices;


# direct methods
.method constructor <init>(Ltheme/content/res/AppIconThemeServices;)V
    .locals 0
    .param p1, "this$0"    # Ltheme/content/res/AppIconThemeServices;

    .prologue
    .line 404
    iput-object p1, p0, Ltheme/content/res/AppIconThemeServices$3;->this$0:Ltheme/content/res/AppIconThemeServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 407
    iget-object v0, p0, Ltheme/content/res/AppIconThemeServices$3;->this$0:Ltheme/content/res/AppIconThemeServices;

    invoke-static {v0}, Ltheme/content/res/AppIconThemeServices;->-wrap1(Ltheme/content/res/AppIconThemeServices;)V

    .line 408
    iget-object v0, p0, Ltheme/content/res/AppIconThemeServices$3;->this$0:Ltheme/content/res/AppIconThemeServices;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Ltheme/content/res/AppIconThemeServices;->-set0(Ltheme/content/res/AppIconThemeServices;J)J

    .line 409
    iget-object v0, p0, Ltheme/content/res/AppIconThemeServices$3;->this$0:Ltheme/content/res/AppIconThemeServices;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ltheme/content/res/AppIconThemeServices;->-wrap3(Ltheme/content/res/AppIconThemeServices;Z)V

    .line 406
    return-void
.end method
