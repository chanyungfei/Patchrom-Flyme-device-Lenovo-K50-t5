.class Landroid/widget/Editor$TextActionModeCallback;
.super Landroid/view/ActionMode$Callback2;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextActionModeCallback"
.end annotation


# instance fields
.field private final TRANSLATION_INTENT_ACTION:Ljava/lang/String;

.field private final TRANSLATION_INTENT_EXTRA_KEY:Ljava/lang/String;

.field private mHandleHeight:I

.field private final mHasSelection:Z

.field private final mSelectionBounds:Landroid/graphics/RectF;

.field private final mSelectionPath:Landroid/graphics/Path;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Z)V
    .locals 4
    .param p1, "this$0"    # Landroid/widget/Editor;
    .param p2, "hasSelection"    # Z

    .prologue
    .line 3147
    iput-object p1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Landroid/view/ActionMode$Callback2;-><init>()V

    .line 3141
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    .line 3142
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    .line 3213
    const-string/jumbo v2, "com.lenovo.component.translationservice.ACTION_TRANSLATE_WORD"

    iput-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->TRANSLATION_INTENT_ACTION:Ljava/lang/String;

    .line 3218
    const-string/jumbo v2, "TRANSLATE_THIS_WORD"

    iput-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->TRANSLATION_INTENT_EXTRA_KEY:Ljava/lang/String;

    .line 3148
    iput-boolean p2, p0, Landroid/widget/Editor$TextActionModeCallback;->mHasSelection:Z

    .line 3149
    iget-boolean v2, p0, Landroid/widget/Editor$TextActionModeCallback;->mHasSelection:Z

    if-eqz v2, :cond_2

    .line 3150
    invoke-virtual {p1}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v1

    .line 3151
    .local v1, "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    invoke-static {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->-get0(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionStartHandleView;

    move-result-object v2

    if-nez v2, :cond_0

    .line 3153
    invoke-static {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->-wrap0(Landroid/widget/Editor$SelectionModifierCursorController;)V

    .line 3154
    invoke-static {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->-wrap1(Landroid/widget/Editor$SelectionModifierCursorController;)V

    .line 3155
    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 3158
    :cond_0
    invoke-static {p1}, Landroid/widget/Editor;->-get2(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    .line 3159
    invoke-static {p1}, Landroid/widget/Editor;->-get3(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    .line 3157
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    .line 3147
    .end local v1    # "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    :cond_1
    :goto_0
    return-void

    .line 3161
    :cond_2
    invoke-virtual {p1}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v0

    .line 3162
    .local v0, "insertionController":Landroid/widget/Editor$InsertionPointCursorController;
    if-eqz v0, :cond_1

    .line 3163
    invoke-static {v0}, Landroid/widget/Editor$InsertionPointCursorController;->-wrap0(Landroid/widget/Editor$InsertionPointCursorController;)Landroid/widget/Editor$InsertionHandleView;

    .line 3164
    invoke-static {p1}, Landroid/widget/Editor;->-get1(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    goto :goto_0
.end method

.method private getCustomCallback()Landroid/view/ActionMode$Callback;
    .locals 1

    .prologue
    .line 3204
    iget-boolean v0, p0, Landroid/widget/Editor$TextActionModeCallback;->mHasSelection:Z

    if-eqz v0, :cond_0

    .line 3205
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    .line 3204
    :goto_0
    return-object v0

    .line 3206
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomInsertionActionModeCallback:Landroid/view/ActionMode$Callback;

    goto :goto_0
.end method

.method private isTranslationMenuClicked(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 3256
    const/4 v2, 0x0

    .line 3258
    .local v2, "result":Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 3259
    .local v1, "menuIntent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 3260
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3261
    .local v0, "MENU_INTENT_ACTION":Ljava/lang/String;
    const-string/jumbo v3, "com.lenovo.component.translationservice.ACTION_TRANSLATE_WORD"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3262
    const/4 v2, 0x1

    .line 3266
    .end local v0    # "MENU_INTENT_ACTION":Ljava/lang/String;
    :cond_0
    return v2
.end method

.method private populateMenuWithItems(Landroid/view/Menu;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 3271
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canCut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3272
    const v0, 0x1020020

    .line 3273
    const v1, 0x1040003

    .line 3272
    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 3274
    const/16 v1, 0x78

    .line 3272
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3278
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canCopy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3279
    const v0, 0x1020021

    .line 3280
    const v1, 0x1040001

    .line 3279
    invoke-interface {p1, v3, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 3281
    const/16 v1, 0x63

    .line 3279
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3285
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3286
    const v0, 0x1020022

    const/4 v1, 0x3

    .line 3287
    const v2, 0x104000b

    .line 3286
    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 3288
    const/16 v1, 0x76

    .line 3286
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3292
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canShare()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3293
    const v0, 0x1020035

    const/4 v1, 0x4

    .line 3294
    const v2, 0x1040449

    .line 3293
    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3299
    :cond_3
    invoke-direct {p0, p1}, Landroid/widget/Editor$TextActionModeCallback;->updateSelectAllItem(Landroid/view/Menu;)V

    .line 3300
    invoke-direct {p0, p1}, Landroid/widget/Editor$TextActionModeCallback;->updateReplaceItem(Landroid/view/Menu;)V

    .line 3302
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0, p1}, Landroid/widget/Editor;->-wrap18(Landroid/widget/Editor;Landroid/view/Menu;)V

    .line 3270
    return-void
.end method

.method private populateTranslateMenu(Landroid/view/Menu;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v5, 0x0

    .line 3224
    const v0, 0xfad8

    .line 3225
    .local v0, "MENU_ID_TRANSLATE":I
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.lenovo.component.translationservice.ACTION_TRANSLATE_WORD"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3230
    .local v1, "intent":Landroid/content/Intent;
    const v3, 0xfad8

    .line 3231
    const v4, 0x909005a

    .line 3227
    invoke-interface {p1, v5, v5, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 3232
    .local v2, "item":Landroid/view/MenuItem;
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 3233
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3223
    return-void
.end method

.method private putTargetStringToTranslationIntent(Landroid/view/MenuItem;)V
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 3240
    iget-object v3, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 3241
    .local v1, "SELECTION_START":I
    iget-object v3, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 3243
    .local v0, "SELECTION_END":I
    if-le v1, v0, :cond_1

    .line 3244
    iget-object v3, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 3242
    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 3246
    .local v2, "selectionStr":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 3247
    const-string/jumbo v2, ""

    .line 3249
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "TRANSLATE_THIS_WORD"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3239
    return-void

    .line 3245
    .end local v2    # "selectionStr":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_0
.end method

.method private updateReplaceItem(Landroid/view/Menu;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v5, 0x1020034

    .line 3331
    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-wrap10(Landroid/widget/Editor;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3332
    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->hasSelection()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    .line 3333
    .local v0, "canReplace":Z
    :goto_0
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v1, 0x1

    .line 3334
    .local v1, "replaceItemExists":Z
    :goto_1
    if-eqz v0, :cond_0

    if-eqz v1, :cond_5

    .line 3338
    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 3339
    invoke-interface {p1, v5}, Landroid/view/Menu;->removeItem(I)V

    .line 3330
    :cond_1
    :goto_2
    return-void

    .line 3332
    .end local v0    # "canReplace":Z
    .end local v1    # "replaceItemExists":Z
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "canReplace":Z
    goto :goto_0

    .line 3331
    .end local v0    # "canReplace":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "canReplace":Z
    goto :goto_0

    .line 3333
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "replaceItemExists":Z
    goto :goto_1

    .line 3335
    :cond_5
    const/4 v2, 0x0

    const/4 v3, 0x6

    .line 3336
    const v4, 0x1040339

    .line 3335
    invoke-interface {p1, v2, v5, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 3337
    const/4 v3, 0x1

    .line 3335
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_2
.end method

.method private updateSelectAllItem(Landroid/view/Menu;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v5, 0x102001f

    .line 3319
    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->canSelectAllText()Z

    move-result v0

    .line 3320
    .local v0, "canSelectAll":Z
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    .line 3321
    .local v1, "selectAllItemExists":Z
    :goto_0
    if-eqz v0, :cond_0

    if-eqz v1, :cond_3

    .line 3325
    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 3326
    invoke-interface {p1, v5}, Landroid/view/Menu;->removeItem(I)V

    .line 3318
    :cond_1
    :goto_1
    return-void

    .line 3320
    .end local v1    # "selectAllItemExists":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "selectAllItemExists":Z
    goto :goto_0

    .line 3322
    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x5

    .line 3323
    const v4, 0x104000d

    .line 3322
    invoke-interface {p1, v2, v5, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 3324
    const/4 v3, 0x1

    .line 3322
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 3346
    invoke-direct {p0, p2}, Landroid/widget/Editor$TextActionModeCallback;->isTranslationMenuClicked(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3347
    invoke-direct {p0, p2}, Landroid/widget/Editor$TextActionModeCallback;->putTargetStringToTranslationIntent(Landroid/view/MenuItem;)V

    .line 3349
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 3353
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-virtual {v1, p2}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->performMenuItemAction(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3354
    return v2

    .line 3356
    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor$TextActionModeCallback;->getCustomCallback()Landroid/view/ActionMode$Callback;

    move-result-object v0

    .line 3357
    .local v0, "customCallback":Landroid/view/ActionMode$Callback;
    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3358
    return v2

    .line 3360
    :cond_2
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    return v1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3171
    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 3172
    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 3173
    invoke-virtual {p1, v2}, Landroid/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 3174
    invoke-direct {p0, p2}, Landroid/widget/Editor$TextActionModeCallback;->populateMenuWithItems(Landroid/view/Menu;)V

    .line 3176
    invoke-direct {p0}, Landroid/widget/Editor$TextActionModeCallback;->getCustomCallback()Landroid/view/ActionMode$Callback;

    move-result-object v0

    .line 3177
    .local v0, "customCallback":Landroid/view/ActionMode$Callback;
    if-eqz v0, :cond_0

    .line 3178
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3180
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 3181
    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 3180
    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 3182
    return v3

    .line 3186
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->canProcessText()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3187
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-virtual {v1, p2}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->onInitializeMenu(Landroid/view/Menu;)V

    .line 3190
    invoke-direct {p0, p2}, Landroid/widget/Editor$TextActionModeCallback;->populateTranslateMenu(Landroid/view/Menu;)V

    .line 3195
    :cond_1
    invoke-interface {p2}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3196
    :cond_2
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHasTransientState(Z)V

    .line 3197
    return v2

    .line 3199
    :cond_3
    return v3
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v3, 0x0

    .line 3365
    invoke-direct {p0}, Landroid/widget/Editor$TextActionModeCallback;->getCustomCallback()Landroid/view/ActionMode$Callback;

    move-result-object v0

    .line 3366
    .local v0, "customCallback":Landroid/view/ActionMode$Callback;
    if-eqz v0, :cond_0

    .line 3367
    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 3375
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-boolean v1, v1, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    if-nez v1, :cond_1

    .line 3376
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 3377
    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 3376
    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 3378
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHasTransientState(Z)V

    .line 3381
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v1, :cond_2

    .line 3382
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 3385
    :cond_2
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iput-object v3, v1, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    .line 3364
    return-void
.end method

.method public onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 15
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 3390
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v9

    if-nez v9, :cond_1

    .line 3391
    :cond_0
    invoke-super/range {p0 .. p3}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3392
    return-void

    .line 3394
    :cond_1
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v9

    iget-object v10, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v10

    if-eq v9, v10, :cond_2

    .line 3396
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    .line 3397
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v9

    .line 3398
    iget-object v10, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v10

    iget-object v11, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v11

    iget-object v12, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    .line 3397
    invoke-virtual {v9, v10, v11, v12}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 3399
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    iget-object v10, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 3400
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v10, v9, Landroid/graphics/RectF;->bottom:F

    iget v11, p0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    iput v10, v9, Landroid/graphics/RectF;->bottom:F

    .line 3425
    :goto_0
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v7

    .line 3426
    .local v7, "textHorizontalOffset":I
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v8

    .line 3428
    .local v8, "textVerticalOffset":I
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    int-to-float v10, v7

    add-float/2addr v9, v10

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v9, v10

    .line 3429
    iget-object v10, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    int-to-float v11, v8

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v10, v10

    .line 3430
    iget-object v11, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->right:F

    int-to-float v12, v7

    add-float/2addr v11, v12

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v11, v12

    .line 3431
    iget-object v12, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    int-to-float v13, v8

    add-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    .line 3427
    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 3389
    return-void

    .line 3401
    .end local v7    # "textHorizontalOffset":I
    .end local v8    # "textVerticalOffset":I
    :cond_2
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget v9, v9, Landroid/widget/Editor;->mCursorCount:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 3404
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v9, v9, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 3405
    .local v2, "firstCursorBounds":Landroid/graphics/Rect;
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v9, v9, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 3406
    .local v6, "secondCursorBounds":Landroid/graphics/Rect;
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    .line 3407
    iget v10, v2, Landroid/graphics/Rect;->left:I

    iget v11, v6, Landroid/graphics/Rect;->left:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    int-to-float v10, v10

    .line 3408
    iget v11, v2, Landroid/graphics/Rect;->top:I

    iget v12, v6, Landroid/graphics/Rect;->top:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    int-to-float v11, v11

    .line 3409
    iget v12, v2, Landroid/graphics/Rect;->right:I

    iget v13, v6, Landroid/graphics/Rect;->right:I

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    int-to-float v12, v12

    .line 3410
    iget v13, v2, Landroid/graphics/Rect;->bottom:I

    iget v14, v6, Landroid/graphics/Rect;->bottom:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 3411
    iget v14, p0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    .line 3410
    add-int/2addr v13, v14

    int-to-float v13, v13

    .line 3406
    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_0

    .line 3414
    .end local v2    # "firstCursorBounds":Landroid/graphics/Rect;
    .end local v6    # "secondCursorBounds":Landroid/graphics/Rect;
    :cond_3
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-wrap0(Landroid/widget/Editor;)Landroid/text/Layout;

    move-result-object v3

    .line 3415
    .local v3, "layout":Landroid/text/Layout;
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 3417
    .local v4, "line":I
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v5

    .line 3418
    .local v5, "primaryHorizontal":F
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    .line 3420
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v10

    int-to-float v10, v10

    .line 3422
    add-int/lit8 v11, v4, 0x1

    invoke-virtual {v3, v11}, Landroid/text/Layout;->getLineTop(I)I

    move-result v11

    iget v12, p0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    .line 3418
    invoke-virtual {v9, v5, v10, v5, v11}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3308
    invoke-direct {p0, p2}, Landroid/widget/Editor$TextActionModeCallback;->updateSelectAllItem(Landroid/view/Menu;)V

    .line 3309
    invoke-direct {p0, p2}, Landroid/widget/Editor$TextActionModeCallback;->updateReplaceItem(Landroid/view/Menu;)V

    .line 3311
    invoke-direct {p0}, Landroid/widget/Editor$TextActionModeCallback;->getCustomCallback()Landroid/view/ActionMode$Callback;

    move-result-object v0

    .line 3312
    .local v0, "customCallback":Landroid/view/ActionMode$Callback;
    if-eqz v0, :cond_0

    .line 3313
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 3315
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
