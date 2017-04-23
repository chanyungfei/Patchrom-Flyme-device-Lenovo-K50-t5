.class public Lcom/android/server/policy/MtkPhoneWindowManager;
.super Lcom/android/server/policy/PhoneWindowManager;
.source "MtkPhoneWindowManager.java"


# static fields
.field static DEBUG:Z = false

.field static DEBUG_LAYOUT:Z = false

.field private static final MSG_DISABLE_FLOATING_MONITOR:I = 0x3e9

.field private static final MSG_ENABLE_FLOATING_MONITOR:I = 0x3e8

.field private static final MSG_MTK_POLICY:I = 0x3e8

.field static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field mDisplayHeight:I

.field mDisplayRotation:I

.field mDisplayWidth:I

.field mHandler:Landroid/os/Handler;

.field mIsDefaultDisplay:Z

.field mMtkPhoneWindowUtility:Lcom/android/server/policy/MtkPhoneWindowUtility;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/policy/MtkPhoneWindowManager;->DEBUG:Z

    .line 60
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/policy/MtkPhoneWindowManager;->DEBUG_LAYOUT:Z

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;-><init>()V

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/MtkPhoneWindowManager;->mMtkPhoneWindowUtility:Lcom/android/server/policy/MtkPhoneWindowUtility;

    .line 56
    return-void
.end method


# virtual methods
.method public applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 2
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "attached"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 216
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloatingWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "[BMW] Floating window skips applyPostLayoutPolicyLw "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-void

    .line 220
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 213
    return-void
.end method

.method public beginLayoutLw(ZIII)V
    .locals 0
    .param p1, "isDefaultDisplay"    # Z
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I
    .param p4, "displayRotation"    # I

    .prologue
    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->beginLayoutLw(ZIII)V

    .line 84
    iput-boolean p1, p0, Lcom/android/server/policy/MtkPhoneWindowManager;->mIsDefaultDisplay:Z

    .line 85
    iput p2, p0, Lcom/android/server/policy/MtkPhoneWindowManager;->mDisplayWidth:I

    .line 86
    iput p3, p0, Lcom/android/server/policy/MtkPhoneWindowManager;->mDisplayHeight:I

    .line 87
    iput p4, p0, Lcom/android/server/policy/MtkPhoneWindowManager;->mDisplayRotation:I

    .line 82
    return-void
.end method

.method public finishLayoutLw()V
    .locals 5

    .prologue
    .line 226
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishLayoutLw()V

    .line 227
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/server/policy/MtkPhoneWindowManager;->mMtkPhoneWindowUtility:Lcom/android/server/policy/MtkPhoneWindowUtility;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/server/policy/MtkPhoneWindowManager;->mMtkPhoneWindowUtility:Lcom/android/server/policy/MtkPhoneWindowUtility;

    iget v1, p0, Lcom/android/server/policy/MtkPhoneWindowManager;->mContentLeft:I

    .line 230
    iget v2, p0, Lcom/android/server/policy/MtkPhoneWindowManager;->mContentTop:I

    iget v3, p0, Lcom/android/server/policy/MtkPhoneWindowManager;->mContentRight:I

    iget v4, p0, Lcom/android/server/policy/MtkPhoneWindowManager;->mContentBottom:I

    .line 229
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/policy/MtkPhoneWindowUtility;->updateRect(IIII)V

    .line 232
    :cond_0
    return-void
.end method

