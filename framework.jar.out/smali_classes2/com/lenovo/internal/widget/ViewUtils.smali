.class public Lcom/lenovo/internal/widget/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# static fields
.field public static final IMPORTANT_FOR_ACCESSIBILITY_YES:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ViewUtils"

.field private static sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 52
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 54
    :try_start_0
    const-class v1, Landroid/view/View;

    .line 55
    const-string/jumbo v2, "computeFitSystemWindows"

    .line 54
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    .line 55
    const-class v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/graphics/Rect;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 54
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/lenovo/internal/widget/ViewUtils;->sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;

    .line 56
    sget-object v1, Lcom/lenovo/internal/widget/ViewUtils;->sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    sget-object v1, Lcom/lenovo/internal/widget/ViewUtils;->sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_0
    return-void

    .line 59
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_0
    move-exception v0

    .line 60
    .restart local v0    # "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v1, "ViewUtils"

    const-string/jumbo v2, "Could not find method computeFitSystemWindows. Oh well."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static combineMeasuredStates(II)I
    .locals 1
    .param p0, "curState"    # I
    .param p1, "newState"    # I

    .prologue
    .line 80
    or-int v0, p0, p1

    return v0
.end method

.method public static computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "inoutInsets"    # Landroid/graphics/Rect;
    .param p2, "outLocalInsets"    # Landroid/graphics/Rect;

    .prologue
    .line 88
    sget-object v1, Lcom/lenovo/internal/widget/ViewUtils;->sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 90
    :try_start_0
    sget-object v1, Lcom/lenovo/internal/widget/ViewUtils;->sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ViewUtils"

    const-string/jumbo v2, "Could not invoke computeFitSystemWindows"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getActionBarDrawableColor(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 271
    sget-object v6, Lcom/lenovo/internal/R$styleable;->ActionBar:[I

    .line 272
    const v7, 0x10102ce

    .line 271
    invoke-virtual {p0, v9, v6, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 273
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v6, 0xd

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 274
    .local v5, "titleStyleRes":I
    const/16 v6, 0xe

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 275
    .local v4, "subtitleStyleRes":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 277
    sget-object v6, Lcom/lenovo/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 278
    .local v1, "appearance":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 279
    .local v3, "colorStateList":Landroid/content/res/ColorStateList;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    .line 280
    .local v2, "color":I
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 281
    and-int/lit16 v6, v2, 0xff

    const/16 v7, 0x77

    if-ge v6, v7, :cond_0

    .line 282
    sget-object v6, Lcom/lenovo/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p0, v4, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 283
    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 284
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 286
    :cond_0
    return-object v3

    .line 279
    .end local v2    # "color":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "color":I
    goto :goto_0
.end method

.method public static getActionBarTitleColor(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 289
    sget-object v4, Lcom/lenovo/internal/R$styleable;->ActionBar:[I

    const/4 v5, 0x0

    .line 290
    const v6, 0x10102ce

    .line 289
    invoke-virtual {p0, v5, v4, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 291
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v4, 0xd

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 292
    .local v3, "titleStyleRes":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 294
    sget-object v4, Lcom/lenovo/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 295
    .local v1, "appearance":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 296
    .local v2, "colorStateList":Landroid/content/res/ColorStateList;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 297
    return-object v2
.end method

.method public static getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    .line 128
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 129
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 131
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getImportantForAccessibility(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 151
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 152
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    return v0

    .line 154
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getLayoutDirection(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 143
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 144
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    return v0

    .line 146
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 2
    .param p0, "ablp"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 165
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 166
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    return v0

    .line 168
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return v0
.end method

.method public static getUserVisibleHint(Landroid/app/Fragment;)Z
    .locals 3
    .param p0, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 229
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_1

    .line 230
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Landroid/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    return v0

    .line 233
    :cond_0
    const-string/jumbo v0, "liqftest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getUserVisibleHint::FragmentManager is null:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static getWindowSystemUiVisibility(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 240
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 241
    invoke-virtual {p0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v0

    return v0

    .line 243
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isLayoutRtl(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeOptionalFitsSystemWindows(Landroid/view/View;)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 102
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_1

    .line 106
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "makeOptionalFitsSystemWindows"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 107
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v4

    if-nez v4, :cond_0

    .line 108
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 110
    :cond_0
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v4, "ViewUtils"

    const-string/jumbo v5, "Could not invoke makeOptionalFitsSystemWindows"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 113
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    .line 114
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v4, "ViewUtils"

    const-string/jumbo v5, "Could not invoke makeOptionalFitsSystemWindows"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 111
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v4, "ViewUtils"

    const-string/jumbo v5, "Could not find method makeOptionalFitsSystemWindows. Oh well..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static newInstance(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "className"    # Ljava/lang/String;
    .param p3, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 175
    .local p2, "constructorSignature":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 176
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 177
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v1, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 178
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v2

    .line 179
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ViewUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cannot instantiate class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    const/4 v3, 0x0

    return-object v3
.end method

.method public static postInvalidateOnAnimation(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 197
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 198
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 196
    :goto_0
    return-void

    .line 200
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public static postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 205
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 206
    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 204
    :goto_0
    return-void

    .line 208
    :cond_0
    invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static requestApplyInsets(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 135
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    .line 134
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestFitSystemWindows()V

    goto :goto_0
.end method

.method public static setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 121
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 122
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 120
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static setImportantForAccessibility(Landroid/view/View;I)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "mode"    # I

    .prologue
    .line 159
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 160
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 158
    :cond_0
    return-void
.end method

.method public static setOnItemClickListenerInt(Landroid/widget/Spinner;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 9
    .param p0, "spinner"    # Landroid/widget/Spinner;
    .param p1, "onItemClickListener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 250
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/Spinner;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "setOnItemClickListenerInt"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/widget/AdapterView$OnItemClickListener;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 251
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v4

    if-nez v4, :cond_0

    .line 252
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 254
    :cond_0
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v4, "ViewUtils"

    const-string/jumbo v5, "Could not invoke setOnItemClickListenerInt"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 257
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    .line 258
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v4, "ViewUtils"

    const-string/jumbo v5, "Could not invoke setOnItemClickListenerInt"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 255
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v1

    .line 256
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v4, "ViewUtils"

    const-string/jumbo v5, "Could not find method setOnItemClickListenerInt. Oh well..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setTint(Landroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "color"    # I

    .prologue
    .line 265
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 266
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 264
    :cond_0
    return-void
.end method

.method public static setUserVisibleHint(Landroid/app/Fragment;Z)V
    .locals 3
    .param p0, "fragment"    # Landroid/app/Fragment;
    .param p1, "b"    # Z

    .prologue
    .line 220
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 221
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    const-string/jumbo v0, "liqftest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUserVisibleHint::FragmentManager is null:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V
    .locals 2
    .param p0, "popup"    # Landroid/widget/PopupWindow;
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "mDropDownHorizontalOffset"    # I
    .param p3, "mDropDownVerticalOffset"    # I
    .param p4, "mDropDownGravity"    # I

    .prologue
    .line 187
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 188
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 186
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public static stopNestedScroll(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 213
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 214
    invoke-virtual {p0}, Landroid/view/View;->stopNestedScroll()V

    .line 212
    :cond_0
    return-void
.end method
