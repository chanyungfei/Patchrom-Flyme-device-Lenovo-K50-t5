.class public Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;
.super Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;
.source "ToggleScreenMagnificationPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "preferenceKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_magnification_enabled"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 35
    return-void

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 8
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "checked"    # Z

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p2}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "checked"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 71
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0918

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c0913

    const-class v4, Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/android/settings/SubSettings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method
