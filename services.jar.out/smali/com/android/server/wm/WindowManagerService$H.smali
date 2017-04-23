.class final Lcom/android/server/wm/WindowManagerService$H;
.super Landroid/os/Handler;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field public static final ADD_STARTING:I = 0x5

.field public static final ALL_WINDOWS_DRAWN:I = 0x21

.field public static final APP_FREEZE_TIMEOUT:I = 0x11

.field public static final APP_TRANSITION_TIMEOUT:I = 0xd

.field public static final BOOT_TIMEOUT:I = 0x17

.field public static final CACHE_STARTING_WINDOW:I = 0x29

.field public static final CHECK_IF_BOOT_ANIMATION_FINISHED:I = 0x25

.field public static final CLIENT_FREEZE_TIMEOUT:I = 0x1e

.field public static final DISABLE_RESIZING_FRAME:I = 0x2a

.field public static final DO_ANIMATION_CALLBACK:I = 0x1a

.field public static final DO_DISPLAY_ADDED:I = 0x1b

.field public static final DO_DISPLAY_CHANGED:I = 0x1d

.field public static final DO_DISPLAY_REMOVED:I = 0x1c

.field public static final DO_TRAVERSAL:I = 0x4

.field public static final DRAG_END_TIMEOUT:I = 0x15

.field public static final DRAG_START_TIMEOUT:I = 0x14

.field public static final ENABLE_SCREEN:I = 0x10

.field public static final FINISHED_STARTING:I = 0x7

.field public static final FORCE_GC:I = 0xf

.field public static final NEW_ANIMATOR_SCALE:I = 0x22

.field public static final NOTIFY_ACTIVITY_DRAWN:I = 0x20

.field public static final PERSIST_ANIMATION_SCALE:I = 0xe

.field public static final REMOVE_STARTING:I = 0x6

.field public static final REPORT_APPLICATION_TOKEN_DRAWN:I = 0x9

.field public static final REPORT_APPLICATION_TOKEN_WINDOWS:I = 0x8

.field public static final REPORT_FOCUS_CHANGE:I = 0x2

.field public static final REPORT_HARD_KEYBOARD_STATUS_CHANGE:I = 0x16

.field public static final REPORT_LOSING_FOCUS:I = 0x3

.field public static final REPORT_WINDOWS_CHANGE:I = 0x13

.field public static final RESET_ANR_MESSAGE:I = 0x26

.field public static final SEND_NEW_CONFIGURATION:I = 0x12

.field public static final SHOW_CIRCULAR_DISPLAY_MASK:I = 0x23

.field public static final SHOW_EMULATOR_DISPLAY_OVERLAY:I = 0x24

.field public static final SHOW_STRICT_MODE_VIOLATION:I = 0x19

.field public static final STOP_BOOT_ANIMATION_COMPLETED:I = 0x2b

.field public static final TAP_OUTSIDE_STACK:I = 0x1f

.field public static final UPDATE_IPO_ROTATION:I = 0x28

.field public static final WAITING_FOR_DRAWN_TIMEOUT:I = 0x18

.field public static final WALLPAPER_DRAW_PENDING_TIMEOUT:I = 0x27

