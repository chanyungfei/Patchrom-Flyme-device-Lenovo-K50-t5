.class final Lcom/android/server/policy/PhoneWindowManager$SingleHandSettingObserver;
.super Landroid/database/ContentObserver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SingleHandSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 9045
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$SingleHandSettingObserver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 9046
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 9045
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 9052
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$SingleHandSettingObserver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-wrap26(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 9051
    return-void
.end method
