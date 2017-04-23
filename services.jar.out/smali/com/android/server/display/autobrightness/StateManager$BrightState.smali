.class Lcom/android/server/display/autobrightness/StateManager$BrightState;
.super Lcom/android/server/display/autobrightness/StateManager$StateInterface;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/autobrightness/StateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/autobrightness/StateManager;


# direct methods
.method public constructor <init>(Lcom/android/server/display/autobrightness/StateManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/display/autobrightness/StateManager;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/server/display/autobrightness/StateManager$BrightState;->this$0:Lcom/android/server/display/autobrightness/StateManager;

    .line 215
    sget-object v0, Lcom/android/server/display/autobrightness/StateManager$STATE;->STATE_BRIGHT:Lcom/android/server/display/autobrightness/StateManager$STATE;

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/autobrightness/StateManager$StateInterface;-><init>(Lcom/android/server/display/autobrightness/StateManager;Lcom/android/server/display/autobrightness/StateManager$STATE;)V

    .line 214
    return-void
.end method


# virtual methods
.method public preProcess(F)Z
    .locals 5
    .param p1, "envLightLux"    # F

    .prologue
    const/4 v4, 0x1

    .line 220
    iget-object v0, p0, Lcom/android/server/display/autobrightness/StateManager$BrightState;->this$0:Lcom/android/server/display/autobrightness/StateManager;

    invoke-static {v0}, Lcom/android/server/display/autobrightness/StateManager;->-wrap0(Lcom/android/server/display/autobrightness/StateManager;)F

    move-result v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/server/display/autobrightness/StateManager$BrightState;->this$0:Lcom/android/server/display/autobrightness/StateManager;

    invoke-static {v0}, Lcom/android/server/display/autobrightness/StateManager;->-wrap2(Lcom/android/server/display/autobrightness/StateManager;)V

    .line 222
    return v4

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/autobrightness/StateManager$BrightState;->this$0:Lcom/android/server/display/autobrightness/StateManager;

    invoke-static {v0}, Lcom/android/server/display/autobrightness/StateManager;->-wrap1(Lcom/android/server/display/autobrightness/StateManager;)F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/android/server/display/autobrightness/StateManager$BrightState;->this$0:Lcom/android/server/display/autobrightness/StateManager;

    sget-object v1, Lcom/android/server/display/autobrightness/StateManager$STATE;->STATE_DARK:Lcom/android/server/display/autobrightness/StateManager$STATE;

    const-wide/16 v2, 0xbb8

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/server/display/autobrightness/StateManager;->-wrap4(Lcom/android/server/display/autobrightness/StateManager;Lcom/android/server/display/autobrightness/StateManager$STATE;JF)V

    .line 225
    const/4 v0, 0x0

    return v0

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/autobrightness/StateManager$BrightState;->this$0:Lcom/android/server/display/autobrightness/StateManager;

    sget-object v1, Lcom/android/server/display/autobrightness/StateManager$STATE;->STATE_DIM:Lcom/android/server/display/autobrightness/StateManager$STATE;

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/server/display/autobrightness/StateManager;->-wrap4(Lcom/android/server/display/autobrightness/StateManager;Lcom/android/server/display/autobrightness/StateManager$STATE;JF)V

    .line 228
    return v4
.end method
