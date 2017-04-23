.class public Lcom/android/internal/widget/EditableInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "EditableInputConnection.java"


# static fields
.field public static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "EditableInputConnection"


# instance fields
.field private mBatchEditNesting:I

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/widget/EditableInputConnection;->DEBUG:Z

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "textview"    # Landroid/widget/TextView;

    .prologue
    .line 52
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 53
    iput-object p1, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    .line 51
    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    monitor-enter p0

    .line 68
    :try_start_0
    iget v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mBatchEditNesting:I

    if-ltz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 70
    iget v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mBatchEditNesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mBatchEditNesting:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_0
    monitor-exit p0

    .line 74
    return v1

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearMetaKeyStates(I)Z
    .locals 4
    .param p1, "states"    # I

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/internal/widget/EditableInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 109
    .local v0, "content":Landroid/text/Editable;
    if-nez v0, :cond_0

    const/4 v3, 0x0

    return v3

    .line 110
    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v2

    .line 111
    .local v2, "kl":Landroid/text/method/KeyListener;
    if-eqz v2, :cond_1

    .line 113
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-interface {v2, v3, v0, p1}, Landroid/text/method/KeyListener;->clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_1
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 114
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/AbstractMethodError;
    goto :goto_0
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 3
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 124
    sget-boolean v0, Lcom/android/internal/widget/EditableInputConnection;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "EditableInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "commitCompletion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 126
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V

    .line 127
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 3
    .param p1, "correctionInfo"    # Landroid/view/inputmethod/CorrectionInfo;

    .prologue
    .line 136
    sget-boolean v0, Lcom/android/internal/widget/EditableInputConnection;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "EditableInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "commitCorrection"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 138
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V

    .line 139
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    .line 181
    iget-object v3, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    if-nez v3, :cond_0

    .line 182
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v3

    return v3

    .line 184
    :cond_0
    instance-of v3, p1, Landroid/text/Spanned;

    if-eqz v3, :cond_1

    move-object v0, p1

    .line 185
    check-cast v0, Landroid/text/Spanned;

    .line 186
    .local v0, "spanned":Landroid/text/Spanned;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v4, Landroid/text/style/SuggestionSpan;

    const/4 v5, 0x0

    invoke-interface {v0, v5, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/SuggestionSpan;

    .line 187
    .local v1, "spans":[Landroid/text/style/SuggestionSpan;
    iget-object v3, p0, Lcom/android/internal/widget/EditableInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3, v1}, Landroid/view/inputmethod/InputMethodManager;->registerSuggestionSpansForNotification([Landroid/text/style/SuggestionSpan;)V

    .line 190
    .end local v0    # "spanned":Landroid/text/Spanned;
    .end local v1    # "spans":[Landroid/text/style/SuggestionSpan;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->resetErrorChangedFlag()V

    .line 191
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v2

    .line 192
    .local v2, "success":Z
    iget-object v3, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    .line 194
    return v2
.end method

.method public endBatchEdit()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    monitor-enter p0

    .line 80
    :try_start_0
    iget v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mBatchEditNesting:I

    if-lez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 86
    iget v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mBatchEditNesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mBatchEditNesting:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_0
    monitor-exit p0

    .line 90
    return v1

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEditable()Landroid/text/Editable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    .line 59
    .local v0, "tv":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    return-object v1

    .line 62
    :cond_0
    return-object v1
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 3
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 161
    iget-object v1, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 162
    new-instance v0, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 163
    .local v0, "et":Landroid/view/inputmethod/ExtractedText;
    iget-object v1, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1, v0}, Landroid/widget/TextView;->extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setExtracting(Landroid/view/inputmethod/ExtractedTextRequest;)V

    .line 167
    :cond_0
    return-object v0

    .line 170
    .end local v0    # "et":Landroid/view/inputmethod/ExtractedText;
    :cond_1
    return-object v2
.end method

.method public performContextMenuAction(I)Z
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 152
    sget-boolean v0, Lcom/android/internal/widget/EditableInputConnection;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "EditableInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "performContextMenuAction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 154
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 155
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public performEditorAction(I)Z
    .locals 3
    .param p1, "actionCode"    # I

    .prologue
    .line 145
    sget-boolean v0, Lcom/android/internal/widget/EditableInputConnection;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "EditableInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "performEditorAction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->onEditorAction(I)V

    .line 147
    const/4 v0, 0x1

    return v0
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 176
    const/4 v0, 0x1

    return v0
.end method

.method protected reportFinish()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->reportFinish()V

    .line 97
    monitor-enter p0

    .line 98
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mBatchEditNesting:I

    if-lez v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/android/internal/widget/EditableInputConnection;->endBatchEdit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 102
    :cond_0
    const/4 v0, -0x1

    :try_start_1
    iput v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mBatchEditNesting:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 94
    return-void
.end method

.method public requestCursorUpdates(I)Z
    .locals 6
    .param p1, "cursorUpdateMode"    # I

    .prologue
    const/4 v5, 0x0

    .line 199
    sget-boolean v2, Lcom/android/internal/widget/EditableInputConnection;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "EditableInputConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestUpdateCursorAnchorInfo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    const/4 v0, 0x3

    .line 205
    .local v0, "KNOWN_FLAGS_MASK":I
    and-int/lit8 v1, p1, -0x4

    .line 206
    .local v1, "unknownFlags":I
    if-eqz v1, :cond_2

    .line 207
    sget-boolean v2, Lcom/android/internal/widget/EditableInputConnection;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 208
    const-string/jumbo v2, "EditableInputConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Rejecting requestUpdateCursorAnchorInfo due to unknown flags. cursorUpdateMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 210
    const-string/jumbo v4, " unknownFlags="

    .line 208
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_1
    return v5

    .line 215
    :cond_2
    iget-object v2, p0, Lcom/android/internal/widget/EditableInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    if-nez v2, :cond_3

    .line 219
    return v5

    .line 221
    :cond_3
    iget-object v2, p0, Lcom/android/internal/widget/EditableInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2, p1}, Landroid/view/inputmethod/InputMethodManager;->setUpdateCursorAnchorInfoMode(I)V

    .line 222
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_4

    .line 223
    iget-object v2, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    if-nez v2, :cond_5

    .line 237
    :cond_4
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 227
    :cond_5
    iget-object v2, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isInLayout()Z

    move-result v2

    if-nez v2, :cond_4

    .line 234
    iget-object v2, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestLayout()V

    goto :goto_0
.end method
