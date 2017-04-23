.class Lcom/android/server/InputMethodManagerService$SwitchImeTask;
.super Ljava/util/TimerTask;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchImeTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 4147
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/InputMethodManagerService;Lcom/android/server/InputMethodManagerService$SwitchImeTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService$SwitchImeTask;-><init>(Lcom/android/server/InputMethodManagerService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 4149
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v8, v7, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 4150
    :try_start_0
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v7}, Lcom/android/server/InputMethodManagerService;->-get1(Lcom/android/server/InputMethodManagerService;)I

    move-result v7

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v9}, Lcom/android/server/InputMethodManagerService;->-get0(Lcom/android/server/InputMethodManagerService;)I

    move-result v9

    if-ne v7, v9, :cond_9

    .line 4151
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v7}, Lcom/android/server/InputMethodManagerService;->-get7(Lcom/android/server/InputMethodManagerService;)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    move-result-object v7

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v10, v11}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->getSortedInputMethodAndSubtypeListLocked(ZZZ)Ljava/util/List;

    move-result-object v3

    .line 4152
    .local v3, "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v7, v7, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v9, v9, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 4153
    .local v0, "currentMethod":Landroid/view/inputmethod/InputMethodInfo;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-gt v7, v12, :cond_1

    .line 4154
    sget-boolean v7, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 4155
    const-string/jumbo v7, "InputMethodManagerService"

    const-string/jumbo v9, "Only one IME within list, ignored"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v8

    .line 4156
    return-void

    .line 4158
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    .line 4159
    .local v6, "listSize":I
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v7}, Lcom/android/server/InputMethodManagerService;->-get2(Lcom/android/server/InputMethodManagerService;)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 4160
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v7}, Lcom/android/server/InputMethodManagerService;->-get2(Lcom/android/server/InputMethodManagerService;)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v7

    .line 4159
    invoke-static {v0, v7}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v1

    .line 4162
    .local v1, "currentSubtypeId":I
    :goto_0
    sget-boolean v7, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v7, :cond_2

    .line 4163
    const-string/jumbo v7, "InputMethodManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ImeSubtypeListItem size : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4164
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v6, :cond_6

    .line 4165
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 4166
    .local v4, "isli":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    iget-object v7, v4, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v7, v0}, Landroid/view/inputmethod/InputMethodInfo;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget v7, v4, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    if-ne v7, v1, :cond_8

    .line 4167
    sget-boolean v7, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v7, :cond_3

    .line 4168
    const-string/jumbo v7, "InputMethodManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "index2: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v10}, Lcom/android/server/InputMethodManagerService;->-get1(Lcom/android/server/InputMethodManagerService;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ",i: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ",listSize: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4170
    :cond_3
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v7}, Lcom/android/server/InputMethodManagerService;->-get1(Lcom/android/server/InputMethodManagerService;)I

    move-result v9

    add-int/2addr v9, v2

    invoke-static {v7, v9}, Lcom/android/server/InputMethodManagerService;->-set1(Lcom/android/server/InputMethodManagerService;I)I

    .line 4171
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v9}, Lcom/android/server/InputMethodManagerService;->-get1(Lcom/android/server/InputMethodManagerService;)I

    move-result v9

    rem-int/2addr v9, v6

    invoke-static {v7, v9}, Lcom/android/server/InputMethodManagerService;->-set1(Lcom/android/server/InputMethodManagerService;I)I

    .line 4172
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v7}, Lcom/android/server/InputMethodManagerService;->-get1(Lcom/android/server/InputMethodManagerService;)I

    move-result v7

    if-gez v7, :cond_4

    .line 4173
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v7}, Lcom/android/server/InputMethodManagerService;->-get1(Lcom/android/server/InputMethodManagerService;)I

    move-result v9

    add-int/2addr v9, v6

    invoke-static {v7, v9}, Lcom/android/server/InputMethodManagerService;->-set1(Lcom/android/server/InputMethodManagerService;I)I

    .line 4175
    :cond_4
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v7}, Lcom/android/server/InputMethodManagerService;->-get1(Lcom/android/server/InputMethodManagerService;)I

    move-result v7

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 4176
    .local v5, "item":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    sget-boolean v7, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v7, :cond_5

    .line 4177
    const-string/jumbo v7, "InputMethodManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "set input method in runnable! index2: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v10}, Lcom/android/server/InputMethodManagerService;->-get1(Lcom/android/server/InputMethodManagerService;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 4178
    const-string/jumbo v10, ",item: "

    .line 4177
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 4178
    iget-object v10, v5, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v10

    .line 4177
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4179
    :cond_5
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v9, v5, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    iget v10, v5, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    invoke-virtual {v7, v9, v10}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    .line 4183
    .end local v4    # "isli":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .end local v5    # "item":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :cond_6
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    const/4 v9, 0x0

    invoke-static {v7, v9}, Lcom/android/server/InputMethodManagerService;->-set1(Lcom/android/server/InputMethodManagerService;I)I

    .line 4184
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    const/4 v9, 0x0

    invoke-static {v7, v9}, Lcom/android/server/InputMethodManagerService;->-set0(Lcom/android/server/InputMethodManagerService;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "currentMethod":Landroid/view/inputmethod/InputMethodInfo;
    .end local v1    # "currentSubtypeId":I
    .end local v2    # "i":I
    .end local v3    # "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    .end local v6    # "listSize":I
    :goto_2
    monitor-exit v8

    .line 4148
    return-void

    .line 4161
    .restart local v0    # "currentMethod":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v3    # "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    .restart local v6    # "listSize":I
    :cond_7
    const/4 v1, -0x1

    .restart local v1    # "currentSubtypeId":I
    goto/16 :goto_0

    .line 4164
    .restart local v2    # "i":I
    .restart local v4    # "isli":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 4186
    .end local v0    # "currentMethod":Landroid/view/inputmethod/InputMethodInfo;
    .end local v1    # "currentSubtypeId":I
    .end local v2    # "i":I
    .end local v3    # "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    .end local v4    # "isli":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .end local v6    # "listSize":I
    :cond_9
    :try_start_2
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v9}, Lcom/android/server/InputMethodManagerService;->-get0(Lcom/android/server/InputMethodManagerService;)I

    move-result v9

    invoke-static {v7, v9}, Lcom/android/server/InputMethodManagerService;->-set1(Lcom/android/server/InputMethodManagerService;I)I

    .line 4187
    const-string/jumbo v7, "InputMethodManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "schedule switch task after 500ms! index2: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v10}, Lcom/android/server/InputMethodManagerService;->-get1(Lcom/android/server/InputMethodManagerService;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4188
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v7}, Lcom/android/server/InputMethodManagerService;->-get10(Lcom/android/server/InputMethodManagerService;)Ljava/util/Timer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Timer;->purge()I

    .line 4189
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    invoke-static {v7, v9}, Lcom/android/server/InputMethodManagerService;->-set2(Lcom/android/server/InputMethodManagerService;Ljava/util/Timer;)Ljava/util/Timer;

    .line 4190
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v7}, Lcom/android/server/InputMethodManagerService;->-get10(Lcom/android/server/InputMethodManagerService;)Ljava/util/Timer;

    move-result-object v7

    new-instance v9, Lcom/android/server/InputMethodManagerService$SwitchImeTask;

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$SwitchImeTask;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {v9, v10}, Lcom/android/server/InputMethodManagerService$SwitchImeTask;-><init>(Lcom/android/server/InputMethodManagerService;)V

    const-wide/16 v10, 0x1f4

    invoke-virtual {v7, v9, v10, v11}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 4149
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method
