.class final Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WindowsForAccessibilityCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 3136
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTypeForWindowManagerWindowType(I)I
    .locals 1
    .param p1, "windowType"    # I

    .prologue
    .line 3200
    sparse-switch p1, :sswitch_data_0

    .line 3240
    const/4 v0, -0x1

    return v0

    .line 3212
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 3217
    :sswitch_1
    const/4 v0, 0x2

    return v0

    .line 3232
    :sswitch_2
    const/4 v0, 0x3

    return v0

    .line 3236
    :sswitch_3
    const/4 v0, 0x4

    return v0

    .line 3200
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_0
        0x3eb -> :sswitch_0
        0x3ed -> :sswitch_0
        0x7d0 -> :sswitch_2
        0x7d1 -> :sswitch_2
        0x7d2 -> :sswitch_0
        0x7d3 -> :sswitch_2
        0x7d5 -> :sswitch_0
        0x7d6 -> :sswitch_2
        0x7d7 -> :sswitch_0
        0x7d8 -> :sswitch_2
        0x7d9 -> :sswitch_2
        0x7da -> :sswitch_2
        0x7db -> :sswitch_1
        0x7dc -> :sswitch_1
        0x7de -> :sswitch_2
        0x7e1 -> :sswitch_2
        0x7e3 -> :sswitch_2
        0x7e4 -> :sswitch_2
        0x7e8 -> :sswitch_2
        0x7f0 -> :sswitch_3
    .end sparse-switch
.end method

.method private populateReportedWindow(Landroid/view/WindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 10
    .param p1, "window"    # Landroid/view/WindowInfo;

    .prologue
    const/4 v9, 0x0

    .line 3167
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v8, p1, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-static {v7, v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap14(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;)I

    move-result v6

    .line 3168
    .local v6, "windowId":I
    if-gez v6, :cond_0

    .line 3169
    return-object v9

    .line 3172
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v5

    .line 3174
    .local v5, "reportedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityWindowInfo;->setId(I)V

    .line 3175
    iget v7, p1, Landroid/view/WindowInfo;->type:I

    invoke-direct {p0, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->getTypeForWindowManagerWindowType(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->setType(I)V

    .line 3176
    iget v7, p1, Landroid/view/WindowInfo;->layer:I

    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->setLayer(I)V

    .line 3177
    iget-boolean v7, p1, Landroid/view/WindowInfo;->focused:Z

    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->setFocused(Z)V

    .line 3178
    iget-object v7, p1, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 3180
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v8, p1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-static {v7, v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap14(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;)I

    move-result v4

    .line 3181
    .local v4, "parentId":I
    if-ltz v4, :cond_1

    .line 3182
    invoke-virtual {v5, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->setParentId(I)V

    .line 3185
    :cond_1
    iget-object v7, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v7, :cond_3

    .line 3186
    iget-object v7, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    .line 3187
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 3188
    iget-object v7, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 3189
    .local v2, "childToken":Landroid/os/IBinder;
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v7, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap14(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;)I

    move-result v1

    .line 3190
    .local v1, "childId":I
    if-ltz v1, :cond_2

    .line 3191
    invoke-virtual {v5, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->addChild(I)V

    .line 3187
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3196
    .end local v0    # "childCount":I
    .end local v1    # "childId":I
    .end local v2    # "childToken":Landroid/os/IBinder;
    .end local v3    # "i":I
    :cond_3
    return-object v5
.end method


# virtual methods
.method public onWindowsForAccessibilityChanged(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/WindowInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3141
    .local p1, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get8(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 3143
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3144
    .local v4, "reportedWindows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 3145
    .local v2, "receivedWindowCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 3146
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowInfo;

    .line 3147
    .local v1, "receivedWindow":Landroid/view/WindowInfo;
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->populateReportedWindow(Landroid/view/WindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v3

    .line 3149
    .local v3, "reportedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-eqz v3, :cond_0

    .line 3150
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3145
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3159
    .end local v1    # "receivedWindow":Landroid/view/WindowInfo;
    .end local v3    # "reportedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_1
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get10(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->updateWindowsLocked(Ljava/util/List;)V

    .line 3162
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get8(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 3140
    return-void

    .line 3141
    .end local v0    # "i":I
    .end local v2    # "receivedWindowCount":I
    .end local v4    # "reportedWindows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method
