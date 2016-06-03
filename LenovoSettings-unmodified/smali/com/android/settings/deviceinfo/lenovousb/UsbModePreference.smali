.class public Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;
.super Landroid/preference/Preference;
.source "UsbModePreference.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "UsbModePreference"


# instance fields
.field private mChecked:Z

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mPreferenceCheck:Landroid/widget/CheckBox;

.field private mPreferenceSummary:Landroid/widget/TextView;

.field private mPreferenceTitle:Landroid/widget/TextView;

.field private mSummary:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->mTitle:Ljava/lang/CharSequence;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->mSummary:Ljava/lang/CharSequence;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->mChecked:Z

    .line 46
    const v0, 0x7f0400b8

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->setLayoutResource(I)V

    .line 47
    return-void
.end method


# virtual methods
.method public getRadio()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->mPreferenceCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, "layout":Landroid/view/View;
    const v1, 0x7f0b017d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->mPreferenceTitle:Landroid/widget/TextView;

    .line 53
    const v1, 0x7f0b017e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->mPreferenceSummary:Landroid/widget/TextView;

    .line 54
    const v1, 0x7f0b017f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->mPreferenceCheck:Landroid/widget/CheckBox;

    .line 56
    iget-object v1, p0, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v1, p0, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 58
    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->mChecked:Z

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->setChecked(Z)V

    .line 60
    iget-object v1, p0, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->mPreferenceCheck:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v1, p0, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->mPreferenceCheck:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 62
    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->mPreferenceCheck:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->mPreferenceCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->mChecked:Z

    .line 141
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->mChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->mChecked:Z

    .line 131
    iget-object v0, p0, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->mPreferenceCheck:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->mPreferenceCheck:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->mChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public setClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->mClickListener:Landroid/view/View$OnClickListener;

    .line 150
    iget-object v0, p0, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->mPreferenceCheck:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->mPreferenceCheck:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setSummary(I)V
    .locals 1
    .param p1, "summaryResId"    # I

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 127
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 14
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v10, 0x0

    .line 91
    iput-object p1, p0, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->mSummary:Ljava/lang/CharSequence;

    .line 92
    iget-object v11, p0, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->mPreferenceSummary:Landroid/widget/TextView;

    if-nez v11, :cond_0

    .line 122
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v11, p0, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->mPreferenceSummary:Landroid/widget/TextView;

    invoke-virtual {v11, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    instance-of v11, p1, Landroid/text/Spanned;

    if-eqz v11, :cond_2

    .line 98
    iget-object v11, p0, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->mPreferenceSummary:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    move-object v7, p1

    .line 99
    check-cast v7, Landroid/text/Spanned;

    .line 100
    .local v7, "sp":Landroid/text/Spanned;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 101
    .local v3, "end":I
    const-class v11, Landroid/text/style/URLSpan;

    invoke-interface {v7, v10, v3, v11}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/URLSpan;

    .line 102
    .local v9, "urls":[Landroid/text/style/URLSpan;
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 103
    .local v1, "builder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 104
    new-instance v2, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference$1;

    invoke-direct {v2, p0}, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference$1;-><init>(Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;)V

    .line 114
    .local v2, "click":Landroid/text/style/ClickableSpan;
    move-object v0, v9

    .local v0, "arr$":[Landroid/text/style/URLSpan;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_1

    aget-object v8, v0, v5

    .line 115
    .local v8, "url":Landroid/text/style/URLSpan;
    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    const/16 v13, 0x21

    invoke-virtual {v1, v2, v11, v12, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 114
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 117
    .end local v8    # "url":Landroid/text/style/URLSpan;
    :cond_1
    iget-object v11, p0, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->mPreferenceSummary:Landroid/widget/TextView;

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    .end local v0    # "arr$":[Landroid/text/style/URLSpan;
    .end local v1    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v2    # "click":Landroid/text/style/ClickableSpan;
    .end local v3    # "end":I
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "sp":Landroid/text/Spanned;
    .end local v9    # "urls":[Landroid/text/style/URLSpan;
    :cond_2
    iget-object v11, p0, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->mSummary:Ljava/lang/CharSequence;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->mSummary:Ljava/lang/CharSequence;

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_3
    const/4 v4, 0x1

    .line 121
    .local v4, "hideSummary":Z
    :goto_2
    iget-object v11, p0, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->mPreferenceSummary:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    const/16 v10, 0x8

    :cond_4
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .end local v4    # "hideSummary":Z
    :cond_5
    move v4, v10

    .line 120
    goto :goto_2
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleResId"    # I

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 82
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->mTitle:Ljava/lang/CharSequence;

    .line 73
    iget-object v0, p0, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->mPreferenceTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->mPreferenceTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
