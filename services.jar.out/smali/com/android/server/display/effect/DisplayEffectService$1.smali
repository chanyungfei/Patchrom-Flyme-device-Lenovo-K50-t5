.class Lcom/android/server/display/effect/DisplayEffectService$1;
.super Ljava/lang/Object;
.source "DisplayEffectService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/effect/DisplayEffectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/effect/DisplayEffectService;


# direct methods
.method constructor <init>(Lcom/android/server/display/effect/DisplayEffectService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/effect/DisplayEffectService;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/server/display/effect/DisplayEffectService$1;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService$1;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    invoke-static {v0}, Lcom/android/server/display/effect/DisplayEffectService;->-wrap7(Lcom/android/server/display/effect/DisplayEffectService;)V

    .line 77
    return-void
.end method
