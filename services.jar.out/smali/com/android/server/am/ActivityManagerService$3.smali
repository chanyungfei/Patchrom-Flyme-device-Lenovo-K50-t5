.class Lcom/android/server/am/ActivityManagerService$3;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 23875
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 23878
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->-get1(Lcom/android/server/am/ActivityManagerService;)Lcom/lenovo/datamining/hook/PropertyChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/lenovo/datamining/hook/PropertyChangeListener;->onPropertyChange(Landroid/content/Context;)V

    .line 23877
    return-void
.end method
