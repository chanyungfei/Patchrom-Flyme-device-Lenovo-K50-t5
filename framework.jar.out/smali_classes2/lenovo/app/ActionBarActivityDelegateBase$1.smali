.class Llenovo/app/ActionBarActivityDelegateBase$1;
.super Ljava/lang/Object;
.source "ActionBarActivityDelegateBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/app/ActionBarActivityDelegateBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/app/ActionBarActivityDelegateBase;


# direct methods
.method constructor <init>(Llenovo/app/ActionBarActivityDelegateBase;)V
    .locals 0
    .param p1, "this$0"    # Llenovo/app/ActionBarActivityDelegateBase;

    .prologue
    .line 114
    iput-object p1, p0, Llenovo/app/ActionBarActivityDelegateBase$1;->this$0:Llenovo/app/ActionBarActivityDelegateBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 117
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase$1;->this$0:Llenovo/app/ActionBarActivityDelegateBase;

    invoke-static {v0}, Llenovo/app/ActionBarActivityDelegateBase;->-get1(Llenovo/app/ActionBarActivityDelegateBase;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase$1;->this$0:Llenovo/app/ActionBarActivityDelegateBase;

    invoke-static {v0, v2}, Llenovo/app/ActionBarActivityDelegateBase;->-wrap6(Llenovo/app/ActionBarActivityDelegateBase;I)V

    .line 120
    :cond_0
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase$1;->this$0:Llenovo/app/ActionBarActivityDelegateBase;

    invoke-static {v0}, Llenovo/app/ActionBarActivityDelegateBase;->-get1(Llenovo/app/ActionBarActivityDelegateBase;)I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase$1;->this$0:Llenovo/app/ActionBarActivityDelegateBase;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Llenovo/app/ActionBarActivityDelegateBase;->-wrap6(Llenovo/app/ActionBarActivityDelegateBase;I)V

    .line 123
    :cond_1
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase$1;->this$0:Llenovo/app/ActionBarActivityDelegateBase;

    invoke-static {v0, v2}, Llenovo/app/ActionBarActivityDelegateBase;->-set1(Llenovo/app/ActionBarActivityDelegateBase;Z)Z

    .line 124
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase$1;->this$0:Llenovo/app/ActionBarActivityDelegateBase;

    invoke-static {v0, v2}, Llenovo/app/ActionBarActivityDelegateBase;->-set0(Llenovo/app/ActionBarActivityDelegateBase;I)I

    .line 116
    return-void
.end method
