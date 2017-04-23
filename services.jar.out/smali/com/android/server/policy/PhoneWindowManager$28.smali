.class Lcom/android/server/policy/PhoneWindowManager$28;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    .line 8740
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 8742
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "in onPointerEvent huangzh3 gsh timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8743
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->-set1(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    .line 8741
    return-void
.end method
