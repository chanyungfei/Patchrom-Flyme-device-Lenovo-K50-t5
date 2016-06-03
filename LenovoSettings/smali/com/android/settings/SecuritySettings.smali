.class public Lcom/flyme/deviceoriginalsettings/SecuritySettings;
.super Lcom/flyme/deviceoriginalsettings/RestrictedSettingsFragment;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/lenovo/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/SecuritySettings$SecuritySearchIndexProvider;
    }
.end annotation


# static fields
.field private static final CONFIRM_EXISTING_FOR_BIOMETRIC_WEAK_IMPROVE_REQUEST:I = 0x7c

.field private static final CONFIRM_EXISTING_FOR_BIOMETRIC_WEAK_LIVELINESS_OFF:I = 0x7d

.field private static final DELAY_MILLIS:I = 0x1f4

.field private static final KEY_ADVANCED_SECURITY:Ljava/lang/String; = "advanced_security"

.field private static final KEY_BIOMETRIC_WEAK_IMPROVE_MATCHING:Ljava/lang/String; = "biometric_weak_improve_matching"

.field private static final KEY_BIOMETRIC_WEAK_LIVELINESS:Ljava/lang/String; = "biometric_weak_liveliness"

.field private static final KEY_CREDENTIALS_INSTALL:Ljava/lang/String; = "credentials_install"

.field private static final KEY_CREDENTIALS_MANAGER:Ljava/lang/String; = "credentials_management"

.field private static final KEY_CREDENTIAL_STORAGE_TYPE:Ljava/lang/String; = "credential_storage_type"

.field private static final KEY_DEVICE_ADMIN_CATEGORY:Ljava/lang/String; = "device_admin_category"

.field private static final KEY_ENABLE_WIDGETS:Ljava/lang/String; = "keyguard_enable_widgets"

.field private static final KEY_LOCK_AFTER_TIMEOUT:Ljava/lang/String; = "lock_after_timeout"

.field private static final KEY_LOCK_ENABLED:Ljava/lang/String; = "lockenabled"

.field private static final KEY_MANAGE_TRUST_AGENTS:Ljava/lang/String; = "manage_trust_agents"

.field private static final KEY_NOTIFICATION_ACCESS:Ljava/lang/String; = "manage_notification_access"

.field private static final KEY_OWNER_INFO_SETTINGS:Ljava/lang/String; = "owner_info_settings"

.field private static final KEY_POWER_INSTANTLY_LOCKS:Ljava/lang/String; = "power_button_instantly_locks"

.field private static final KEY_RESET_CREDENTIALS:Ljava/lang/String; = "reset_credentials"

.field private static final KEY_SCREEN_PINNING:Ljava/lang/String; = "screen_pinning_settings"

.field private static final KEY_SECURITY_CATEGORY:Ljava/lang/String; = "security_category"

.field private static final KEY_SHOW_PASSWORD:Ljava/lang/String; = "show_password"

.field private static final KEY_SIM_LOCK:Ljava/lang/String; = "sim_lock"

.field private static final KEY_SIM_LOCK_PREF:Ljava/lang/String; = "sim_lock_pref"

.field private static final KEY_SIM_LOCK_PREF_QC_DUAL:Ljava/lang/String; = "sim_lock_pref_qc_dual"

.field private static final KEY_SIM_LOCK_PREF_QC_SINGLE:Ljava/lang/String; = "sim_lock_pref_qc_single"

.field private static final KEY_TOGGLE_INSTALL_APPLICATIONS:Ljava/lang/String; = "toggle_install_applications"

.field private static final KEY_TOGGLE_VERIFY_APPLICATIONS:Ljava/lang/String; = "toggle_verify_applications"

.field private static final KEY_UNLOCK_SET_OR_CHANGE:Ljava/lang/String; = "unlock_set_or_change"

.field private static final KEY_VISIBLE_PATTERN:Ljava/lang/String; = "visiblepattern"

.field private static final PACKAGE_MIME_TYPE:Ljava/lang/String; = "application/vnd.android.package-archive"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;

.field private static final SET_OR_CHANGE_LOCK_METHOD_REQUEST:I = 0x7b

.field static final TAG:Ljava/lang/String; = "SecuritySettings"


# instance fields
.field private mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

.field private mChooseLockSettingsHelper:Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

.field private mIsPrimary:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLockAfter:Landroid/preference/ListPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNotificationAccess:Landroid/preference/Preference;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

.field private mResetCredentials:Landroid/preference/Preference;

.field private mScrollHandler:Landroid/os/Handler;

.field private mScrollRunner:Ljava/lang/Runnable;

.field private mScrollToUnknownSources:Z

.field private mShowPassword:Landroid/preference/SwitchPreference;

.field private mSiminfoReceiver:Landroid/content/BroadcastReceiver;

.field private mToggleAppInstallation:Landroid/preference/SwitchPreference;

.field private mToggleVerifyApps:Landroid/preference/SwitchPreference;

.field private mUnknownSourcesPosition:I

.field private mVisiblePattern:Landroid/preference/CheckBoxPreference;