.field public static final WINDOW_FREEZE_TIMEOUT:I = 0xb


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 8175
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 47
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 8233
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_WINDOW_TRACE:Z

    if-eqz v2, :cond_0

    .line 8234
    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessage: entry what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8236
    :cond_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 8846
    :cond_1
    :goto_0
    :pswitch_0
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_WINDOW_TRACE:Z

    if-eqz v2, :cond_2

    .line 8847
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "handleMessage: exit"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8232
    :cond_2
    return-void

    .line 8241
    :pswitch_1
    const/4 v15, 0x0

    .line 8243
    .local v15, "accessibilityController":Lcom/android/server/wm/AccessibilityController;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8245
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_3

    .line 8247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 8250
    .end local v15    # "accessibilityController":Lcom/android/server/wm/AccessibilityController;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v24, v0

    .line 8251
    .local v24, "lastFocus":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v26, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8252
    .local v26, "newFocus":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_4

    monitor-exit v3

    .line 8254
    return-void

    .line 8256
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v26

    iput-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    .line 8257
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Focus moving from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8258
    const-string/jumbo v5, " to "

    .line 8257
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8259
    :cond_5
    if-eqz v26, :cond_6

    if-eqz v24, :cond_6

    .line 8260
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_a

    .end local v24    # "lastFocus":Lcom/android/server/wm/WindowState;
    :cond_6
    :goto_1
    monitor-exit v3

    .line 8273
    if-eqz v15, :cond_7

    .line 8274
    invoke-virtual {v15}, Lcom/android/server/wm/AccessibilityController;->onWindowFocusChangedNotLocked()V

    .line 8279
    :cond_7
    if-eqz v26, :cond_9

    .line 8281
    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Gaining focus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8283
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 8284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v26

    invoke-static {v2, v0}, Lcom/android/server/wm/WindowManagerService;->-wrap9(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;)V

    .line 8287
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    const/4 v3, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v2}, Lcom/android/server/wm/WindowState;->reportFocusChangedSerialized(ZZ)V

    .line 8288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-wrap6(Lcom/android/server/wm/WindowManagerService;)V

    .line 8291
    :cond_9
    if-eqz v24, :cond_1

    .line 8293
    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Losing focus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v2}, Lcom/android/server/wm/WindowState;->reportFocusChangedSerialized(ZZ)V

    goto/16 :goto_0

    .line 8262
    .restart local v24    # "lastFocus":Lcom/android/server/wm/WindowState;
    :cond_a
    :try_start_2
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_FOCUS:Z

    if-eqz v2, :cond_b

    .line 8263
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v4, "Delaying loss of focus..."

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8266
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8267
    const/16 v24, 0x0

    .local v24, "lastFocus":Lcom/android/server/wm/WindowState;
    goto/16 :goto_1

    .line 8243
    .end local v24    # "lastFocus":Lcom/android/server/wm/WindowState;
    .end local v26    # "newFocus":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8301
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8302
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    .line 8303
    .local v25, "losers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v3

    .line 8306
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 8307
    .local v13, "N":I
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_2
    move/from16 v0, v23

    if-ge v0, v13, :cond_1

    .line 8308
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v2, :cond_c

    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Losing delayed focus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8309
    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 8308
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8310
    :cond_c
    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/WindowState;->reportFocusChangedSerialized(ZZ)V

    .line 8307
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .line 8301
    .end local v13    # "N":I
    .end local v23    # "i":I
    .end local v25    # "losers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8315
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8316
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mTraversalScheduled:Z

    .line 8317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-wrap8(Lcom/android/server/wm/WindowManagerService;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_d
    :goto_3
    monitor-exit v3

    goto/16 :goto_0

    .line 8315
    :catchall_2
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8322
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/server/wm/AppWindowToken;

    .line 8323
    .local v46, "wtoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    move-object/from16 v31, v0

    .line 8325
    .local v31, "sd":Lcom/android/server/wm/StartingData;
    if-nez v31, :cond_e

    .line 8327
    return-void

    .line 8330
    :cond_e
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_STARTING_WINDOW:Z

    if-eqz v2, :cond_f

    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Add starting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v46

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8331
    const-string/jumbo v4, ": pkg="

    .line 8330
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8331
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/android/server/wm/StartingData;->pkg:Ljava/lang/String;

    .line 8330
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8334
    :cond_f
    const-string/jumbo v2, "wmAddStarting"

    .line 8333
    const-wide/16 v4, 0x1020

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8335
    const/16 v42, 0x0

    .line 8337
    .local v42, "view":Landroid/view/View;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->isFastStartingWindowSupport()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 8338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v46

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->hasBitmapByToken(Landroid/os/IBinder;)Z

    move-result v2

    .line 8337
    if-eqz v2, :cond_14

    .line 8339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 8340
    move-object/from16 v0, v46

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/android/server/wm/StartingData;->pkg:Ljava/lang/String;

    move-object/from16 v0, v31

    iget v5, v0, Lcom/android/server/wm/StartingData;->theme:I

    move-object/from16 v0, v31

    iget-object v6, v0, Lcom/android/server/wm/StartingData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 8341
    move-object/from16 v0, v31

    iget-object v7, v0, Lcom/android/server/wm/StartingData;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, v31

    iget v8, v0, Lcom/android/server/wm/StartingData;->labelRes:I

    move-object/from16 v0, v31

    iget v9, v0, Lcom/android/server/wm/StartingData;->icon:I

    move-object/from16 v0, v31

    iget v10, v0, Lcom/android/server/wm/StartingData;->logo:I

    .line 8342
    move-object/from16 v0, v31

    iget v11, v0, Lcom/android/server/wm/StartingData;->windowFlags:I

    const/4 v12, 0x0

    .line 8339
    invoke-interface/range {v2 .. v12}, Landroid/view/WindowManagerPolicy;->addFastStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/graphics/Bitmap;)Landroid/view/View;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v42

    .line 8352
    .end local v42    # "view":Landroid/view/View;
    :goto_4
    const-wide/16 v2, 0x1020

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 8354
    if-eqz v42, :cond_1

    .line 8355
    const/4 v14, 0x0

    .line 8357
    .local v14, "abort":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8358
    :try_start_6
    move-object/from16 v0, v46

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-nez v2, :cond_10

    move-object/from16 v0, v46

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-nez v2, :cond_15

    .line 8361
    :cond_10
    move-object/from16 v0, v46

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_12

    .line 8362
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_STARTING_WINDOW:Z

    if-eqz v2, :cond_11

    const-string/jumbo v2, "WindowManager"

    .line 8363
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Aborted starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v46

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8364
    const-string/jumbo v5, ": removed="

    .line 8363
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8364
    move-object/from16 v0, v46

    iget-boolean v5, v0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    .line 8363
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8365
    const-string/jumbo v5, " startingData="

    .line 8363
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8365
    move-object/from16 v0, v46

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 8363
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 8362
    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8366
    :cond_11
    const/4 v2, 0x0

    move-object/from16 v0, v46

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 8367
    const/4 v2, 0x0

    move-object/from16 v0, v46

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 8370
    :cond_12
    const/4 v14, 0x1

    .line 8374
    :goto_5
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_STARTING_WINDOW:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v2, :cond_13

    if-eqz v14, :cond_16

    :cond_13
    :goto_6
    monitor-exit v3

    .line 8381
    if-eqz v14, :cond_1

    .line 8382
    const-string/jumbo v2, "wmAbortStarting"

    const-wide/16 v4, 0x20

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8384
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v46

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v0, v42

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManagerPolicy;->removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 8388
    :goto_7
    const-wide/16 v2, 0x20

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 8344
    .end local v14    # "abort":Z
    .restart local v42    # "view":Landroid/view/View;
    :cond_14
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 8345
    move-object/from16 v0, v46

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/android/server/wm/StartingData;->pkg:Ljava/lang/String;

    move-object/from16 v0, v31

    iget v5, v0, Lcom/android/server/wm/StartingData;->theme:I

    move-object/from16 v0, v31

    iget-object v6, v0, Lcom/android/server/wm/StartingData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 8346
    move-object/from16 v0, v31

    iget-object v7, v0, Lcom/android/server/wm/StartingData;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, v31

    iget v8, v0, Lcom/android/server/wm/StartingData;->labelRes:I

    move-object/from16 v0, v31

    iget v9, v0, Lcom/android/server/wm/StartingData;->icon:I

    .line 8347
    move-object/from16 v0, v31

    iget v10, v0, Lcom/android/server/wm/StartingData;->logo:I

    move-object/from16 v0, v31

    iget v11, v0, Lcom/android/server/wm/StartingData;->windowFlags:I

    .line 8344
    invoke-interface/range {v2 .. v11}, Landroid/view/WindowManagerPolicy;->addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIII)Landroid/view/View;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    move-result-object v42

    .local v42, "view":Landroid/view/View;
    goto/16 :goto_4

    .line 8349
    .local v42, "view":Landroid/view/View;
    :catch_0
    move-exception v21

    .line 8350
    .local v21, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "Exception when adding starting window"

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 8372
    .end local v21    # "e":Ljava/lang/Exception;
    .end local v42    # "view":Landroid/view/View;
    .restart local v14    # "abort":Z
    :cond_15
    :try_start_9
    move-object/from16 v0, v42

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_5

    .line 8357
    :catchall_3
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8374
    :cond_16
    :try_start_a
    const-string/jumbo v2, "WindowManager"

    .line 8375
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Added starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v46

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8376
    const-string/jumbo v5, ": startingWindow="

    .line 8375
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8377
    move-object/from16 v0, v46

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 8375
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8377
    const-string/jumbo v5, " startingView="

    .line 8375
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8378
    move-object/from16 v0, v46

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    .line 8375
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 8374
    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto/16 :goto_6

    .line 8385
    :catch_1
    move-exception v21

    .line 8386
    .restart local v21    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "Exception when removing starting window"

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 8394
    .end local v14    # "abort":Z
    .end local v21    # "e":Ljava/lang/Exception;
    .end local v31    # "sd":Lcom/android/server/wm/StartingData;
    .end local v46    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/server/wm/AppWindowToken;

    .line 8395
    .restart local v46    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    const/16 v39, 0x0

    .line 8396
    .local v39, "token":Landroid/os/IBinder;
    const/16 v42, 0x0

    .line 8397
    .restart local v42    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8398
    :try_start_b
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_STARTING_WINDOW:Z

    if-eqz v2, :cond_17

    const-string/jumbo v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Remove starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v46

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8399
    const-string/jumbo v5, ": startingWindow="

    .line 8398
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8400
    move-object/from16 v0, v46

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 8398
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8400
    const-string/jumbo v5, " startingView="

    .line 8398
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8401
    move-object/from16 v0, v46

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    .line 8398
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8402
    :cond_17
    move-object/from16 v0, v46

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_18

    .line 8403
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    move-object/from16 v42, v0

    .line 8404
    .local v42, "view":Landroid/view/View;
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v39, v0

    .line 8405
    .local v39, "token":Landroid/os/IBinder;
    const/4 v2, 0x0

    move-object/from16 v0, v46

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 8406
    const/4 v2, 0x0

    move-object/from16 v0, v46

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    .line 8407
    const/4 v2, 0x0

    move-object/from16 v0, v46

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 8408
    const/4 v2, 0x0

    move-object/from16 v0, v46

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .end local v39    # "token":Landroid/os/IBinder;
    .end local v42    # "view":Landroid/view/View;
    :cond_18
    monitor-exit v3

    .line 8411
    if-eqz v42, :cond_1

    .line 8412
    const-string/jumbo v2, "wmRemoveStarting"

    const-wide/16 v4, 0x20

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8414
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-interface {v2, v0, v1}, Landroid/view/WindowManagerPolicy;->removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    .line 8418
    :goto_8
    const-wide/16 v2, 0x20

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 8397
    :catchall_4
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8415
    :catch_2
    move-exception v21

    .line 8416
    .restart local v21    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "Exception when removing starting window"

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 8423
    .end local v21    # "e":Ljava/lang/Exception;
    .end local v46    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :pswitch_6
    const/16 v39, 0x0

    .line 8424
    .local v39, "token":Landroid/os/IBinder;
    const/16 v42, 0x0

    .line 8426
    .end local v39    # "token":Landroid/os/IBinder;
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8427
    :try_start_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 8428
    .restart local v13    # "N":I
    if-lez v13, :cond_d

    .line 8431
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    add-int/lit8 v4, v13, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/server/wm/AppWindowToken;

    .line 8433
    .restart local v46    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_STARTING_WINDOW:Z

    if-eqz v2, :cond_19

    const-string/jumbo v2, "WindowManager"

    .line 8434
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Finished starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v46

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8435
    const-string/jumbo v5, ": startingWindow="

    .line 8434
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8435
    move-object/from16 v0, v46

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 8434
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8436
    const-string/jumbo v5, " startingView="

    .line 8434
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8436
    move-object/from16 v0, v46

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    .line 8434
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 8433
    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8438
    :cond_19
    move-object/from16 v0, v46

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    if-nez v2, :cond_1a

    monitor-exit v3

    goto :goto_9

    .line 8442
    :cond_1a
    :try_start_e
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    move-object/from16 v42, v0

    .line 8443
    .restart local v42    # "view":Landroid/view/View;
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v39, v0

    .line 8444
    .local v39, "token":Landroid/os/IBinder;
    const/4 v2, 0x0

    move-object/from16 v0, v46

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 8445
    const/4 v2, 0x0

    move-object/from16 v0, v46

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    .line 8446
    const/4 v2, 0x0

    move-object/from16 v0, v46

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 8447
    const/4 v2, 0x0

    move-object/from16 v0, v46

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    monitor-exit v3

    .line 8451
    const-string/jumbo v2, "wmFinishStarting"

    .line 8450
    const-wide/16 v4, 0x1020

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8453
    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-interface {v2, v0, v1}, Landroid/view/WindowManagerPolicy;->removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    .line 8457
    :goto_a
    const-wide/16 v2, 0x1020

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_9

    .line 8426
    .end local v13    # "N":I
    .end local v39    # "token":Landroid/os/IBinder;
    .end local v42    # "view":Landroid/view/View;
    .end local v46    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :catchall_5
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8454
    .restart local v13    # "N":I
    .restart local v39    # "token":Landroid/os/IBinder;
    .restart local v42    # "view":Landroid/view/View;
    .restart local v46    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :catch_3
    move-exception v21

    .line 8455
    .restart local v21    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "Exception when removing starting window"

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 8462
    .end local v13    # "N":I
    .end local v21    # "e":Ljava/lang/Exception;
    .end local v39    # "token":Landroid/os/IBinder;
    .end local v42    # "view":Landroid/view/View;
    .end local v46    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/server/wm/AppWindowToken;

    .line 8465
    .restart local v46    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :try_start_10
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v2, :cond_1b

    .line 8466
    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Reporting drawn in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v46

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8465
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8467
    :cond_1b
    move-object/from16 v0, v46

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v2}, Landroid/view/IApplicationToken;->windowsDrawn()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_4

    goto/16 :goto_0

    .line 8468
    :catch_4
    move-exception v22

    .local v22, "ex":Landroid/os/RemoteException;
    goto/16 :goto_0

    .line 8473
    .end local v22    # "ex":Landroid/os/RemoteException;
    .end local v46    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/server/wm/AppWindowToken;

    .line 8475
    .restart local v46    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_1d

    const/16 v28, 0x1

    .line 8476
    .local v28, "nowVisible":Z
    :goto_b
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_1e

    const/16 v27, 0x1

    .line 8479
    .local v27, "nowGone":Z
    :goto_c
    :try_start_11
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v2, :cond_1c

    .line 8480
    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Reporting visible in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v46

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8481
    const-string/jumbo v4, " visible="

    .line 8480
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8482
    const-string/jumbo v4, " gone="

    .line 8480
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8479
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8483
    :cond_1c
    if-eqz v28, :cond_1f

    .line 8484
    move-object/from16 v0, v46

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v2}, Landroid/view/IApplicationToken;->windowsVisible()V

    goto/16 :goto_0

    .line 8488
    :catch_5
    move-exception v22

    .restart local v22    # "ex":Landroid/os/RemoteException;
    goto/16 :goto_0

    .line 8475
    .end local v22    # "ex":Landroid/os/RemoteException;
    .end local v27    # "nowGone":Z
    .end local v28    # "nowVisible":Z
    :cond_1d
    const/16 v28, 0x0

    .restart local v28    # "nowVisible":Z
    goto :goto_b

    .line 8476
    :cond_1e
    const/16 v27, 0x0

    .restart local v27    # "nowGone":Z
    goto :goto_c

    .line 8486
    :cond_1f
    move-object/from16 v0, v46

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v2}, Landroid/view/IApplicationToken;->windowsGone()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_5

    goto/16 :goto_0

    .line 8494
    .end local v27    # "nowGone":Z
    .end local v28    # "nowVisible":Z
    .end local v46    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8495
    :try_start_12
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v4, "Window freeze timeout expired."

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8496
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x2

    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->-set3(Lcom/android/server/wm/WindowManagerService;I)I

    .line 8497
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v45

    .line 8498
    .local v45, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wm/WindowList;->size()I

    move-result v23

    .line 8499
    .restart local v23    # "i":I
    :cond_20
    :goto_d
    if-lez v23, :cond_21

    .line 8500
    add-int/lit8 v23, v23, -0x1

    .line 8501
    move-object/from16 v0, v45

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/server/wm/WindowState;

    .line 8502
    .local v43, "w":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v43

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v2, :cond_20

    .line 8503
    const/4 v2, 0x0

    move-object/from16 v0, v43

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    .line 8504
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 8505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-wide v6, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    .line 8504
    sub-long/2addr v4, v6

    long-to-int v2, v4

    move-object/from16 v0, v43

    iput v2, v0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    .line 8506
    const-string/jumbo v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Force clearing orientation change: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    goto :goto_d

    .line 8494
    .end local v23    # "i":I
    .end local v43    # "w":Lcom/android/server/wm/WindowState;
    .end local v45    # "windows":Lcom/android/server/wm/WindowList;
    :catchall_6
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8509
    .restart local v23    # "i":I
    .restart local v45    # "windows":Lcom/android/server/wm/WindowList;
    :cond_21
    :try_start_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-wrap8(Lcom/android/server/wm/WindowManagerService;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    goto/16 :goto_3

    .line 8515
    .end local v23    # "i":I
    .end local v45    # "windows":Lcom/android/server/wm/WindowList;
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8516
    :try_start_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v2

    if-nez v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 8517
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    .line 8520
    :cond_22
    const-string/jumbo v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "*** APP TRANSITION TIMEOUT. isTransitionSet()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8521
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v5}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v5

    .line 8520
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8522
    const-string/jumbo v5, " mOpeningApps.size()="

    .line 8520
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8522
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    .line 8520
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8523
    const-string/jumbo v5, " mClosingApps.size()="

    .line 8520
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8523
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    .line 8520
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->setTimeout()V

    .line 8525
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-wrap8(Lcom/android/server/wm/WindowManagerService;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    goto/16 :goto_3

    .line 8515
    :catchall_7
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8532
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 8533
    const-string/jumbo v3, "window_animation_scale"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    .line 8532
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 8534
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 8535
    const-string/jumbo v3, "transition_animation_scale"

    .line 8536
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    .line 8534
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 8537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 8538
    const-string/jumbo v3, "animator_duration_scale"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    .line 8537
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    goto/16 :goto_0

    .line 8543
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8546
    :try_start_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    if-nez v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimationScheduled:Z

    if-eqz v2, :cond_24

    .line 8549
    :cond_23
    const-wide/16 v4, 0x7d0

    const/16 v2, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    monitor-exit v3

    .line 8550
    return-void

    .line 8554
    :cond_24
    :try_start_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    if-eqz v2, :cond_25

    monitor-exit v3

    .line 8555
    return-void

    :cond_25
    monitor-exit v3

    .line 8558
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    goto/16 :goto_0

    .line 8543
    :catchall_8
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8563
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    goto/16 :goto_0

    .line 8568
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8569
    :try_start_17
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v4, "App freeze timeout expired."

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x2

    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->-set3(Lcom/android/server/wm/WindowManagerService;I)I

    .line 8571
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v29

    .line 8572
    .local v29, "numStacks":I
    const/16 v35, 0x0

    .local v35, "stackNdx":I
    :goto_e
    move/from16 v0, v35

    move/from16 v1, v29

    if-ge v0, v1, :cond_d

    .line 8573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    move/from16 v0, v35

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/server/wm/TaskStack;

    .line 8574
    .local v33, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v37

    .line 8575
    .local v37, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v36, v2, -0x1

    .local v36, "taskNdx":I
    :goto_f
    if-ltz v36, :cond_28

    .line 8576
    move-object/from16 v0, v37

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    iget-object v0, v2, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    move-object/from16 v41, v0

    .line 8577
    .local v41, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual/range {v41 .. v41}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    add-int/lit8 v40, v2, -0x1

    .local v40, "tokenNdx":I
    :goto_10
    if-ltz v40, :cond_27

    .line 8578
    move-object/from16 v0, v41

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/server/wm/AppWindowToken;

    .line 8579
    .local v38, "tok":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v38

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-eqz v2, :cond_26

    .line 8580
    const-string/jumbo v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Force clearing freeze: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8581
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, v38

    invoke-virtual {v2, v0, v4, v5}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    .line 8577
    :cond_26
    add-int/lit8 v40, v40, -0x1

    goto :goto_10

    .line 8575
    .end local v38    # "tok":Lcom/android/server/wm/AppWindowToken;
    :cond_27
    add-int/lit8 v36, v36, -0x1

    goto :goto_f

    .line 8572
    .end local v40    # "tokenNdx":I
    .end local v41    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_28
    add-int/lit8 v35, v35, 0x1

    goto :goto_e

    .line 8568
    .end local v29    # "numStacks":I
    .end local v33    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v35    # "stackNdx":I
    .end local v36    # "taskNdx":I
    .end local v37    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    :catchall_9
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8591
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8592
    :try_start_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    if-eqz v2, :cond_d

    .line 8593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    .line 8594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v4, "client-timeout"

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 8595
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-wrap12(Lcom/android/server/wm/WindowManagerService;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    goto/16 :goto_3

    .line 8591
    :catchall_a
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8602
    :pswitch_10
    const/16 v2, 0x12

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 8603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    goto/16 :goto_0

    .line 8608
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-get4(Lcom/android/server/wm/WindowManagerService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8610
    :try_start_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->-set2(Lcom/android/server/wm/WindowManagerService;Z)Z
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    monitor-exit v3

    .line 8612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-wrap7(Lcom/android/server/wm/WindowManagerService;)V

    goto/16 :goto_0

    .line 8609
    :catchall_b
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8618
    :pswitch_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Landroid/os/IBinder;

    .line 8619
    .local v44, "win":Landroid/os/IBinder;
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_DRAG:Z

    if-eqz v2, :cond_29

    .line 8620
    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Timeout starting drag by win "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v44

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8622
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8624
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_d

    .line 8625
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->unregister()V

    .line 8626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 8627
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->reset()V

    .line 8628
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_c

    goto/16 :goto_3

    .line 8622
    :catchall_c
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8635
    .end local v44    # "win":Landroid/os/IBinder;
    :pswitch_13
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Landroid/os/IBinder;

    .line 8636
    .restart local v44    # "win":Landroid/os/IBinder;
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_DRAG:Z

    if-eqz v2, :cond_2a

    .line 8637
    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Timeout ending drag to win "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v44

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8639
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8641
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_d

    .line 8642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 8643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->endDragLw()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_d

    goto/16 :goto_3

    .line 8639
    :catchall_d
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8650
    .end local v44    # "win":Landroid/os/IBinder;
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->notifyHardKeyboardStatusChange()V

    goto/16 :goto_0

    .line 8655
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->performBootTimeout()V

    goto/16 :goto_0

    .line 8660
    :pswitch_16
    const/16 v18, 0x0

    .line 8661
    .local v18, "callback":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8662
    :try_start_1c
    const-string/jumbo v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Timeout waiting for drawn: undrawn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8663
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 8664
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    .line 8665
    .local v18, "callback":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_e

    monitor-exit v3

    .line 8667
    if-eqz v18, :cond_1

    .line 8668
    invoke-interface/range {v18 .. v18}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 8661
    .end local v18    # "callback":Ljava/lang/Runnable;
    :catchall_e
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8674
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-static {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->-wrap10(Lcom/android/server/wm/WindowManagerService;II)V

    goto/16 :goto_0

    .line 8679
    :pswitch_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2b

    const/4 v2, 0x1

    :goto_11
    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowManagerService;->showCircularMask(Z)V

    goto/16 :goto_0

    :cond_2b
    const/4 v2, 0x0

    goto :goto_11

    .line 8684
    :pswitch_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->showEmulatorDisplayOverlay()V

    goto/16 :goto_0

    .line 8690
    :pswitch_1a
    :try_start_1d
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IRemoteCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_6

    goto/16 :goto_0

    .line 8691
    :catch_6
    move-exception v20

    .local v20, "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    .line 8697
    .end local v20    # "e":Landroid/os/RemoteException;
    :pswitch_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->handleDisplayAdded(I)V

    goto/16 :goto_0

    .line 8701
    :pswitch_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8702
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->-wrap4(Lcom/android/server/wm/WindowManagerService;I)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_f

    goto/16 :goto_3

    .line 8701
    :catchall_f
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8707
    :pswitch_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8708
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->-wrap3(Lcom/android/server/wm/WindowManagerService;I)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_10

    goto/16 :goto_3

    .line 8707
    :catchall_10
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8714
    :pswitch_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8715
    :try_start_20
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/DisplayContent;->stackIdFromPoint(II)I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_11

    move-result v34

    .local v34, "stackId":I
    monitor-exit v3

    .line 8719
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_2c

    if-nez v34, :cond_2c

    .line 8720
    return-void

    .line 8714
    .end local v34    # "stackId":I
    :catchall_11
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8724
    .restart local v34    # "stackId":I
    :cond_2c
    if-ltz v34, :cond_1

    .line 8726
    :try_start_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    move/from16 v0, v34

    invoke-interface {v2, v0}, Landroid/app/IActivityManager;->setFocusedStack(I)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_21} :catch_7

    goto/16 :goto_0

    .line 8727
    :catch_7
    move-exception v20

    .restart local v20    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    .line 8734
    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v34    # "stackId":I
    :pswitch_1f
    :try_start_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    invoke-interface {v3, v2}, Landroid/app/IActivityManager;->notifyActivityDrawn(Landroid/os/IBinder;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_22} :catch_8

    goto/16 :goto_0

    .line 8735
    :catch_8
    move-exception v20

    .restart local v20    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    .line 8740
    .end local v20    # "e":Landroid/os/RemoteException;
    :pswitch_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8741
    :try_start_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    .line 8742
    .restart local v18    # "callback":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_12

    monitor-exit v3

    .line 8744
    if-eqz v18, :cond_2d

    .line 8745
    invoke-interface/range {v18 .. v18}, Ljava/lang/Runnable;->run()V

    .line 8749
    .end local v18    # "callback":Ljava/lang/Runnable;
    :cond_2d
    :pswitch_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    move-result v30

    .line 8750
    .local v30, "scale":F
    invoke-static/range {v30 .. v30}, Landroid/animation/ValueAnimator;->setDurationScale(F)V

    .line 8751
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Lcom/android/server/wm/Session;

    .line 8752
    .local v32, "session":Lcom/android/server/wm/Session;
    if-eqz v32, :cond_2e

    .line 8754
    :try_start_24
    move-object/from16 v0, v32

    iget-object v2, v0, Lcom/android/server/wm/Session;->mCallback:Landroid/view/IWindowSessionCallback;

    move/from16 v0, v30

    invoke-interface {v2, v0}, Landroid/view/IWindowSessionCallback;->onAnimatorScaleChanged(F)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_24} :catch_9

    goto/16 :goto_0

    .line 8755
    :catch_9
    move-exception v20

    .restart local v20    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    .line 8740
    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v30    # "scale":F
    .end local v32    # "session":Lcom/android/server/wm/Session;
    :catchall_12
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8759
    .restart local v30    # "scale":F
    .restart local v32    # "session":Lcom/android/server/wm/Session;
    :cond_2e
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 8760
    .local v19, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IWindowSessionCallback;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8761
    const/16 v23, 0x0

    .restart local v23    # "i":I
    :goto_12
    :try_start_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    move/from16 v0, v23

    if-ge v0, v2, :cond_2f

    .line 8762
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Session;

    iget-object v2, v2, Lcom/android/server/wm/Session;->mCallback:Landroid/view/IWindowSessionCallback;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_13

    .line 8761
    add-int/lit8 v23, v23, 0x1

    goto :goto_12

    :cond_2f
    monitor-exit v3

    .line 8766
    const/16 v23, 0x0

    :goto_13
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v23

    if-ge v0, v2, :cond_1

    .line 8768
    :try_start_26
    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/IWindowSessionCallback;

    move/from16 v0, v30

    invoke-interface {v2, v0}, Landroid/view/IWindowSessionCallback;->onAnimatorScaleChanged(F)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_26} :catch_b

    .line 8766
    :goto_14
    add-int/lit8 v23, v23, 0x1

    goto :goto_13

    .line 8760
    :catchall_13
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8777
    .end local v19    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IWindowSessionCallback;>;"
    .end local v23    # "i":I
    .end local v30    # "scale":F
    .end local v32    # "session":Lcom/android/server/wm/Session;
    :pswitch_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8778
    :try_start_27
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_BOOT:Z

    if-eqz v2, :cond_30

    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v4, "CHECK_IF_BOOT_ANIMATION_FINISHED:"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8779
    :cond_30
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-wrap0(Lcom/android/server/wm/WindowManagerService;)Z
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_14

    move-result v17

    .local v17, "bootAnimationComplete":Z
    monitor-exit v3

    .line 8781
    if-eqz v17, :cond_1

    .line 8782
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    goto/16 :goto_0

    .line 8777
    .end local v17    # "bootAnimationComplete":Z
    :catchall_14
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8788
    :pswitch_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8789
    :try_start_28
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_BOOT:Z

    if-eqz v2, :cond_31

    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v4, "STOP_BOOT_ANIMATION_COMPLETED:"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8790
    :cond_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-wrap11(Lcom/android/server/wm/WindowManagerService;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_15

    goto/16 :goto_3

    .line 8788
    :catchall_15
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8796
    :pswitch_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8797
    :try_start_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mLastANRState:Ljava/lang/String;
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_16

    goto/16 :goto_3

    .line 8796
    :catchall_16
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8802
    :pswitch_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8803
    :try_start_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperDrawState:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_d

    .line 8804
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x2

    iput v4, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperDrawState:I

    .line 8805
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-nez v2, :cond_32

    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_WALLPAPER:Z

    if-eqz v2, :cond_33

    :cond_32
    const-string/jumbo v2, "WindowManager"

    .line 8806
    const-string/jumbo v4, "*** WALLPAPER DRAW TIMEOUT"

    .line 8805
    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8807
    :cond_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-wrap8(Lcom/android/server/wm/WindowManagerService;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_17

    goto/16 :goto_3

    .line 8802
    :catchall_17
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8815
    :pswitch_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/wm/WindowManagerService;->mIsUpdateIpoRotation:Z

    .line 8816
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->updateRotation(ZZ)V

    goto/16 :goto_0

    .line 8823
    :pswitch_27
    :try_start_2b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/server/wm/AppWindowToken;

    .line 8824
    .local v16, "atoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->isFastStartingWindowSupport()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8825
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->isCacheStartingWindow()Z

    move-result v2

    .line 8824
    if-eqz v2, :cond_1

    .line 8826
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_1

    .line 8827
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v2, :cond_1

    .line 8828
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 8829
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isFastStartingWindow()Z

    move-result v2

    if-nez v2, :cond_1

    .line 8830
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    if-nez v2, :cond_1

    .line 8831
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->hasBitmapByToken(Landroid/os/IBinder;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8832
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 8833
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    .line 8832
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowStateAnimator;->doCacheBitmap(Landroid/view/View;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_a

    goto/16 :goto_0

    .line 8835
    .end local v16    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :catch_a
    move-exception v21

    .line 8836
    .restart local v21    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "Fast starting window doesn\'t catch."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 8841
    .end local v21    # "e":Ljava/lang/Exception;
    :pswitch_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-wrap13(Lcom/android/server/wm/WindowManagerService;)V

    goto/16 :goto_0

    .line 8769
    .restart local v19    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IWindowSessionCallback;>;"
    .restart local v23    # "i":I
    .restart local v30    # "scale":F
    .restart local v32    # "session":Lcom/android/server/wm/Session;
    :catch_b
    move-exception v20

    .restart local v20    # "e":Landroid/os/RemoteException;
    goto/16 :goto_14

    .line 8236
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_f
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_18
        :pswitch_19
        :pswitch_22
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_23
    .end packed-switch
.end method
