.class Ltheme/content/res/AppIconThemeServices$2;
.super Ljava/lang/Object;
.source "AppIconThemeServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltheme/content/res/AppIconThemeServices;->handleThemeChange(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltheme/content/res/AppIconThemeServices;

.field final synthetic val$themeId:Ljava/lang/String;

.field final synthetic val$themePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltheme/content/res/AppIconThemeServices;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Ltheme/content/res/AppIconThemeServices;
    .param p2, "val$themePath"    # Ljava/lang/String;
    .param p3, "val$themeId"    # Ljava/lang/String;

    .prologue
    .line 357
    iput-object p1, p0, Ltheme/content/res/AppIconThemeServices$2;->this$0:Ltheme/content/res/AppIconThemeServices;

    iput-object p2, p0, Ltheme/content/res/AppIconThemeServices$2;->val$themePath:Ljava/lang/String;

    iput-object p3, p0, Ltheme/content/res/AppIconThemeServices$2;->val$themeId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 360
    iget-object v0, p0, Ltheme/content/res/AppIconThemeServices$2;->this$0:Ltheme/content/res/AppIconThemeServices;

    invoke-static {v0}, Ltheme/content/res/AppIconThemeServices;->-wrap1(Ltheme/content/res/AppIconThemeServices;)V

    .line 361
    iget-object v0, p0, Ltheme/content/res/AppIconThemeServices$2;->this$0:Ltheme/content/res/AppIconThemeServices;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Ltheme/content/res/AppIconThemeServices;->-set0(Ltheme/content/res/AppIconThemeServices;J)J

    .line 362
    iget-object v0, p0, Ltheme/content/res/AppIconThemeServices$2;->this$0:Ltheme/content/res/AppIconThemeServices;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ltheme/content/res/AppIconThemeServices;->-wrap3(Ltheme/content/res/AppIconThemeServices;Z)V

    .line 364
    iget-object v0, p0, Ltheme/content/res/AppIconThemeServices$2;->this$0:Ltheme/content/res/AppIconThemeServices;

    iget-object v1, p0, Ltheme/content/res/AppIconThemeServices$2;->val$themePath:Ljava/lang/String;

    iget-object v2, p0, Ltheme/content/res/AppIconThemeServices$2;->val$themeId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Ltheme/content/res/AppIconThemeServices;->-wrap2(Ltheme/content/res/AppIconThemeServices;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    return-void
.end method
