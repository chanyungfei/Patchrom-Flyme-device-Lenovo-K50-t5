.class Lcom/android/server/policy/PhoneWindowManager$18;
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
    .line 8048
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 8050
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->-wrap23(Lcom/android/server/policy/PhoneWindowManager;Z)V

    .line 8052
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->-set8(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    .line 8049
    return-void
.end method
