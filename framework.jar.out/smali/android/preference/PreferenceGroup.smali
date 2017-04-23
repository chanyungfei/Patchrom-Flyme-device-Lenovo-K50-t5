.class public abstract Landroid/preference/PreferenceGroup;
.super Landroid/preference/Preference;
.source "PreferenceGroup.java"

# interfaces
.implements Landroid/preference/GenericInflater$Parent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/preference/Preference;",
        "Landroid/preference/GenericInflater$Parent",
        "<",
        "Landroid/preference/Preference;",
        ">;"
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "PreferenceGroup"


# instance fields
.field private mAttachedToActivity:Z

.field private mCurrentPreferenceOrder:I

.field private mOrderingAsAdded:Z

.field private mPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/preference/PreferenceGroup;->DBG:Z

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 63
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/preference/PreferenceGroup;->mOrderingAsAdded:Z

    .line 65
    iput v2, p0, Landroid/preference/PreferenceGroup;->mCurrentPreferenceOrder:I

    .line 67
    iput-boolean v2, p0, Landroid/preference/PreferenceGroup;->mAttachedToActivity:Z

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    .line 75
    sget-object v1, Lcom/android/internal/R$styleable;->PreferenceGroup:[I

    .line 74
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 77
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-boolean v1, p0, Landroid/preference/PreferenceGroup;->mOrderingAsAdded:Z

    .line 76
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/preference/PreferenceGroup;->mOrderingAsAdded:Z

    .line 78
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    return-void
.end method

.method private removePreferenceInt(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 212
    sget-boolean v0, Landroid/preference/PreferenceGroup;->DBG:Z

    if-eqz v0, :cond_0

    .line 213
    const-string/jumbo v0, "PreferenceGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removePreferenceInt, child key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 214
    const-string/jumbo v2, ", child title = "

    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 214
    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 215
    const-string/jumbo v2, ", key = "

    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 215
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 215
    const-string/jumbo v2, ", title = "

    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 215
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    monitor-enter p0

    .line 219
    :try_start_0
    invoke-virtual {p1}, Landroid/preference/Preference;->onPrepareForRemoval()V

    .line 220
    iget-object v0, p0, Landroid/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addItemFromInflater(Landroid/preference/Preference;)V
    .locals 0
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 117
    return-void
.end method

.method public bridge synthetic addItemFromInflater(Ljava/lang/Object;)V
    .locals 0
    .param p1, "preference"    # Ljava/lang/Object;

    .prologue
    .line 117
    check-cast p1, Landroid/preference/Preference;

    .end local p1    # "preference":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroup;->addItemFromInflater(Landroid/preference/Preference;)V

    return-void
.end method

.method public addPreference(Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 147
    sget-boolean v1, Landroid/preference/PreferenceGroup;->DBG:Z

    if-eqz v1, :cond_0

    .line 148
    const-string/jumbo v1, "PreferenceGroup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addPreference, child key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 149
    const-string/jumbo v3, ", child title = "

    .line 148
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 149
    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 148
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 150
    const-string/jumbo v3, ", key = "

    .line 148
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 150
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 148
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 150
    const-string/jumbo v3, ", title = "

    .line 148
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 150
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 148
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    iget-object v1, p0, Landroid/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    return v5

    .line 158
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getOrder()I

    move-result v1

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_3

    .line 159
    iget-boolean v1, p0, Landroid/preference/PreferenceGroup;->mOrderingAsAdded:Z

    if-eqz v1, :cond_2

    .line 160
    iget v1, p0, Landroid/preference/PreferenceGroup;->mCurrentPreferenceOrder:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/preference/PreferenceGroup;->mCurrentPreferenceOrder:I

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 163
    :cond_2
    instance-of v1, p1, Landroid/preference/PreferenceGroup;

    if-eqz v1, :cond_3

    move-object v1, p1

    .line 166
    check-cast v1, Landroid/preference/PreferenceGroup;

    iget-boolean v2, p0, Landroid/preference/PreferenceGroup;->mOrderingAsAdded:Z

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 170
    :cond_3
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroup;->onPrepareAddPreference(Landroid/preference/Preference;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 171
    return v4

    .line 174
    :cond_4
    monitor-enter p0

    .line 180
    :try_start_0
    iget-object v1, p0, Landroid/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-static {v1, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 181
    .local v0, "insertionIndex":I
    if-gez v0, :cond_5

    .line 182
    mul-int/lit8 v1, v0, -0x1

    add-int/lit8 v0, v1, -0x1

    .line 185
    :cond_5
    iget-object v1, p0, Landroid/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 188
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    .line 190
    iget-boolean v1, p0, Landroid/preference/PreferenceGroup;->mAttachedToActivity:Z

    if-eqz v1, :cond_6

    .line 191
    invoke-virtual {p1}, Landroid/preference/Preference;->onAttachedToActivity()V

    .line 194
    :cond_6
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->notifyHierarchyChanged()V

    .line 196
    return v5

    .line 174
    .end local v0    # "insertionIndex":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 356
    invoke-super {p0, p1}, Landroid/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 359
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 360
    .local v1, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 361
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 360
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    :cond_0
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 345
    invoke-super {p0, p1}, Landroid/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 348
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 349
    .local v1, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 350
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 344
    :cond_0
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
    .locals 7
    .param p1, "key"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v6, 0x0

    .line 267
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 268
    return-object p0

    .line 270
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    .line 271
    .local v3, "preferenceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 272
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 273
    .local v2, "preference":Landroid/preference/Preference;
    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "curKey":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 276
    return-object v2

    .line 279
    :cond_1
    instance-of v5, v2, Landroid/preference/PreferenceGroup;

    if-eqz v5, :cond_2

    .line 280
    check-cast v2, Landroid/preference/PreferenceGroup;

    .end local v2    # "preference":Landroid/preference/Preference;
    invoke-virtual {v2, p1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 282
    .local v4, "returnedPreference":Landroid/preference/Preference;
    if-eqz v4, :cond_2

    .line 283
    return-object v4

    .line 271
    .end local v4    # "returnedPreference":Landroid/preference/Preference;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 288
    .end local v0    # "curKey":Ljava/lang/String;
    :cond_3
    return-object v6
.end method

.method public getPreference(I)Landroid/preference/Preference;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 136
    iget-object v0, p0, Landroid/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    return-object v0
.end method

.method public getPreferenceCount()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Landroid/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected isOnSameScreenAsChildren()Z
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x1

    return v0
.end method

.method public isOrderingAsAdded()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Landroid/preference/PreferenceGroup;->mOrderingAsAdded:Z

    return v0
.end method

.method public notifyDependencyChange(Z)V
    .locals 3
    .param p1, "disableDependents"    # Z

    .prologue
    .line 327
    invoke-super {p0, p1}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    .line 331
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 332
    .local v1, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 333
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Landroid/preference/Preference;->onParentChanged(Landroid/preference/Preference;Z)V

    .line 332
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 326
    :cond_0
    return-void
.end method

.method protected onAttachedToActivity()V
    .locals 3

    .prologue
    .line 304
    invoke-super {p0}, Landroid/preference/Preference;->onAttachedToActivity()V

    .line 308
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/preference/PreferenceGroup;->mAttachedToActivity:Z

    .line 311
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 312
    .local v1, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 313
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->onAttachedToActivity()V

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 303
    :cond_0
    return-void
.end method

.method protected onPrepareAddPreference(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 249
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Landroid/preference/Preference;->onParentChanged(Landroid/preference/Preference;Z)V

    .line 250
    const/4 v0, 0x1

    return v0
.end method

.method protected onPrepareForRemoval()V
    .locals 1

    .prologue
    .line 319
    invoke-super {p0}, Landroid/preference/Preference;->onPrepareForRemoval()V

    .line 322
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/preference/PreferenceGroup;->mAttachedToActivity:Z

    .line 318
    return-void
.end method

.method public removeAll()V
    .locals 5

    .prologue
    .line 228
    sget-boolean v2, Landroid/preference/PreferenceGroup;->DBG:Z

    if-eqz v2, :cond_0

    .line 229
    const-string/jumbo v2, "PreferenceGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeAll, size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 230
    const-string/jumbo v4, ", key = "

    .line 229
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 230
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 229
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 230
    const-string/jumbo v4, ", title = "

    .line 229
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 230
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 229
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_0
    monitor-enter p0

    .line 234
    :try_start_0
    iget-object v1, p0, Landroid/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    .line 235
    .local v1, "preferenceList":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 236
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    invoke-direct {p0, v2}, Landroid/preference/PreferenceGroup;->removePreferenceInt(Landroid/preference/Preference;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    .line 239
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->notifyHierarchyChanged()V

    .line 227
    return-void

    .line 233
    .end local v0    # "i":I
    .end local v1    # "preferenceList":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public removePreference(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 206
    invoke-direct {p0, p1}, Landroid/preference/PreferenceGroup;->removePreferenceInt(Landroid/preference/Preference;)Z

    move-result v0

    .line 207
    .local v0, "returnValue":Z
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->notifyHierarchyChanged()V

    .line 208
    return v0
.end method

.method public setOrderingAsAdded(Z)V
    .locals 0
    .param p1, "orderingAsAdded"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Landroid/preference/PreferenceGroup;->mOrderingAsAdded:Z

    .line 100
    return-void
.end method

.method sortPreferences()V
    .locals 1

    .prologue
    .line 338
    monitor-enter p0

    .line 339
    :try_start_0
    iget-object v0, p0, Landroid/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 337
    return-void

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
