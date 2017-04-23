.class Lcom/android/server/policy/PhoneWindowManager$23;
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
    .line 8138
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$23;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x52

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 8141
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$23;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->-wrap18(Lcom/android/server/policy/PhoneWindowManager;II)V

    .line 8142
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$23;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0, v1, v3}, Lcom/android/server/policy/PhoneWindowManager;->-wrap18(Lcom/android/server/policy/PhoneWindowManager;II)V

    .line 8144
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$23;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mAppSwitchLongPress:Z

    .line 8145
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$23;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 8139
    return-void
.end method