.field private mWarnInstallApps:Landroid/content/DialogInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1400
    new-instance v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings$SecuritySearchIndexProvider;

    invoke-direct {v0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings$SecuritySearchIndexProvider;-><init>()V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 192
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mScrollHandler:Landroid/os/Handler;

    .line 198
    new-instance v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings$1;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings$1;-><init>(Lcom/flyme/deviceoriginalsettings/SecuritySettings;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mScrollRunner:Ljava/lang/Runnable;

    .line 209
    new-instance v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings$2;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings$2;-><init>(Lcom/flyme/deviceoriginalsettings/SecuritySettings;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mSiminfoReceiver:Landroid/content/BroadcastReceiver;

    .line 246
    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/SecuritySettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/SecuritySettings;

    .prologue
    .line 109
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mUnknownSourcesPosition:I

    return v0
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/SecuritySettings;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/SecuritySettings;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/SecuritySettings;)Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/SecuritySettings;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/flyme/deviceoriginalsettings/SecuritySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/SecuritySettings;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/flyme/deviceoriginalsettings/SecuritySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/SecuritySettings;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/flyme/deviceoriginalsettings/SecuritySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/SecuritySettings;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/flyme/deviceoriginalsettings/SecuritySettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/SecuritySettings;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/flyme/deviceoriginalsettings/SecuritySettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/SecuritySettings;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    return-object v0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 29

    .prologue
    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    .line 295
    .local v13, "root":Landroid/preference/PreferenceScreen;
    if-eqz v13, :cond_0

    .line 296
    invoke-virtual {v13}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 298
    :cond_0
    const v23, 0x7f06002d

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    .line 311
    const/4 v12, 0x0

    .line 360
    .local v12, "resid":I
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v23

    if-nez v23, :cond_10

    const/16 v23, 0x1

    :goto_0
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mIsPrimary:Z

    .line 362
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mIsPrimary:Z

    move/from16 v23, v0

    if-nez v23, :cond_1

    .line 364
    const-string v23, "owner_info_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    .line 365
    .local v10, "ownerInfoPref":Landroid/preference/Preference;
    if-eqz v10, :cond_1

    .line 366
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v23

    if-eqz v23, :cond_11

    .line 367
    const v23, 0x7f0c054e

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 376
    .end local v10    # "ownerInfoPref":Landroid/preference/Preference;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mIsPrimary:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2

    .line 377
    invoke-direct/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->isDeviceEncrypted()Z

    move-result v23

    if-eqz v23, :cond_12

    .line 378
    const v23, 0x7f060030

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 397
    :cond_2
    :goto_2
    const-string v23, "lock_after_timeout"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/ListPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    .line 399
    invoke-direct/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->setupLockAfterPreference()V

    .line 400
    invoke-direct/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->updateLockAfterPreferenceSummary()V

    .line 404
    :cond_3
    const-string v23, "biometric_weak_liveliness"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    .line 408
    const-string v23, "visiblepattern"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    .line 411
    const-string v23, "power_button_instantly_locks"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    .line 415
    const v23, 0x7f06002e

    move/from16 v0, v23

    if-eq v12, v0, :cond_4

    const v23, 0x7f060038

    move/from16 v0, v23

    if-ne v12, v0, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v23

    const/high16 v24, 0x10000

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_5

    .line 419
    const-string v23, "security_category"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceGroup;

    .line 421
    .local v14, "securityCategory":Landroid/preference/PreferenceGroup;
    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v23, v0

    if-eqz v23, :cond_5

    .line 422
    const-string v23, "visiblepattern"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 426
    .end local v14    # "securityCategory":Landroid/preference/PreferenceGroup;
    :cond_5
    const-string v23, "security_category"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceGroup;

    .line 429
    .restart local v14    # "securityCategory":Landroid/preference/PreferenceGroup;
    if-eqz v14, :cond_6

    .line 431
    const-string v23, "crypt_keeper_encrypt_title"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 433
    .local v11, "preTemp":Landroid/preference/Preference;
    if-eqz v11, :cond_6

    .line 435
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 442
    .end local v11    # "preTemp":Landroid/preference/Preference;
    :cond_6
    const v23, 0x7f060032

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 523
    const-string v23, "sim_lock"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceGroup;

    .line 524
    .local v17, "simLockPrefGroup":Landroid/preference/PreferenceGroup;
    if-eqz v17, :cond_7

    .line 525
    const-string v23, "sim_lock_pref"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    .line 526
    .local v16, "simLockPref":Landroid/preference/Preference;
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-virtual/range {v16 .. v16}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/flyme/deviceoriginalsettings/Utils;->checkIntentValid(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v23

    if-eqz v23, :cond_14

    .line 527
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/TelephonyPlugin;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v9

    .line 528
    .local v9, "nSimNum":I
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/flyme/deviceoriginalsettings/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v23

    if-nez v23, :cond_13

    if-lez v9, :cond_13

    invoke-direct/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->isSimNotReady()Z

    move-result v23

    if-nez v23, :cond_13

    const/16 v23, 0x1

    :goto_3
    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 534
    .end local v9    # "nSimNum":I
    .end local v16    # "simLockPref":Landroid/preference/Preference;
    :cond_7
    :goto_4
    if-eqz v17, :cond_8

    .line 535
    const-string v23, "sim_lock_pref_qc_single"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    .line 536
    .local v19, "simLockPref_qc_single":Landroid/preference/Preference;
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/TelephonyPlugin;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v9

    .line 537
    .restart local v9    # "nSimNum":I
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-virtual/range {v19 .. v19}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/flyme/deviceoriginalsettings/Utils;->checkIntentValid(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v23

    if-eqz v23, :cond_16

    const/16 v23, 0x2

    move/from16 v0, v23

    if-eq v9, v0, :cond_16

    .line 538
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/flyme/deviceoriginalsettings/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v23

    if-nez v23, :cond_15

    if-lez v9, :cond_15

    invoke-direct/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->isSimNotReadyGaotong()Z

    move-result v23

    if-nez v23, :cond_15

    const/16 v23, 0x1

    :goto_5
    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 544
    .end local v9    # "nSimNum":I
    .end local v19    # "simLockPref_qc_single":Landroid/preference/Preference;
    :cond_8
    :goto_6
    if-eqz v17, :cond_9

    .line 545
    const-string v23, "sim_lock_pref_qc_dual"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    .line 546
    .local v18, "simLockPref_qc_dual":Landroid/preference/Preference;
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/TelephonyPlugin;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v9

    .line 547
    .restart local v9    # "nSimNum":I
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-virtual/range {v18 .. v18}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/flyme/deviceoriginalsettings/Utils;->checkIntentValid(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v23

    if-eqz v23, :cond_18

    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v9, v0, :cond_18

    .line 548
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/flyme/deviceoriginalsettings/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v23

    if-nez v23, :cond_17

    if-lez v9, :cond_17

    invoke-direct/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->isSimNotReadyGaotong()Z

    move-result v23

    if-nez v23, :cond_17

    const/16 v23, 0x1

    :goto_7
    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 556
    .end local v9    # "nSimNum":I
    .end local v18    # "simLockPref_qc_dual":Landroid/preference/Preference;
    :cond_9
    :goto_8
    const-string v23, "keyguard_enable_widgets"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    move-object/from16 v23, v0

    if-eqz v23, :cond_b

    .line 559
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v23

    if-nez v23, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v23

    if-nez v23, :cond_a

    .line 563
    :cond_a
    const-string v23, "security_category"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/PreferenceGroup;

    .line 565
    .local v15, "security_category":Landroid/preference/PreferenceGroup;
    if-eqz v15, :cond_b

    .line 566
    const-string v23, "keyguard_enable_widgets"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 567
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    .line 582
    .end local v15    # "security_category":Landroid/preference/PreferenceGroup;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "lock_to_app_enabled"

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    if-eqz v23, :cond_19

    .line 584
    const-string v23, "screen_pinning_settings"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0c0029

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 593
    :goto_9
    const-string v23, "show_password"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    .line 594
    const-string v23, "reset_credentials"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    .line 597
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    const-string v24, "user"

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/UserManager;

    .line 598
    .local v22, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    .line 599
    const-string v23, "no_config_credentials"

    invoke-virtual/range {v22 .. v23}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_1b

    .line 600
    const-string v23, "credential_storage_type"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 602
    .local v4, "credentialStorageType":Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v23

    if-eqz v23, :cond_1a

    const v20, 0x7f0c0a3b

    .line 605
    .local v20, "storageSummaryRes":I
    :goto_a
    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 607
    const-string v23, "credentials_management"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceGroup;

    .line 608
    .local v5, "credentialsCategory":Landroid/preference/PreferenceGroup;
    if-eqz v5, :cond_c

    .line 609
    invoke-virtual {v5, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 613
    :cond_c
    const-string v23, "reset_credentials"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    .line 619
    .end local v4    # "credentialStorageType":Landroid/preference/Preference;
    .end local v5    # "credentialsCategory":Landroid/preference/PreferenceGroup;
    .end local v20    # "storageSummaryRes":I
    :goto_b
    const-string v23, "device_admin_category"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceGroup;

    .line 621
    .local v6, "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    const-string v23, "toggle_install_applications"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    invoke-direct/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->isNonMarketAppsAllowed()Z

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mIsPrimary:Z

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 629
    const-string v23, "toggle_verify_applications"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/SwitchPreference;

    .line 630
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mIsPrimary:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1d

    invoke-direct/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->showVerifierSetting()Z

    move-result v23

    if-eqz v23, :cond_1d

    .line 631
    invoke-direct/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->isVerifierInstalled()Z

    move-result v23

    if-eqz v23, :cond_1c

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    invoke-direct/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->isVerifyAppsEnabled()Z

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 646
    :goto_c
    const-string v23, "advanced_security"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    .line 648
    .local v3, "advancedCategory":Landroid/preference/PreferenceGroup;
    if-eqz v3, :cond_d

    .line 649
    const-string v23, "manage_trust_agents"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 650
    .local v7, "manageAgents":Landroid/preference/Preference;
    if-eqz v7, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v23

    if-nez v23, :cond_d

    .line 651
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 652
    const v23, 0x7f0c002a

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 658
    .end local v7    # "manageAgents":Landroid/preference/Preference;
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/lenovo/settings/manager/MtkPlug;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkPlug;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lcom/lenovo/settings/manager/MtkPlug;->addAutoBootPrf(Landroid/preference/PreferenceGroup;)V

    .line 659
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/lenovo/settings/manager/MtkPlug;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkPlug;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lcom/lenovo/settings/manager/MtkPlug;->addPermSwitchPrf(Landroid/preference/PreferenceGroup;)V

    .line 660
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/lenovo/settings/manager/MtkPlug;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkPlug;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/settings/manager/MtkPlug;->enablerPermResume()V

    .line 661
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/lenovo/settings/manager/MtkPlug;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkPlug;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lcom/lenovo/settings/manager/MtkPlug;->addPplPrf(Landroid/preference/PreferenceGroup;)V

    .line 662
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/lenovo/settings/manager/MtkPlug;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkPlug;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/settings/manager/MtkPlug;->enablerPplPResume()V

    .line 663
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/lenovo/settings/manager/MtkPlug;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkPlug;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lcom/lenovo/settings/manager/MtkPlug;->addMdmPermCtrlPrf(Landroid/preference/PreferenceGroup;)V

    .line 664
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/lenovo/settings/manager/MtkPlug;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkPlug;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/settings/manager/MtkPlug;->enablerIMdmResume()V

    .line 667
    const-string v23, "manage_notification_access"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    move-object/from16 v23, v0

    if-eqz v23, :cond_e

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mPM:Landroid/content/pm/PackageManager;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/flyme/deviceoriginalsettings/NotificationAccessSettings;->getListenersCount(Landroid/content/pm/PackageManager;)I

    move-result v21

    .line 670
    .local v21, "total":I
    if-nez v21, :cond_1f

    .line 671
    if-eqz v6, :cond_e

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 698
    .end local v21    # "total":I
    :cond_e
    :goto_d
    const-string v23, "restrictions_pin_set"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->shouldBePinProtected(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->protectByRestrictions(Landroid/preference/Preference;)V

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->protectByRestrictions(Landroid/preference/Preference;)V

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->protectByRestrictions(Landroid/preference/Preference;)V

    .line 702
    const-string v23, "credentials_install"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->protectByRestrictions(Landroid/preference/Preference;)V

    .line 704
    :cond_f
    return-object v13

    .line 360
    .end local v3    # "advancedCategory":Landroid/preference/PreferenceGroup;
    .end local v6    # "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    .end local v14    # "securityCategory":Landroid/preference/PreferenceGroup;
    .end local v17    # "simLockPrefGroup":Landroid/preference/PreferenceGroup;
    .end local v22    # "um":Landroid/os/UserManager;
    :cond_10
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 369
    .restart local v10    # "ownerInfoPref":Landroid/preference/Preference;
    :cond_11
    const v23, 0x7f0c054c

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_1

    .line 380
    .end local v10    # "ownerInfoPref":Landroid/preference/Preference;
    :cond_12
    const v23, 0x7f060037

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_2

    .line 528
    .restart local v9    # "nSimNum":I
    .restart local v14    # "securityCategory":Landroid/preference/PreferenceGroup;
    .restart local v16    # "simLockPref":Landroid/preference/Preference;
    .restart local v17    # "simLockPrefGroup":Landroid/preference/PreferenceGroup;
    :cond_13
    const/16 v23, 0x0

    goto/16 :goto_3

    .line 530
    .end local v9    # "nSimNum":I
    :cond_14
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 538
    .end local v16    # "simLockPref":Landroid/preference/Preference;
    .restart local v9    # "nSimNum":I
    .restart local v19    # "simLockPref_qc_single":Landroid/preference/Preference;
    :cond_15
    const/16 v23, 0x0

    goto/16 :goto_5

    .line 540
    :cond_16
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_6

    .line 548
    .end local v19    # "simLockPref_qc_single":Landroid/preference/Preference;
    .restart local v18    # "simLockPref_qc_dual":Landroid/preference/Preference;
    :cond_17
    const/16 v23, 0x0

    goto/16 :goto_7

    .line 550
    :cond_18
    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_8

    .line 587
    .end local v9    # "nSimNum":I
    .end local v18    # "simLockPref_qc_dual":Landroid/preference/Preference;
    :cond_19
    const-string v23, "screen_pinning_settings"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0c0027

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 602
    .restart local v4    # "credentialStorageType":Landroid/preference/Preference;
    .restart local v22    # "um":Landroid/os/UserManager;
    :cond_1a
    const v20, 0x7f0c0a3c

    goto/16 :goto_a

    .line 615
    .end local v4    # "credentialStorageType":Landroid/preference/Preference;
    :cond_1b
    const-string v23, "credentials_management"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 634
    .restart local v6    # "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_c

    .line 638
    :cond_1d
    if-eqz v6, :cond_1e

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_c

    .line 641
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_c

    .line 675
    .restart local v3    # "advancedCategory":Landroid/preference/PreferenceGroup;
    .restart local v21    # "total":I
    :cond_1f
    invoke-direct/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getNumEnabledNotificationListeners()I

    move-result v8

    .line 676
    .local v8, "n":I
    if-nez v8, :cond_20

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0c0597

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 680
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0f0007

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v8, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_d
.end method

.method private disableUnusableTimeouts(J)V
    .locals 11
    .param p1, "maxTimeout"    # J

    .prologue
    .line 1016
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 1017
    .local v0, "entries":[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 1018
    .local v7, "values":[Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1019
    .local v2, "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1020
    .local v3, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, v7

    if-ge v1, v8, :cond_1

    .line 1021
    aget-object v8, v7, v1

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1022
    .local v4, "timeout":J
    cmp-long v8, v4, p1

    if-gtz v8, :cond_0

    .line 1023
    aget-object v8, v0, v1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1024
    aget-object v8, v7, v1

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1020
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1027
    .end local v4    # "timeout":J
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v9, v0

    if-ne v8, v9, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v9, v7

    if-eq v8, v9, :cond_3

    .line 1028
    :cond_2
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1030
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1032
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1033
    .local v6, "userPreference":I
    int-to-long v8, v6

    cmp-long v8, v8, p1

    if-gtz v8, :cond_3

    .line 1034
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1041
    .end local v6    # "userPreference":I
    :cond_3
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1042
    return-void

    .line 1041
    :cond_4
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private errorHanlde()Z
    .locals 17

    .prologue
    .line 708
    const-string v13, "SecuritySettings"

    const-string v14, "errorHanlde()"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    const/4 v6, 0x1

    .line 710
    .local v6, "isSimNotReady":Z
    const/4 v9, 0x0

    .line 711
    .local v9, "simState":I
    const/4 v7, 0x0

    .line 713
    .local v7, "mSubscriptionManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v13, "android.telephony.SubscriptionManager"

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 718
    :goto_0
    const-string v13, "getActiveSubscriptionInfoList"

    const/4 v14, 0x0

    invoke-static {v7, v13, v14}, Lcom/flyme/deviceoriginalsettings/MethodUtils;->getMatchingAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 721
    .local v8, "met":Ljava/lang/reflect/Method;
    invoke-virtual {v7}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 723
    .local v2, "cons":[Ljava/lang/reflect/Constructor;
    const/4 v12, 0x0

    .line 726
    .local v12, "subInfoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v13, 0x0

    :try_start_1
    aget-object v13, v2, v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/util/List;

    move-object v12, v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4

    .line 741
    :goto_1
    if-eqz v12, :cond_2

    .line 742
    const/4 v10, 0x0

    .line 743
    .local v10, "soltId":Ljava/lang/reflect/Field;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v5, v13, :cond_2

    .line 744
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 745
    .local v11, "subInfo":Ljava/lang/Object;
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 747
    .local v1, "clazz":Ljava/lang/Class;
    :try_start_2
    const-string v13, "mSimSlotIndex"

    invoke-virtual {v1, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 748
    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 750
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v13

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v9

    .line 751
    const-string v13, "SecuritySettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "liqxtestgo soltId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " state is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_7

    .line 762
    :goto_3
    if-eqz v6, :cond_1

    const/4 v13, 0x1

    if-eq v9, v13, :cond_0

    if-nez v9, :cond_1

    :cond_0
    const/4 v6, 0x1

    .line 743
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 714
    .end local v1    # "clazz":Ljava/lang/Class;
    .end local v2    # "cons":[Ljava/lang/reflect/Constructor;
    .end local v5    # "i":I
    .end local v8    # "met":Ljava/lang/reflect/Method;
    .end local v10    # "soltId":Ljava/lang/reflect/Field;
    .end local v11    # "subInfo":Ljava/lang/Object;
    .end local v12    # "subInfoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catch_0
    move-exception v4

    .line 715
    .local v4, "e1":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v4}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 727
    .end local v4    # "e1":Ljava/lang/ClassNotFoundException;
    .restart local v2    # "cons":[Ljava/lang/reflect/Constructor;
    .restart local v8    # "met":Ljava/lang/reflect/Method;
    .restart local v12    # "subInfoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catch_1
    move-exception v3

    .line 729
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 730
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v3

    .line 732
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 733
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v3

    .line 735
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 736
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v3

    .line 738
    .local v3, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v3}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    .line 752
    .end local v3    # "e":Ljava/lang/InstantiationException;
    .restart local v1    # "clazz":Ljava/lang/Class;
    .restart local v5    # "i":I
    .restart local v10    # "soltId":Ljava/lang/reflect/Field;
    .restart local v11    # "subInfo":Ljava/lang/Object;
    :catch_5
    move-exception v3

    .line 754
    .local v3, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v3}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_3

    .line 755
    .end local v3    # "e":Ljava/lang/NoSuchFieldException;
    :catch_6
    move-exception v3

    .line 757
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_3

    .line 758
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_7
    move-exception v3

    .line 760
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3

    .line 762
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    const/4 v6, 0x0

    goto :goto_4

    .line 766
    .end local v1    # "clazz":Ljava/lang/Class;
    .end local v5    # "i":I
    .end local v10    # "soltId":Ljava/lang/reflect/Field;
    .end local v11    # "subInfo":Ljava/lang/Object;
    :cond_2
    const-string v13, "SecuritySettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "zhangsy isSimNotReady:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    return v6
.end method

.method private findPreferencePosition(Ljava/lang/CharSequence;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;
    .locals 7
    .param p1, "key"    # Ljava/lang/CharSequence;
    .param p2, "root"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 1122
    invoke-virtual {p2}, Landroid/preference/PreferenceGroup;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1148
    .end local p2    # "root":Landroid/preference/PreferenceGroup;
    :goto_0
    return-object p2

    .line 1126
    .restart local p2    # "root":Landroid/preference/PreferenceGroup;
    :cond_0
    iget v6, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mUnknownSourcesPosition:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mUnknownSourcesPosition:I

    .line 1128
    invoke-virtual {p2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    .line 1129
    .local v4, "preferenceCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_4

    .line 1130
    invoke-virtual {p2, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 1131
    .local v3, "preference":Landroid/preference/Preference;
    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 1132
    .local v0, "curKey":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object p2, v3

    .line 1133
    goto :goto_0

    .line 1136
    :cond_1
    instance-of v6, v3, Landroid/preference/PreferenceGroup;

    if-eqz v6, :cond_2

    move-object v1, v3

    .line 1137
    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 1138
    .local v1, "group":Landroid/preference/PreferenceGroup;
    invoke-direct {p0, p1, v1}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->findPreferencePosition(Ljava/lang/CharSequence;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;

    move-result-object v5

    .line 1139
    .local v5, "returnedPreference":Landroid/preference/Preference;
    if-eqz v5, :cond_3

    move-object p2, v5

    .line 1140
    goto :goto_0

    .line 1144
    .end local v1    # "group":Landroid/preference/PreferenceGroup;
    .end local v5    # "returnedPreference":Landroid/preference/Preference;
    :cond_2
    iget v6, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mUnknownSourcesPosition:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mUnknownSourcesPosition:I

    .line 1129
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1148
    .end local v0    # "curKey":Ljava/lang/String;
    .end local v3    # "preference":Landroid/preference/Preference;
    :cond_4
    const/4 p2, 0x0

    goto :goto_0
.end method

.method private getNumEnabledNotificationListeners()I
    .locals 4

    .prologue
    .line 909
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_notification_listeners"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 911
    .local v1, "flat":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 913
    :goto_0
    return v2

    .line 912
    :cond_1
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 913
    .local v0, "components":[Ljava/lang/String;
    array-length v2, v0

    goto :goto_0
.end method

.method private static getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    const/4 v2, 0x1

    .line 1364
    const/4 v1, 0x0

    .line 1365
    .local v1, "resid":I
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1367
    const-string v4, "user"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1368
    .local v0, "mUm":Landroid/os/UserManager;
    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    .line 1369
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 1371
    .local v2, "singleUser":Z
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1372
    const v1, 0x7f060031

    .line 1394
    .end local v0    # "mUm":Landroid/os/UserManager;
    .end local v2    # "singleUser":Z
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_1
    return v1

    .line 1369
    .restart local v0    # "mUm":Landroid/os/UserManager;
    .restart local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1374
    .restart local v2    # "singleUser":Z
    :cond_1
    const v1, 0x7f06002f

    goto :goto_1

    .line 1376
    .end local v0    # "mUm":Landroid/os/UserManager;
    .end local v2    # "singleUser":Z
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1378
    const v1, 0x7f06002e

    goto :goto_1

    .line 1380
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    .line 1382
    :sswitch_0
    const v1, 0x7f060034

    .line 1383
    goto :goto_1

    .line 1385
    :sswitch_1
    const v1, 0x7f060036

    .line 1386
    goto :goto_1

    .line 1390
    :sswitch_2
    const v1, 0x7f060033

    goto :goto_1

    .line 1380
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method

.method public static hasIccCard(I)Z
    .locals 7
    .param p0, "slotId"    # I

    .prologue
    const/4 v3, 0x0

    .line 794
    const/4 v0, 0x0

    .line 795
    .local v0, "iccIDString":Ljava/lang/String;
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubInfoUsingSlotId(I)Ljava/util/List;

    move-result-object v1

    .line 796
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    const-string v4, "SecuritySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "infos="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 798
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubInfoRecord;

    .line 799
    .local v2, "record":Landroid/telephony/SubInfoRecord;
    if-eqz v2, :cond_0

    .line 800
    iget-object v0, v2, Landroid/telephony/SubInfoRecord;->iccId:Ljava/lang/String;

    .line 804
    .end local v2    # "record":Landroid/telephony/SubInfoRecord;
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method public static hasIccCard50to51(ILandroid/content/Context;)Z
    .locals 2
    .param p0, "slotId"    # I
    .param p1, "con"    # Landroid/content/Context;

    .prologue
    .line 810
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-gt v0, v1, :cond_0

    .line 811
    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->hasIccCard(I)Z

    move-result v0

    .line 813
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->haveIccCardAndroid51(ILandroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method public static haveIccCardAndroid51(ILandroid/content/Context;)Z
    .locals 13
    .param p0, "slotId"    # I
    .param p1, "con"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 819
    const/4 v0, 0x0

    .line 821
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v12, "android.telephony.SubscriptionManager"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 828
    new-array v7, v10, [Ljava/lang/Class;

    .line 829
    .local v7, "objClass":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v12, Landroid/content/Context;

    aput-object v12, v7, v11

    .line 831
    const-string v12, "from"

    invoke-static {v0, v12, v7}, Lcom/flyme/deviceoriginalsettings/MethodUtils;->getMatchingAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 834
    .local v2, "met":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    .line 835
    .local v4, "obj":Ljava/lang/Object;
    new-array v5, v10, [Ljava/lang/Object;

    .line 836
    .local v5, "objArgs":[Ljava/lang/Object;
    aput-object p1, v5, v11

    .line 840
    const/4 v12, 0x0

    :try_start_1
    invoke-virtual {v2, v12, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v4

    .line 857
    const/4 v9, 0x0

    .line 859
    .local v9, "result":Ljava/lang/Object;
    new-array v8, v10, [Ljava/lang/Class;

    .line 860
    .local v8, "objClass1":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v12, Ljava/lang/Integer;

    aput-object v12, v8, v11

    .line 862
    new-array v6, v10, [Ljava/lang/Object;

    .line 863
    .local v6, "objArgs1":[Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v6, v11

    .line 865
    const-string v12, "getActiveSubscriptionInfoForSimSlotIndex"

    invoke-static {v0, v12, v8}, Lcom/flyme/deviceoriginalsettings/MethodUtils;->getMatchingAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 869
    .local v3, "met1":Ljava/lang/reflect/Method;
    :try_start_2
    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_6

    move-result-object v9

    .line 885
    if-eqz v9, :cond_0

    :goto_0
    move v11, v10

    .end local v2    # "met":Ljava/lang/reflect/Method;
    .end local v3    # "met1":Ljava/lang/reflect/Method;
    .end local v4    # "obj":Ljava/lang/Object;
    .end local v5    # "objArgs":[Ljava/lang/Object;
    .end local v6    # "objArgs1":[Ljava/lang/Object;
    .end local v7    # "objClass":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v8    # "objClass1":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v9    # "result":Ljava/lang/Object;
    :goto_1
    return v11

    .line 822
    :catch_0
    move-exception v1

    .line 824
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 842
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v2    # "met":Ljava/lang/reflect/Method;
    .restart local v4    # "obj":Ljava/lang/Object;
    .restart local v5    # "objArgs":[Ljava/lang/Object;
    .restart local v7    # "objClass":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    .line 844
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 847
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 849
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 851
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 853
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 870
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v3    # "met1":Ljava/lang/reflect/Method;
    .restart local v6    # "objArgs1":[Ljava/lang/Object;
    .restart local v8    # "objClass1":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v9    # "result":Ljava/lang/Object;
    :catch_4
    move-exception v1

    .line 872
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 875
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v1

    .line 877
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 879
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_6
    move-exception v1

    .line 881
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    move v10, v11

    .line 885
    goto :goto_0
.end method

.method private isDeviceEncrypted()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 280
    const-string v5, "mount"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 282
    .local v1, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    invoke-interface {v1}, Landroid/os/storage/IMountService;->getEncryptionState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-eq v5, v3, :cond_0

    .line 289
    :goto_0
    return v3

    :cond_0
    move v3, v4

    .line 282
    goto :goto_0

    .line 283
    :catch_0
    move-exception v2

    .line 284
    .local v2, "re":Landroid/os/RemoteException;
    const-string v3, "SecuritySettings"

    const-string v5, "Error getting encryption state"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "re":Landroid/os/RemoteException;
    :goto_1
    move v3, v4

    .line 289
    goto :goto_0

    .line 285
    :catch_1
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v3, "SecuritySettings"

    const-string v5, "Illegal state exception"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1
.end method

.method private isNonMarketAppsAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 917
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isSimNotReady()Z
    .locals 12

    .prologue
    const/4 v6, 0x1

    .line 773
    const/4 v2, 0x1

    .line 774
    .local v2, "isSimNotReady":Z
    const/4 v3, 0x0

    .line 776
    .local v3, "simState":I
    :try_start_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v5

    .line 777
    .local v5, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    if-eqz v5, :cond_2

    .line 778
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubInfoRecord;

    .line 779
    .local v4, "subInfo":Landroid/telephony/SubInfoRecord;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    iget v8, v4, Landroid/telephony/SubInfoRecord;->slotId:I

    invoke-virtual {v7, v8}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    .line 780
    const-string v7, "SecuritySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "liqxtestgo subid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, v4, Landroid/telephony/SubInfoRecord;->subId:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " state is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 781
    if-eqz v2, :cond_1

    if-eq v3, v6, :cond_0

    if-nez v3, :cond_1

    :cond_0
    move v2, v6

    .line 783
    :goto_1
    goto :goto_0

    .line 781
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 785
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "subInfo":Landroid/telephony/SubInfoRecord;
    .end local v5    # "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    :catch_0
    move-exception v0

    .line 787
    .local v0, "e":Ljava/lang/Error;
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->errorHanlde()Z

    move-result v2

    .line 789
    .end local v0    # "e":Ljava/lang/Error;
    :cond_2
    return v2
.end method

.method private isSimNotReadyGaotong()Z
    .locals 5

    .prologue
    .line 893
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 894
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    const/4 v0, 0x1

    .line 895
    .local v0, "disableLock":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 896
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->hasIccCard50to51(ILandroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 897
    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_0

    .line 900
    const/4 v0, 0x0

    .line 895
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 904
    :cond_1
    return v0
.end method

.method private isToggled(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 1291
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1    # "pref":Landroid/preference/Preference;
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    return v0
.end method

.method private isVerifierInstalled()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 937
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 938
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 939
    .local v2, "verification":Landroid/content/Intent;
    const-string v5, "application/vnd.android.package-archive"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 940
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 941
    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 942
    .local v1, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private isVerifyAppsEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 932
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "package_verifier_enable"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setNonMarketAppsAllowed(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 922
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 923
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 929
    :goto_0
    return-void

    .line 927
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "install_non_market_apps"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private setupLockAfterPreference()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-wide/16 v6, 0x0

    .line 984
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 986
    .local v2, "currentTimeout":J
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 987
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 988
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 989
    .local v0, "adminTimeout":J
    :goto_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_off_timeout"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-long v4, v8

    .line 991
    .local v4, "displayTimeout":J
    cmp-long v8, v0, v6

    if-lez v8, :cond_0

    .line 995
    sub-long v8, v0, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->disableUnusableTimeouts(J)V

    .line 997
    :cond_0
    return-void

    .end local v0    # "adminTimeout":J
    .end local v4    # "displayTimeout":J
    :cond_1
    move-wide v0, v6

    .line 988
    goto :goto_0
.end method

.method private showVerifierSetting()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 946
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "verifier_setting_visible"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateLockAfterPreferenceSummary()V
    .locals 13

    .prologue
    .line 1001
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 1003
    .local v2, "currentTimeout":J
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 1004
    .local v1, "entries":[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 1005
    .local v5, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 1006
    .local v0, "best":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v8, v5

    if-ge v4, v8, :cond_1

    .line 1007
    aget-object v8, v5, v4

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1008
    .local v6, "timeout":J
    cmp-long v8, v2, v6

    if-ltz v8, :cond_0

    .line 1009
    move v0, v4

    .line 1006
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1012
    .end local v6    # "timeout":J
    :cond_1
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    const v9, 0x7f0c0544

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v12, v1, v0

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1013
    return-void
.end method

.method private warnAppInstallation()V
    .locals 3

    .prologue
    .line 952
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c075f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c030f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    .line 959
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 1336
    const v0, 0x7f0c0bba

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 1299
    invoke-super {p0, p1, p2, p3}, Lcom/flyme/deviceoriginalsettings/RestrictedSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1300
    const/16 v1, 0x7c

    if-ne p1, v1, :cond_0

    if-ne p2, v2, :cond_0

    .line 1302
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->startBiometricWeakImprove()V

    .line 1314
    :goto_0
    return-void

    .line 1304
    :cond_0
    const/16 v1, 0x7d

    if-ne p1, v1, :cond_1

    if-ne p2, v2, :cond_1

    .line 1306
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 1307
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    goto :goto_0

    .line 1313
    .end local v0    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_1
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    .line 963
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 964
    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    .line 965
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 969
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1352
    const-string v0, "SecuritySettings"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/RestrictedSettingsFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1357
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/manager/MtkPlug;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkPlug;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/manager/MtkPlug;->clearScrapViewsIfNeeded(Landroid/widget/ListView;)V

    .line 1359
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 250
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 252
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 254
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mPM:Landroid/content/pm/PackageManager;

    .line 255
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 257
    new-instance v1, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;

    .line 260
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.settings.SECURITY_SETTINGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mScrollToUnknownSources:Z

    .line 264
    :cond_0
    const-string v1, "SecuritySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v1, "SecuritySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activity name :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 973
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/RestrictedSettingsFragment;->onDestroy()V

    .line 974
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 975
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 977
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/manager/MtkPlug;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkPlug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/manager/MtkPlug;->releaseIMdmPermissionControlExt()V

    .line 978
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/manager/MtkPlug;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkPlug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/manager/MtkPlug;->releaseIPermissionControlExt()V

    .line 979
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/manager/MtkPlug;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkPlug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/manager/MtkPlug;->releaseIPplSettingsEntryExt()V

    .line 980
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1108
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/RestrictedSettingsFragment;->onPause()V

    .line 1109
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/TelephonyPlugin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getConstantStringACTION_SIM_INFO_UPDATE()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1110
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mSiminfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1114
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/manager/MtkPlug;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkPlug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/manager/MtkPlug;->enablerPermPause()V

    .line 1116
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/manager/MtkPlug;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkPlug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/manager/MtkPlug;->enablerPplPPause()V

    .line 1117
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/manager/MtkPlug;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkPlug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/manager/MtkPlug;->enablerIMdmPause()V

    .line 1118
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1319
    const-string v2, "lock_after_timeout"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, p2

    .line 1320
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1322
    .local v1, "timeout":I
    :try_start_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_lock_after_timeout"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1327
    :goto_0
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v2, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1329
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->updateLockAfterPreferenceSummary()V

    .line 1331
    .end local v1    # "timeout":I
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 1324
    .restart local v1    # "timeout":I
    .restart local p2    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1325
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "SecuritySettings"

    const-string v3, "could not persist lockAfter timeout setting"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 12
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 1154
    invoke-virtual {p0, p2}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->ensurePinRestrictedPreference(Landroid/preference/Preference;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1155
    const/4 v1, 0x1

    .line 1287
    :goto_0
    return v1

    .line 1157
    :cond_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v10

    .line 1159
    .local v10, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v11

    .line 1160
    .local v11, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const-string v1, "unlock_set_or_change"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1161
    const-string v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const v3, 0x7f0c0560

    const/16 v4, 0x7b

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 1287
    :cond_1
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1163
    :cond_2
    const-string v1, "biometric_weak_improve_matching"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1164
    new-instance v9, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v9, v1, p0}, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 1166
    .local v9, "helper":Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;
    const/16 v1, 0x7c

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v9, v1, v2, v3}, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1172
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->startBiometricWeakImprove()V

    goto :goto_1

    .line 1174
    .end local v9    # "helper":Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;
    :cond_3
    const-string v1, "biometric_weak_liveliness"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1175
    invoke-direct {p0, p2}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1176
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    goto :goto_1

    .line 1181
    :cond_4
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1182
    new-instance v9, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v9, v1, p0}, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 1184
    .restart local v9    # "helper":Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;
    const/16 v1, 0x7d

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v9, v1, v2, v3}, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1190
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    .line 1191
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 1194
    .end local v9    # "helper":Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;
    :cond_5
    const-string v1, "lockenabled"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1195
    invoke-direct {p0, p2}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v1

    invoke-virtual {v11, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    goto :goto_1

    .line 1196
    :cond_6
    const-string v1, "visiblepattern"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1197
    invoke-direct {p0, p2}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v1

    invoke-virtual {v11, v1}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    goto :goto_1

    .line 1198
    :cond_7
    const-string v1, "power_button_instantly_locks"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1199
    invoke-direct {p0, p2}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v1

    invoke-virtual {v11, v1}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(Z)V

    goto/16 :goto_1

    .line 1200
    :cond_8
    const-string v1, "keyguard_enable_widgets"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1201
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v11, v1}, Lcom/android/internal/widget/LockPatternUtils;->setWidgetsEnabled(Z)V

    goto/16 :goto_1

    .line 1202
    :cond_9
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_b

    .line 1203
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1204
    .local v0, "context":Landroid/content/Context;
    const v1, 0x7f0c0894

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c0196

    const-class v4, Lcom/flyme/deviceoriginalsettings/SecuritySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_password"

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    :goto_2
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_a
    const/4 v1, 0x0

    goto :goto_2

    .line 1215
    .end local v0    # "context":Landroid/content/Context;
    :cond_b
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_d

    .line 1216
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1217
    .restart local v0    # "context":Landroid/content/Context;
    const v1, 0x7f0c07fb

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c0196

    const-class v4, Lcom/flyme/deviceoriginalsettings/SecuritySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1227
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1228
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->warnAppInstallation()V

    goto/16 :goto_1

    .line 1230
    :cond_c
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    goto/16 :goto_1

    .line 1232
    .end local v0    # "context":Landroid/content/Context;
    :cond_d
    const-string v1, "toggle_verify_applications"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1233
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1234
    .restart local v0    # "context":Landroid/content/Context;
    const v1, 0x7f0c07fd

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c0196

    const-class v4, Lcom/flyme/deviceoriginalsettings/SecuritySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "package_verifier_enable"

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_3
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_e
    const/4 v1, 0x0

    goto :goto_3

    .line 1246
    .end local v0    # "context":Landroid/content/Context;
    :cond_f
    const-string v1, "sim_lock_pref"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1248
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c06db

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0c0196

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "com.lenovo.geminisettings"

    const-string v8, "com.lenovo.geminisettings.IccLockSettings"

    invoke-static/range {v1 .. v8}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    invoke-super {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto/16 :goto_0

    .line 1256
    :cond_10
    const-string v1, "trusted_credentials"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1258
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/lenovo/settings/TrustedCredentialsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 1259
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1261
    :cond_11
    const-string v1, "credentials_install"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1263
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0a34

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0c0196

    const/4 v5, 0x0

    const-string v6, "android.credentials.INSTALL"

    const-string v7, "com.android.certinstaller"

    const-string v8, "com.android.certinstaller.CertInstallerMain"

    invoke-static/range {v1 .. v8}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    invoke-super {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto/16 :goto_0

    .line 1271
    :cond_12
    const-string v1, "manage_trust_agents"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1273
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0023

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0c0023

    const-class v5, Lcom/flyme/deviceoriginalsettings/TrustAgentSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    invoke-super {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto/16 :goto_0

    .line 1284
    :cond_13
    invoke-super {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1046
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/RestrictedSettingsFragment;->onResume()V

    .line 1050
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 1053
    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mScrollToUnknownSources:Z

    if-eqz v2, :cond_0

    .line 1054
    iput-boolean v4, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mScrollToUnknownSources:Z

    .line 1056
    iput v4, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mUnknownSourcesPosition:I

    .line 1057
    const-string v2, "toggle_install_applications"

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-direct {p0, v2, v5}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->findPreferencePosition(Ljava/lang/CharSequence;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;

    .line 1058
    const-string v2, "SecuritySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "find position unknown resources: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mUnknownSourcesPosition:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/lenovo/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mScrollHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mScrollRunner:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1063
    :cond_0
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    .line 1064
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    .line 1065
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakLivelinessEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1068
    :cond_1
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_2

    .line 1069
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1071
    :cond_2
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_3

    .line 1072
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1075
    :cond_3
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_4

    .line 1076
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "show_password"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_8

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1080
    :cond_4
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    if-eqz v2, :cond_5

    .line 1081
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v5}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    :goto_1
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1084
    :cond_5
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_6

    .line 1085
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getWidgetsEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1093
    :cond_6
    :try_start_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/TelephonyPlugin;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getConstantStringACTION_SIM_INFO_UPDATE()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 1094
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mSiminfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/TelephonyPlugin;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getConstantStringACTION_SIM_INFO_UPDATE()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1103
    :cond_7
    :goto_2
    return-void

    :cond_8
    move v2, v4

    .line 1076
    goto :goto_0

    :cond_9
    move v3, v4

    .line 1081
    goto :goto_1

    .line 1098
    :catch_0
    move-exception v0

    .line 1099
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SecuritySettings"

    const-string v3, "registerReceiver sim info update error"

    invoke-static {v2, v3}, Lcom/lenovo/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public startBiometricWeakImprove()V
    .locals 3

    .prologue
    .line 1340
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1341
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.AddToSetup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1342
    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 1343
    return-void
.end method