.method public focusChangedLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I
    .locals 3
    .param p1, "lastFocus"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "newFocus"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v2, 0x0

    .line 240
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/android/server/policy/MtkPhoneWindowManager;->mMtkPhoneWindowUtility:Lcom/android/server/policy/MtkPhoneWindowUtility;

    invoke-virtual {v1, p2}, Lcom/android/server/policy/MtkPhoneWindowUtility;->updateFocus2FloatMonitor(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 245
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->focusChangedLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I

    move-result v0

    .line 246
    .local v0, "resVal":I
    if-eqz v0, :cond_1

    .line 247
    return v0

    .line 249
    :cond_1
    return v2
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    .line 75
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    .line 77
    new-instance v0, Lcom/android/server/policy/MtkPhoneWindowUtility;

    invoke-direct {v0, p1, p3}, Lcom/android/server/policy/MtkPhoneWindowUtility;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    iput-object v0, p0, Lcom/android/server/policy/MtkPhoneWindowManager;->mMtkPhoneWindowUtility:Lcom/android/server/policy/MtkPhoneWindowUtility;

    .line 74
    return-void
.end method

.method public layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 24
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attached"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 93
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    .line 94
    .local v13, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-nez p1, :cond_0

    .line 95
    return-void

    .line 99
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloatingWindow()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/policy/MtkPhoneWindowManager;->mIsDefaultDisplay:Z

    if-eqz v3, :cond_1

    .line 101
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/policy/MtkPhoneWindowManager;->mIsDefaultDisplay:Z

    if-eqz v3, :cond_2

    .line 102
    iget v14, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 103
    .local v14, "fl":I
    iget v0, v13, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move/from16 v16, v0

    .line 104
    .local v16, "sim":I
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v17

    .line 105
    .local v17, "sysUiFl":I
    move/from16 v0, v16

    and-int/lit16 v12, v0, 0xf0

    .line 107
    .local v12, "adjust":I
    sget-object v4, Lcom/android/server/policy/MtkPhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 108
    .local v4, "pf":Landroid/graphics/Rect;
    sget-object v5, Lcom/android/server/policy/MtkPhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 109
    .local v5, "df":Landroid/graphics/Rect;
    sget-object v6, Lcom/android/server/policy/MtkPhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    .line 110
    .local v6, "of":Landroid/graphics/Rect;
    sget-object v7, Lcom/android/server/policy/MtkPhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 111
    .local v7, "cf":Landroid/graphics/Rect;
    sget-object v8, Lcom/android/server/policy/MtkPhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 112
    .local v8, "vf":Landroid/graphics/Rect;
    sget-object v9, Lcom/android/server/policy/MtkPhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    .line 113
    .local v9, "dcf":Landroid/graphics/Rect;
    sget-object v10, Lcom/android/server/policy/MtkPhoneWindowManager;->mTmpStableFrame:Landroid/graphics/Rect;

    .line 114
    .local v10, "sf":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/MtkPhoneWindowManager;->mDisplayRotation:I

    .line 115
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/policy/MtkPhoneWindowManager;->mDisplayWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/MtkPhoneWindowManager;->mDisplayHeight:I

    move/from16 v20, v0

    .line 114
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v3, v11, v1}, Landroid/view/WindowManagerPolicy$WindowState;->getFloatingRect(III)Landroid/graphics/Rect;

    move-result-object v15

    .line 117
    .local v15, "floatRegion":Landroid/graphics/Rect;
    if-nez v15, :cond_3

    .line 118
    return-void

    .line 100
    .end local v4    # "pf":Landroid/graphics/Rect;
    .end local v5    # "df":Landroid/graphics/Rect;
    .end local v6    # "of":Landroid/graphics/Rect;
    .end local v7    # "cf":Landroid/graphics/Rect;
    .end local v8    # "vf":Landroid/graphics/Rect;
    .end local v9    # "dcf":Landroid/graphics/Rect;
    .end local v10    # "sf":Landroid/graphics/Rect;
    .end local v12    # "adjust":I
    .end local v14    # "fl":I
    .end local v15    # "floatRegion":Landroid/graphics/Rect;
    .end local v16    # "sim":I
    .end local v17    # "sysUiFl":I
    :cond_1
    invoke-super/range {p0 .. p2}, Lcom/android/server/policy/PhoneWindowManager;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 92
    :cond_2
    :goto_0
    return-void

    .line 121
    .restart local v4    # "pf":Landroid/graphics/Rect;
    .restart local v5    # "df":Landroid/graphics/Rect;
    .restart local v6    # "of":Landroid/graphics/Rect;
    .restart local v7    # "cf":Landroid/graphics/Rect;
    .restart local v8    # "vf":Landroid/graphics/Rect;
    .restart local v9    # "dcf":Landroid/graphics/Rect;
    .restart local v10    # "sf":Landroid/graphics/Rect;
    .restart local v12    # "adjust":I
    .restart local v14    # "fl":I
    .restart local v15    # "floatRegion":Landroid/graphics/Rect;
    .restart local v16    # "sim":I
    .restart local v17    # "sysUiFl":I
    :cond_3
    const-string/jumbo v3, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "[BMW] layoutWindowLw floating win = "

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/16 v19, 0x0

    .local v19, "yOffset":I
    const/16 v18, 0x0

    .line 124
    .local v18, "xOffset":I
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFocusStack()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 125
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/MtkPhoneWindowManager;->mContentBottom:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/policy/MtkPhoneWindowManager;->mStableBottom:I

    if-ge v3, v11, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/MtkPhoneWindowManager;->mContentBottom:I

    iget v11, v15, Landroid/graphics/Rect;->bottom:I

    if-ge v3, v11, :cond_4

    .line 126
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/MtkPhoneWindowManager;->mContentBottom:I

    iget v11, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v11

    add-int/lit8 v19, v3, 0x0

    .line 128
    :cond_4
    iget v3, v15, Landroid/graphics/Rect;->top:I

    add-int v3, v3, v19

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/policy/MtkPhoneWindowManager;->mStableTop:I

    if-ge v3, v11, :cond_5

    .line 129
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/MtkPhoneWindowManager;->mStableTop:I

    iget v11, v15, Landroid/graphics/Rect;->top:I

    add-int v11, v11, v19

    sub-int/2addr v3, v11

    add-int v19, v19, v3

    .line 131
    :cond_5
    if-eqz v19, :cond_6

    .line 132
    iget v3, v15, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/policy/MtkPhoneWindowManager;->mStableLeft:I

    if-ge v3, v11, :cond_a

    .line 133
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/MtkPhoneWindowManager;->mStableLeft:I

    iget v11, v15, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v11

    add-int/lit8 v18, v3, 0x0

    .line 140
    :cond_6
    :goto_1
    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy$WindowState;->adjustFloatingRect(II)V

    .line 143
    iget v3, v15, Landroid/graphics/Rect;->left:I

    add-int v3, v3, v18

    .line 142
    iput v3, v8, Landroid/graphics/Rect;->left:I

    iput v3, v7, Landroid/graphics/Rect;->left:I

    iput v3, v6, Landroid/graphics/Rect;->left:I

    iput v3, v5, Landroid/graphics/Rect;->left:I

    iput v3, v4, Landroid/graphics/Rect;->left:I

    .line 144
    iget v3, v15, Landroid/graphics/Rect;->top:I

    add-int v3, v3, v19

    iput v3, v8, Landroid/graphics/Rect;->top:I

    iput v3, v7, Landroid/graphics/Rect;->top:I

    iput v3, v6, Landroid/graphics/Rect;->top:I

    iput v3, v5, Landroid/graphics/Rect;->top:I

    iput v3, v4, Landroid/graphics/Rect;->top:I

    .line 146
    iget v3, v15, Landroid/graphics/Rect;->right:I

    add-int v3, v3, v18

    .line 145
    iput v3, v8, Landroid/graphics/Rect;->right:I

    iput v3, v7, Landroid/graphics/Rect;->right:I

    iput v3, v6, Landroid/graphics/Rect;->right:I

    iput v3, v5, Landroid/graphics/Rect;->right:I

    iput v3, v4, Landroid/graphics/Rect;->right:I

    .line 148
    iget v3, v15, Landroid/graphics/Rect;->bottom:I

    add-int v3, v3, v19

    .line 147
    iput v3, v8, Landroid/graphics/Rect;->bottom:I

    iput v3, v7, Landroid/graphics/Rect;->bottom:I

    iput v3, v6, Landroid/graphics/Rect;->bottom:I

    iput v3, v5, Landroid/graphics/Rect;->bottom:I

    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    .line 150
    if-eqz p2, :cond_7

    .line 151
    and-int/lit16 v3, v14, 0x100

    if-nez v3, :cond_b

    .line 152
    invoke-interface/range {p2 .. p2}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    .line 151
    :goto_2
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 158
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/MtkPhoneWindowManager;->getInputMethodWindowVisibleHeightLw()I

    move-result v3

    if-lez v3, :cond_c

    .line 159
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/MtkPhoneWindowManager;->mCurrentInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v3, v0, :cond_c

    .line 168
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/MtkPhoneWindowManager;->mCurrentInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v3, v0, :cond_d

    .line 169
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/MtkPhoneWindowManager;->mContentBottom:I

    iget v11, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v11}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    .line 179
    :cond_8
    :goto_4
    const/16 v3, 0x10

    if-eq v12, v3, :cond_e

    .line 180
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/MtkPhoneWindowManager;->mDockRight:I

    iput v3, v7, Landroid/graphics/Rect;->right:I

    .line 181
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/MtkPhoneWindowManager;->mDockBottom:I

    iput v3, v7, Landroid/graphics/Rect;->bottom:I

    .line 187
    :goto_5
    const/16 v3, 0x30

    if-eq v12, v3, :cond_f

    .line 188
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/MtkPhoneWindowManager;->mCurRight:I

    iput v3, v8, Landroid/graphics/Rect;->right:I

    .line 189
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/MtkPhoneWindowManager;->mCurBottom:I

    iput v3, v8, Landroid/graphics/Rect;->bottom:I

    .line 194
    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/MtkPhoneWindowManager;->mStableLeft:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/policy/MtkPhoneWindowManager;->mStableTop:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/MtkPhoneWindowManager;->mStableRight:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/MtkPhoneWindowManager;->mStableBottom:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v3, v11, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 196
    const-string/jumbo v3, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "[BMW] Compute float frame "

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v13}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 197
    const-string/jumbo v20, ": sim=#"

    .line 196
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 197
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    .line 196
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 198
    const-string/jumbo v20, " attach="

    .line 196
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 198
    const-string/jumbo v20, " type="

    .line 196
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 198
    iget v0, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v20, v0

    .line 196
    move/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 199
    const-string/jumbo v20, " flags=0x%08x"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x0

    aput-object v22, v21, v23

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 196
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 200
    const-string/jumbo v20, " pf="

    .line 196
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 200
    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v20

    .line 196
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 200
    const-string/jumbo v20, " df="

    .line 196
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 200
    invoke-virtual {v5}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v20

    .line 196
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 201
    const-string/jumbo v20, " of="

    .line 196
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 201
    invoke-virtual {v6}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v20

    .line 196
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 202
    const-string/jumbo v20, " cf="

    .line 196
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 202
    invoke-virtual {v7}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v20

    .line 196
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 202
    const-string/jumbo v20, " vf="

    .line 196
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 202
    invoke-virtual {v8}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v20

    .line 196
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 203
    const-string/jumbo v20, " dcf="

    .line 196
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 203
    invoke-virtual {v9}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v20

    .line 196
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 203
    const-string/jumbo v20, " sf="

    .line 196
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 203
    invoke-virtual {v10}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v20

    .line 196
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 204
    const-string/jumbo v20, " floatRegion="

    .line 196
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 204
    invoke-virtual {v15}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v20

    .line 196
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v11, 0x0

    move-object/from16 v3, p1

    invoke-interface/range {v3 .. v11}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 134
    :cond_a
    iget v3, v15, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/policy/MtkPhoneWindowManager;->mStableRight:I

    if-le v3, v11, :cond_6

    .line 135
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/MtkPhoneWindowManager;->mStableRight:I

    iget v11, v15, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v11

    add-int/lit8 v18, v3, 0x0

    goto/16 :goto_1

    :cond_b
    move-object v3, v5

    .line 152
    goto/16 :goto_2

    .line 160
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/MtkPhoneWindowManager;->mCurrentInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_9

    .line 161
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/MtkPhoneWindowManager;->mCurrentInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-eq v3, v0, :cond_9

    .line 162
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/MtkPhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v11

    if-ne v3, v11, :cond_9

    .line 163
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/MtkPhoneWindowManager;->mCurrentInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isFocusStack()Z

    move-result v3

    .line 160
    if-eqz v3, :cond_9

    .line 164
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/MtkPhoneWindowManager;->mCurrentInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    .line 160
    if-eqz v3, :cond_9

    .line 165
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/MtkPhoneWindowManager;->mCurrentInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_9

    .line 166
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v3

    .line 167
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/MtkPhoneWindowManager;->mCurrentInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v11}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v11

    .line 166
    if-le v3, v11, :cond_9

    goto/16 :goto_3

    .line 170
    :cond_d
    if-nez p2, :cond_8

    .line 172
    const-string/jumbo v3, "WindowManager"

    const-string/jumbo v11, "[BMW]Special case,set pf/sf/vf/cf to window target\'s frame"

    invoke-static {v3, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/MtkPhoneWindowManager;->mCurrentInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 174
    invoke-virtual {v5, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 175
    invoke-virtual {v6, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 176
    invoke-virtual {v7, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 177
    invoke-virtual {v8, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_4

    .line 183
    :cond_e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/MtkPhoneWindowManager;->mContentRight:I

    iput v3, v7, Landroid/graphics/Rect;->right:I

    .line 184
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/MtkPhoneWindowManager;->mContentBottom:I

    iput v3, v7, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_5

    .line 191
    :cond_f
    invoke-virtual {v8, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_6
.end method
