.class Lcom/android/server/display/autobrightness/StateManager$DarkState;
.super Lcom/android/server/display/autobrightness/StateManager$StateInterface;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/autobrightness/StateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DarkState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/autobrightness/StateManager;


# direct methods
.method public constructor <init>(Lcom/android/server/display/autobrightness/StateManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/display/autobrightness/StateManager;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/server/display/autobrightness/StateManager$DarkState;->this$0:Lcom/android/server/display/autobrightness/StateManager;

    .line 255
    sget-object v0, Lcom/android/server/display/autobrightness/StateManager$STATE;->STATE_DARK:Lcom/android/server/display/autobrightness/StateManager$STATE;

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/autobrightness/StateManager$StateInterface;-><init>(Lcom/android/server/display/autobrightness/StateManager;Lcom/android/server/display/autobrightness/StateManager$STATE;)V

    .line 254
    return-void
.end method


# virtual methods
.method public preProcess(F)Z
    .locals 5
    .param p1, "envLightLux"    # F

    .prologue
    const/4 v4, 0x0

    .line 260
    iget-object v0, p0, Lcom/android/server/display/autobrightness/StateManager$DarkState;->this$0:Lcom/android/server/display/autobrightness/StateManager;

    invoke-static {v0}, Lcom/android/server/display/autobrightness/StateManager;->-wrap0(Lcom/android/server/display/autobrightness/StateManager;)F

    move-result v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/server/display/autobrightness/StateManager$DarkState;->this$0:Lcom/android/server/display/autobrightness/StateManager;

    sget-object v1, Lcom/android/server/display/autobrightness/StateManager$STATE;->STATE_BRIGHT:Lcom/android/server/display/autobrightness/StateManager$STATE;

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/server/display/autobrightness/StateManager;->-wrap4(Lcom/android/server/display/autobrightness/StateManager;Lcom/android/server/display/autobrightness/StateManager$STATE;JF)V

    .line 263
    return v4

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/autobrightness/StateManager$DarkState;->this$0:Lcom/android/server/display/autobrightness/StateManager;

    invoke-static {v0}, Lcom/android/server/display/autobrightness/StateManager;->-wrap1(Lcom/android/server/display/autobrightness/StateManager;)F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/android/server/display/autobrightness/StateManager$DarkState;->this$0:Lcom/android/server/display/autobrightness/StateManager;

    invoke-static {v0}, Lcom/android/server/display/autobrightness/StateManager;->-wrap2(Lcom/android/server/display/autobrightness/StateManager;)V

    .line 266
    return v4

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/autobrightness/StateManager$DarkState;->this$0:Lcom/android/server/display/autobrightness/StateManager;

    invoke-static {v0}, Lcom/android/server/display/autobrightness/StateManager;->-wrap2(Lcom/android/server/display/autobrightness/StateManager;)V

    .line 269
    return v4
.end method
