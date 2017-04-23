.class public abstract Landroid/content/pm/IPackageManager$Stub;
.super Landroid/os/Binder;
.source "IPackageManager.java"

# interfaces
.implements Landroid/content/pm/IPackageManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPackageManager"

.field static final TRANSACTION_activitySupportsIntent:I = 0xe

.field static final TRANSACTION_addCrossProfileIntentFilter:I = 0x4b

.field static final TRANSACTION_addOnPermissionsChangeListener:I = 0x8e

.field static final TRANSACTION_addPackageToPreferred:I = 0x3f

.field static final TRANSACTION_addPermission:I = 0x14

.field static final TRANSACTION_addPermissionAsync:I = 0x70

.field static final TRANSACTION_addPersistentPreferredActivity:I = 0x49

.field static final TRANSACTION_addPreferredActivity:I = 0x45

.field static final TRANSACTION_canForwardTo:I = 0x28

.field static final TRANSACTION_canonicalToCurrentPackageNames:I = 0x7

.field static final TRANSACTION_checkAPKSignatures:I = 0x81

.field static final TRANSACTION_checkPermission:I = 0x12

.field static final TRANSACTION_checkSignatures:I = 0x1e

.field static final TRANSACTION_checkUidPermission:I = 0x13

.field static final TRANSACTION_checkUidSignatures:I = 0x1f

.field static final TRANSACTION_clearApplicationUserData:I = 0x5c

.field static final TRANSACTION_clearCrossProfileIntentFilters:I = 0x4c

.field static final TRANSACTION_clearPackagePersistentPreferredActivities:I = 0x4a

.field static final TRANSACTION_clearPackagePreferredActivities:I = 0x47

.field static final TRANSACTION_copyFiles:I = 0x93

.field static final TRANSACTION_currentToCanonicalPackageNames:I = 0x6

.field static final TRANSACTION_deleteApplicationCacheFiles:I = 0x5b

.field static final TRANSACTION_deletePackage:I = 0x3d

.field static final TRANSACTION_deletePackageAsUser:I = 0x3c

.field static final TRANSACTION_enforceDexOpt:I = 0x66

.field static final TRANSACTION_enterSafeMode:I = 0x61

.field static final TRANSACTION_extendVerificationTimeout:I = 0x75

.field static final TRANSACTION_finishPackageInstall:I = 0x3a

.field static final TRANSACTION_forceDexOpt:I = 0x68

.field static final TRANSACTION_freeStorage:I = 0x5a

.field static final TRANSACTION_freeStorageAndNotify:I = 0x59

.field static final TRANSACTION_getActivityInfo:I = 0xd

.field static final TRANSACTION_getAllIntentFilters:I = 0x7a

.field static final TRANSACTION_getAllPermissionGroups:I = 0xb

.field static final TRANSACTION_getAppOpPermissionPackages:I = 0x26

.field static final TRANSACTION_getApplicationEnabledSetting:I = 0x57

.field static final TRANSACTION_getApplicationHiddenSettingAsUser:I = 0x86

.field static final TRANSACTION_getApplicationInfo:I = 0xc

.field static final TRANSACTION_getBlockUninstallForUser:I = 0x89

.field static final TRANSACTION_getComponentEnabledSetting:I = 0x55

.field static final TRANSACTION_getDefaultAppsBackup:I = 0x4f

.field static final TRANSACTION_getDefaultBrowserPackageName:I = 0x7c

.field static final TRANSACTION_getFlagsForUid:I = 0x23

.field static final TRANSACTION_getHomeActivities:I = 0x53

.field static final TRANSACTION_getInstallLocation:I = 0x72

.field static final TRANSACTION_getInstalledApplications:I = 0x31

.field static final TRANSACTION_getInstalledPackages:I = 0x2f

.field static final TRANSACTION_getInstallerPackageName:I = 0x3e

.field static final TRANSACTION_getInstrumentationInfo:I = 0x36

.field static final TRANSACTION_getIntentFilterVerificationBackup:I = 0x51

.field static final TRANSACTION_getIntentFilterVerifications:I = 0x79

.field static final TRANSACTION_getIntentVerificationStatus:I = 0x77

.field static final TRANSACTION_getKeySetByAlias:I = 0x8a

.field static final TRANSACTION_getLastChosenActivity:I = 0x43

.field static final TRANSACTION_getMoveStatus:I = 0x6b

.field static final TRANSACTION_getNameForUid:I = 0x21

.field static final TRANSACTION_getPackageGids:I = 0x5

.field static final TRANSACTION_getPackageInfo:I = 0x3

.field static final TRANSACTION_getPackageInstaller:I = 0x87

.field static final TRANSACTION_getPackageSizeInfo:I = 0x5d

.field static final TRANSACTION_getPackageUid:I = 0x4

.field static final TRANSACTION_getPackagesForUid:I = 0x20

.field static final TRANSACTION_getPackagesHoldingPermissions:I = 0x30

.field static final TRANSACTION_getPermissionControllerPackageName:I = 0x92

.field static final TRANSACTION_getPermissionFlags:I = 0x19

.field static final TRANSACTION_getPermissionGroupInfo:I = 0xa

.field static final TRANSACTION_getPermissionInfo:I = 0x8

.field static final TRANSACTION_getPersistentApplications:I = 0x32

.field static final TRANSACTION_getPreferredActivities:I = 0x48

.field static final TRANSACTION_getPreferredActivityBackup:I = 0x4d

.field static final TRANSACTION_getPreferredPackages:I = 0x41

.field static final TRANSACTION_getPrivateFlagsForUid:I = 0x24

.field static final TRANSACTION_getProviderInfo:I = 0x11

.field static final TRANSACTION_getReceiverInfo:I = 0xf

.field static final TRANSACTION_getServiceInfo:I = 0x10

.field static final TRANSACTION_getSigningKeySet:I = 0x8b

.field static final TRANSACTION_getSystemAvailableFeatures:I = 0x5f

.field static final TRANSACTION_getSystemSharedLibraryNames:I = 0x5e

.field static final TRANSACTION_getUidForSharedUser:I = 0x22

.field static final TRANSACTION_getVerifierDeviceIdentity:I = 0x7d

.field static final TRANSACTION_grantDefaultPermissionsToEnabledCarrierApps:I = 0x90

.field static final TRANSACTION_grantRuntimePermission:I = 0x16

.field static final TRANSACTION_hasSystemFeature:I = 0x60

.field static final TRANSACTION_hasSystemUidErrors:I = 0x64

.field static final TRANSACTION_installExistingPackageAsUser:I = 0x73

.field static final TRANSACTION_installPackage:I = 0x38

.field static final TRANSACTION_installPackageAsUser:I = 0x39

.field static final TRANSACTION_isFirstBoot:I = 0x7e

.field static final TRANSACTION_isOnlyCoreApps:I = 0x7f

.field static final TRANSACTION_isPackageAvailable:I = 0x2

.field static final TRANSACTION_isPackageFrozen:I = 0x1

.field static final TRANSACTION_isPackageSignedByKeySet:I = 0x8c

.field static final TRANSACTION_isPackageSignedByKeySetExactly:I = 0x8d

.field static final TRANSACTION_isPermissionEnforced:I = 0x83

.field static final TRANSACTION_isPermissionRevokedByPolicy:I = 0x91

.field static final TRANSACTION_isProtectedBroadcast:I = 0x1d

.field static final TRANSACTION_isSafeMode:I = 0x62

.field static final TRANSACTION_isStorageLow:I = 0x84

.field static final TRANSACTION_isUidPrivileged:I = 0x25

.field static final TRANSACTION_isUpgrade:I = 0x80

.field static final TRANSACTION_movePackage:I = 0x6e

.field static final TRANSACTION_movePrimaryStorage:I = 0x6f

.field static final TRANSACTION_nextPackageToClean:I = 0x6a

.field static final TRANSACTION_performBootDexOpt:I = 0x65

.field static final TRANSACTION_performDexOptIfNeeded:I = 0x67

.field static final TRANSACTION_queryContentProviders:I = 0x35

.field static final TRANSACTION_queryInstrumentation:I = 0x37

.field static final TRANSACTION_queryIntentActivities:I = 0x29

.field static final TRANSACTION_queryIntentActivityOptions:I = 0x2a

.field static final TRANSACTION_queryIntentContentProviders:I = 0x2e

.field static final TRANSACTION_queryIntentReceivers:I = 0x2b

.field static final TRANSACTION_queryIntentServices:I = 0x2d

.field static final TRANSACTION_queryPermissionsByGroup:I = 0x9

.field static final TRANSACTION_querySyncProviders:I = 0x34

.field static final TRANSACTION_registerMoveCallback:I = 0x6c

.field static final TRANSACTION_removeOnPermissionsChangeListener:I = 0x8f

.field static final TRANSACTION_removePackageFromPreferred:I = 0x40

.field static final TRANSACTION_removePermission:I = 0x15

.field static final TRANSACTION_replacePreferredActivity:I = 0x46

.field static final TRANSACTION_resetApplicationPreferences:I = 0x42

.field static final TRANSACTION_resetRuntimePermissions:I = 0x18

.field static final TRANSACTION_resolveContentProvider:I = 0x33

.field static final TRANSACTION_resolveIntent:I = 0x27

.field static final TRANSACTION_resolveService:I = 0x2c

.field static final TRANSACTION_restoreDefaultApps:I = 0x50

.field static final TRANSACTION_restoreIntentFilterVerification:I = 0x52

.field static final TRANSACTION_restorePreferredActivities:I = 0x4e

.field static final TRANSACTION_revokeRuntimePermission:I = 0x17

.field static final TRANSACTION_setApplicationEnabledSetting:I = 0x56

.field static final TRANSACTION_setApplicationHiddenSettingAsUser:I = 0x85

.field static final TRANSACTION_setBlockUninstallForUser:I = 0x88

.field static final TRANSACTION_setComponentEnabledSetting:I = 0x54

.field static final TRANSACTION_setDefaultBrowserPackageName:I = 0x7b

.field static final TRANSACTION_setInstallLocation:I = 0x71

.field static final TRANSACTION_setInstallerPackageName:I = 0x3b

.field static final TRANSACTION_setLastChosenActivity:I = 0x44

.field static final TRANSACTION_setPackageStoppedState:I = 0x58

.field static final TRANSACTION_setPermissionEnforced:I = 0x82

.field static final TRANSACTION_shouldShowRequestPermissionRationale:I = 0x1c

.field static final TRANSACTION_systemReady:I = 0x63

.field static final TRANSACTION_unregisterMoveCallback:I = 0x6d

.field static final TRANSACTION_updateExternalMediaStatus:I = 0x69

.field static final TRANSACTION_updateIntentVerificationStatus:I = 0x78

.field static final TRANSACTION_updatePermissionFlags:I = 0x1a

.field static final TRANSACTION_updatePermissionFlagsForAllApps:I = 0x1b

.field static final TRANSACTION_verifyIntentFilter:I = 0x76

.field static final TRANSACTION_verifyPendingInstall:I = 0x74


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string/jumbo v0, "android.content.pm.IPackageManager"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPackageManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 29
    if-nez p0, :cond_0

    .line 30
    return-object v1

    .line 32
    :cond_0
    const-string/jumbo v1, "android.content.pm.IPackageManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/pm/IPackageManager;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Landroid/content/pm/IPackageManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 36
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/content/pm/IPackageManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 105
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 2110
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 48
    :sswitch_0
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    const/4 v6, 0x1

    return v6

    .line 53
    :sswitch_1
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 56
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->isPackageFrozen(Ljava/lang/String;)Z

    move-result v100

    .line 57
    .local v100, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v100, :cond_0

    const/4 v6, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    const/4 v6, 0x1

    return v6

    .line 58
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 63
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v100    # "_result":Z
    :sswitch_2
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 67
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 68
    .local v36, "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v100

    .line 69
    .restart local v100    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    if-eqz v100, :cond_1

    const/4 v6, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    const/4 v6, 0x1

    return v6

    .line 70
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 75
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":I
    .end local v100    # "_result":Z
    :sswitch_3
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 79
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 81
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 82
    .local v9, "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v83

    .line 83
    .local v83, "_result":Landroid/content/pm/PackageInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    if-eqz v83, :cond_2

    .line 85
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    const/4 v6, 0x1

    move-object/from16 v0, v83

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 91
    :goto_2
    const/4 v6, 0x1

    return v6

    .line 89
    :cond_2
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 95
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v36    # "_arg1":I
    .end local v83    # "_result":Landroid/content/pm/PackageInfo;
    :sswitch_4
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 99
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 100
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->getPackageUid(Ljava/lang/String;I)I

    move-result v75

    .line 101
    .local v75, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    move-object/from16 v0, p3

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    const/4 v6, 0x1

    return v6

    .line 107
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":I
    .end local v75    # "_result":I
    :sswitch_5
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 111
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 112
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->getPackageGids(Ljava/lang/String;I)[I

    move-result-object v102

    .line 113
    .local v102, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    move-object/from16 v0, p3

    move-object/from16 v1, v102

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 115
    const/4 v6, 0x1

    return v6

    .line 119
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":I
    .end local v102    # "_result":[I
    :sswitch_6
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v55

    .line 122
    .local v55, "_arg0":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v104

    .line 123
    .local v104, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    move-object/from16 v0, p3

    move-object/from16 v1, v104

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 125
    const/4 v6, 0x1

    return v6

    .line 129
    .end local v55    # "_arg0":[Ljava/lang/String;
    .end local v104    # "_result":[Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v55

    .line 132
    .restart local v55    # "_arg0":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v104

    .line 133
    .restart local v104    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    move-object/from16 v0, p3

    move-object/from16 v1, v104

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 135
    const/4 v6, 0x1

    return v6

    .line 139
    .end local v55    # "_arg0":[Ljava/lang/String;
    .end local v104    # "_result":[Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 143
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 144
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v86

    .line 145
    .local v86, "_result":Landroid/content/pm/PermissionInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    if-eqz v86, :cond_3

    .line 147
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    const/4 v6, 0x1

    move-object/from16 v0, v86

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PermissionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 153
    :goto_3
    const/4 v6, 0x1

    return v6

    .line 151
    :cond_3
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 157
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":I
    .end local v86    # "_result":Landroid/content/pm/PermissionInfo;
    :sswitch_9
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 161
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 162
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v98

    .line 163
    .local v98, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    move-object/from16 v0, p3

    move-object/from16 v1, v98

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 165
    const/4 v6, 0x1

    return v6

    .line 169
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":I
    .end local v98    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :sswitch_a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 173
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 174
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v85

    .line 175
    .local v85, "_result":Landroid/content/pm/PermissionGroupInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    if-eqz v85, :cond_4

    .line 177
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    const/4 v6, 0x1

    move-object/from16 v0, v85

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PermissionGroupInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 183
    :goto_4
    const/4 v6, 0x1

    return v6

    .line 181
    :cond_4
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 187
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":I
    .end local v85    # "_result":Landroid/content/pm/PermissionGroupInfo;
    :sswitch_b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 190
    .local v45, "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getAllPermissionGroups(I)Ljava/util/List;

    move-result-object v97

    .line 191
    .local v97, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    move-object/from16 v0, p3

    move-object/from16 v1, v97

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 193
    const/4 v6, 0x1

    return v6

    .line 197
    .end local v45    # "_arg0":I
    .end local v97    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    :sswitch_c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 201
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 203
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 204
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v78

    .line 205
    .local v78, "_result":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    if-eqz v78, :cond_5

    .line 207
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    const/4 v6, 0x1

    move-object/from16 v0, v78

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 213
    :goto_5
    const/4 v6, 0x1

    return v6

    .line 211
    :cond_5
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 217
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v36    # "_arg1":I
    .end local v78    # "_result":Landroid/content/pm/ApplicationInfo;
    :sswitch_d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6

    .line 220
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    .line 226
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 228
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 229
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v13, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v77

    .line 230
    .local v77, "_result":Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    if-eqz v77, :cond_7

    .line 232
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    const/4 v6, 0x1

    move-object/from16 v0, v77

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 238
    :goto_7
    const/4 v6, 0x1

    return v6

    .line 223
    .end local v9    # "_arg2":I
    .end local v36    # "_arg1":I
    .end local v77    # "_result":Landroid/content/pm/ActivityInfo;
    :cond_6
    const/4 v13, 0x0

    .local v13, "_arg0":Landroid/content/ComponentName;
    goto :goto_6

    .line 236
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    .restart local v9    # "_arg2":I
    .restart local v36    # "_arg1":I
    .restart local v77    # "_result":Landroid/content/pm/ActivityInfo;
    :cond_7
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 242
    .end local v9    # "_arg2":I
    .end local v36    # "_arg1":I
    .end local v77    # "_result":Landroid/content/pm/ActivityInfo;
    :sswitch_e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8

    .line 245
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    .line 251
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9

    .line 252
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Landroid/content/Intent;

    .line 258
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v73

    .line 259
    .local v73, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v73

    invoke-virtual {v0, v13, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v100

    .line 260
    .restart local v100    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    if-eqz v100, :cond_a

    const/4 v6, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    const/4 v6, 0x1

    return v6

    .line 248
    .end local v73    # "_arg2":Ljava/lang/String;
    .end local v100    # "_result":Z
    :cond_8
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_8

    .line 255
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    :cond_9
    const/16 v59, 0x0

    .local v59, "_arg1":Landroid/content/Intent;
    goto :goto_9

    .line 261
    .end local v59    # "_arg1":Landroid/content/Intent;
    .restart local v73    # "_arg2":Ljava/lang/String;
    .restart local v100    # "_result":Z
    :cond_a
    const/4 v6, 0x0

    goto :goto_a

    .line 266
    .end local v73    # "_arg2":Ljava/lang/String;
    .end local v100    # "_result":Z
    :sswitch_f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b

    .line 269
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    .line 275
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 277
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 278
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v13, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v77

    .line 279
    .restart local v77    # "_result":Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    if-eqz v77, :cond_c

    .line 281
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    const/4 v6, 0x1

    move-object/from16 v0, v77

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 287
    :goto_c
    const/4 v6, 0x1

    return v6

    .line 272
    .end local v9    # "_arg2":I
    .end local v36    # "_arg1":I
    .end local v77    # "_result":Landroid/content/pm/ActivityInfo;
    :cond_b
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b

    .line 285
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    .restart local v9    # "_arg2":I
    .restart local v36    # "_arg1":I
    .restart local v77    # "_result":Landroid/content/pm/ActivityInfo;
    :cond_c
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    .line 291
    .end local v9    # "_arg2":I
    .end local v36    # "_arg1":I
    .end local v77    # "_result":Landroid/content/pm/ActivityInfo;
    :sswitch_10
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d

    .line 294
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    .line 300
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 302
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 303
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v13, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v89

    .line 304
    .local v89, "_result":Landroid/content/pm/ServiceInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    if-eqz v89, :cond_e

    .line 306
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    const/4 v6, 0x1

    move-object/from16 v0, v89

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 312
    :goto_e
    const/4 v6, 0x1

    return v6

    .line 297
    .end local v9    # "_arg2":I
    .end local v36    # "_arg1":I
    .end local v89    # "_result":Landroid/content/pm/ServiceInfo;
    :cond_d
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_d

    .line 310
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    .restart local v9    # "_arg2":I
    .restart local v36    # "_arg1":I
    .restart local v89    # "_result":Landroid/content/pm/ServiceInfo;
    :cond_e
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .line 316
    .end local v9    # "_arg2":I
    .end local v36    # "_arg1":I
    .end local v89    # "_result":Landroid/content/pm/ServiceInfo;
    :sswitch_11
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f

    .line 319
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    .line 325
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 327
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 328
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v13, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->getProviderInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;

    move-result-object v87

    .line 329
    .local v87, "_result":Landroid/content/pm/ProviderInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    if-eqz v87, :cond_10

    .line 331
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    const/4 v6, 0x1

    move-object/from16 v0, v87

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 337
    :goto_10
    const/4 v6, 0x1

    return v6

    .line 322
    .end local v9    # "_arg2":I
    .end local v36    # "_arg1":I
    .end local v87    # "_result":Landroid/content/pm/ProviderInfo;
    :cond_f
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_f

    .line 335
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    .restart local v9    # "_arg2":I
    .restart local v36    # "_arg1":I
    .restart local v87    # "_result":Landroid/content/pm/ProviderInfo;
    :cond_10
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10

    .line 341
    .end local v9    # "_arg2":I
    .end local v36    # "_arg1":I
    .end local v87    # "_result":Landroid/content/pm/ProviderInfo;
    :sswitch_12
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 345
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 347
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 348
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, Landroid/content/pm/IPackageManager$Stub;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v75

    .line 349
    .restart local v75    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    move-object/from16 v0, p3

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    const/4 v6, 0x1

    return v6

    .line 355
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v75    # "_result":I
    :sswitch_13
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 359
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 360
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->checkUidPermission(Ljava/lang/String;I)I

    move-result v75

    .line 361
    .restart local v75    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    move-object/from16 v0, p3

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    const/4 v6, 0x1

    return v6

    .line 367
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":I
    .end local v75    # "_result":I
    :sswitch_14
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_11

    .line 370
    sget-object v6, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/content/pm/PermissionInfo;

    .line 375
    :goto_11
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->addPermission(Landroid/content/pm/PermissionInfo;)Z

    move-result v100

    .line 376
    .restart local v100    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    if-eqz v100, :cond_12

    const/4 v6, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    const/4 v6, 0x1

    return v6

    .line 373
    .end local v100    # "_result":Z
    :cond_11
    const/16 v49, 0x0

    .local v49, "_arg0":Landroid/content/pm/PermissionInfo;
    goto :goto_11

    .line 377
    .end local v49    # "_arg0":Landroid/content/pm/PermissionInfo;
    .restart local v100    # "_result":Z
    :cond_12
    const/4 v6, 0x0

    goto :goto_12

    .line 382
    .end local v100    # "_result":Z
    :sswitch_15
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 385
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->removePermission(Ljava/lang/String;)V

    .line 386
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    const/4 v6, 0x1

    return v6

    .line 391
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_16
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 395
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 397
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 398
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, Landroid/content/pm/IPackageManager$Stub;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    .line 399
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    const/4 v6, 0x1

    return v6

    .line 404
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    :sswitch_17
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 408
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 410
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 411
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, Landroid/content/pm/IPackageManager$Stub;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    .line 412
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    const/4 v6, 0x1

    return v6

    .line 417
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    :sswitch_18
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->resetRuntimePermissions()V

    .line 419
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    const/4 v6, 0x1

    return v6

    .line 424
    :sswitch_19
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 428
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 430
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 431
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, Landroid/content/pm/IPackageManager$Stub;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v75

    .line 432
    .restart local v75    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    move-object/from16 v0, p3

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    const/4 v6, 0x1

    return v6

    .line 438
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v75    # "_result":I
    :sswitch_1a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 442
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 444
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 446
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 448
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, "_arg4":I
    move-object/from16 v6, p0

    .line 449
    invoke-virtual/range {v6 .. v11}, Landroid/content/pm/IPackageManager$Stub;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;III)V

    .line 450
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    const/4 v6, 0x1

    return v6

    .line 455
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    :sswitch_1b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 459
    .restart local v45    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 461
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 462
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v45

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2, v9}, Landroid/content/pm/IPackageManager$Stub;->updatePermissionFlagsForAllApps(III)V

    .line 463
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    const/4 v6, 0x1

    return v6

    .line 468
    .end local v9    # "_arg2":I
    .end local v36    # "_arg1":I
    .end local v45    # "_arg0":I
    :sswitch_1c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 472
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 474
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 475
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, Landroid/content/pm/IPackageManager$Stub;->shouldShowRequestPermissionRationale(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v100

    .line 476
    .restart local v100    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    if-eqz v100, :cond_13

    const/4 v6, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 478
    const/4 v6, 0x1

    return v6

    .line 477
    :cond_13
    const/4 v6, 0x0

    goto :goto_13

    .line 482
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v100    # "_result":Z
    :sswitch_1d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 485
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->isProtectedBroadcast(Ljava/lang/String;)Z

    move-result v100

    .line 486
    .restart local v100    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    if-eqz v100, :cond_14

    const/4 v6, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 488
    const/4 v6, 0x1

    return v6

    .line 487
    :cond_14
    const/4 v6, 0x0

    goto :goto_14

    .line 492
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v100    # "_result":Z
    :sswitch_1e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 496
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 497
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v75

    .line 498
    .restart local v75    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    move-object/from16 v0, p3

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 500
    const/4 v6, 0x1

    return v6

    .line 504
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v75    # "_result":I
    :sswitch_1f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 506
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 508
    .restart local v45    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 509
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v45

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->checkUidSignatures(II)I

    move-result v75

    .line 510
    .restart local v75    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    move-object/from16 v0, p3

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    const/4 v6, 0x1

    return v6

    .line 516
    .end local v36    # "_arg1":I
    .end local v45    # "_arg0":I
    .end local v75    # "_result":I
    :sswitch_20
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 518
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 519
    .restart local v45    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v104

    .line 520
    .restart local v104    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    move-object/from16 v0, p3

    move-object/from16 v1, v104

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 522
    const/4 v6, 0x1

    return v6

    .line 526
    .end local v45    # "_arg0":I
    .end local v104    # "_result":[Ljava/lang/String;
    :sswitch_21
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 529
    .restart local v45    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getNameForUid(I)Ljava/lang/String;

    move-result-object v91

    .line 530
    .local v91, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    move-object/from16 v0, p3

    move-object/from16 v1, v91

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 532
    const/4 v6, 0x1

    return v6

    .line 536
    .end local v45    # "_arg0":I
    .end local v91    # "_result":Ljava/lang/String;
    :sswitch_22
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 538
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 539
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->getUidForSharedUser(Ljava/lang/String;)I

    move-result v75

    .line 540
    .restart local v75    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 541
    move-object/from16 v0, p3

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 542
    const/4 v6, 0x1

    return v6

    .line 546
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v75    # "_result":I
    :sswitch_23
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 549
    .restart local v45    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getFlagsForUid(I)I

    move-result v75

    .line 550
    .restart local v75    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 551
    move-object/from16 v0, p3

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 552
    const/4 v6, 0x1

    return v6

    .line 556
    .end local v45    # "_arg0":I
    .end local v75    # "_result":I
    :sswitch_24
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 558
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 559
    .restart local v45    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPrivateFlagsForUid(I)I

    move-result v75

    .line 560
    .restart local v75    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    move-object/from16 v0, p3

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 562
    const/4 v6, 0x1

    return v6

    .line 566
    .end local v45    # "_arg0":I
    .end local v75    # "_result":I
    :sswitch_25
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 569
    .restart local v45    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->isUidPrivileged(I)Z

    move-result v100

    .line 570
    .restart local v100    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 571
    if-eqz v100, :cond_15

    const/4 v6, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 572
    const/4 v6, 0x1

    return v6

    .line 571
    :cond_15
    const/4 v6, 0x0

    goto :goto_15

    .line 576
    .end local v45    # "_arg0":I
    .end local v100    # "_result":Z
    :sswitch_26
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 578
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 579
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v104

    .line 580
    .restart local v104    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    move-object/from16 v0, p3

    move-object/from16 v1, v104

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 582
    const/4 v6, 0x1

    return v6

    .line 586
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v104    # "_result":[Ljava/lang/String;
    :sswitch_27
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 588
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_16

    .line 589
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/Intent;

    .line 595
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 597
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 599
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 600
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v8, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v88

    .line 601
    .local v88, "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    if-eqz v88, :cond_17

    .line 603
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 604
    const/4 v6, 0x1

    move-object/from16 v0, v88

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 609
    :goto_17
    const/4 v6, 0x1

    return v6

    .line 592
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v88    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_16
    const/16 v28, 0x0

    .local v28, "_arg0":Landroid/content/Intent;
    goto :goto_16

    .line 607
    .end local v28    # "_arg0":Landroid/content/Intent;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v9    # "_arg2":I
    .restart local v10    # "_arg3":I
    .restart local v88    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_17
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17

    .line 613
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v88    # "_result":Landroid/content/pm/ResolveInfo;
    :sswitch_28
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 615
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_18

    .line 616
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/Intent;

    .line 622
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 624
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 626
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 627
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v8, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->canForwardTo(Landroid/content/Intent;Ljava/lang/String;II)Z

    move-result v100

    .line 628
    .restart local v100    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    if-eqz v100, :cond_19

    const/4 v6, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 630
    const/4 v6, 0x1

    return v6

    .line 619
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v100    # "_result":Z
    :cond_18
    const/16 v28, 0x0

    .restart local v28    # "_arg0":Landroid/content/Intent;
    goto :goto_18

    .line 629
    .end local v28    # "_arg0":Landroid/content/Intent;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v9    # "_arg2":I
    .restart local v10    # "_arg3":I
    .restart local v100    # "_result":Z
    :cond_19
    const/4 v6, 0x0

    goto :goto_19

    .line 634
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v100    # "_result":Z
    :sswitch_29
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 636
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1a

    .line 637
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/Intent;

    .line 643
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 645
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 647
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 648
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v8, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v99

    .line 649
    .local v99, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 650
    move-object/from16 v0, p3

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 651
    const/4 v6, 0x1

    return v6

    .line 640
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v99    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1a
    const/16 v28, 0x0

    .restart local v28    # "_arg0":Landroid/content/Intent;
    goto :goto_1a

    .line 655
    .end local v28    # "_arg0":Landroid/content/Intent;
    :sswitch_2a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 657
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1b

    .line 658
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    .line 664
    :goto_1b
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/content/Intent;

    .line 666
    .local v14, "_arg1":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v15

    .line 668
    .local v15, "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1c

    .line 669
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/Intent;

    .line 675
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 677
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 679
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .local v19, "_arg6":I
    move-object/from16 v12, p0

    .line 680
    invoke-virtual/range {v12 .. v19}, Landroid/content/pm/IPackageManager$Stub;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v99

    .line 681
    .restart local v99    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 682
    move-object/from16 v0, p3

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 683
    const/4 v6, 0x1

    return v6

    .line 661
    .end local v14    # "_arg1":[Landroid/content/Intent;
    .end local v15    # "_arg2":[Ljava/lang/String;
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":I
    .end local v19    # "_arg6":I
    .end local v99    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1b
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1b

    .line 672
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    .restart local v14    # "_arg1":[Landroid/content/Intent;
    .restart local v15    # "_arg2":[Ljava/lang/String;
    :cond_1c
    const/16 v16, 0x0

    .local v16, "_arg3":Landroid/content/Intent;
    goto :goto_1c

    .line 687
    .end local v14    # "_arg1":[Landroid/content/Intent;
    .end local v15    # "_arg2":[Ljava/lang/String;
    .end local v16    # "_arg3":Landroid/content/Intent;
    :sswitch_2b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 689
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1d

    .line 690
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/Intent;

    .line 696
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 698
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 700
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 701
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v8, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v99

    .line 702
    .restart local v99    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    move-object/from16 v0, p3

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 704
    const/4 v6, 0x1

    return v6

    .line 693
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v99    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1d
    const/16 v28, 0x0

    .restart local v28    # "_arg0":Landroid/content/Intent;
    goto :goto_1d

    .line 708
    .end local v28    # "_arg0":Landroid/content/Intent;
    :sswitch_2c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 710
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1e

    .line 711
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/Intent;

    .line 717
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 719
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 721
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 722
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v8, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v88

    .line 723
    .restart local v88    # "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 724
    if-eqz v88, :cond_1f

    .line 725
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 726
    const/4 v6, 0x1

    move-object/from16 v0, v88

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 731
    :goto_1f
    const/4 v6, 0x1

    return v6

    .line 714
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v88    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_1e
    const/16 v28, 0x0

    .restart local v28    # "_arg0":Landroid/content/Intent;
    goto :goto_1e

    .line 729
    .end local v28    # "_arg0":Landroid/content/Intent;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v9    # "_arg2":I
    .restart local v10    # "_arg3":I
    .restart local v88    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_1f
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1f

    .line 735
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v88    # "_result":Landroid/content/pm/ResolveInfo;
    :sswitch_2d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 737
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_20

    .line 738
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/Intent;

    .line 744
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 746
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 748
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 749
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v8, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v99

    .line 750
    .restart local v99    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 751
    move-object/from16 v0, p3

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 752
    const/4 v6, 0x1

    return v6

    .line 741
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v99    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_20
    const/16 v28, 0x0

    .restart local v28    # "_arg0":Landroid/content/Intent;
    goto :goto_20

    .line 756
    .end local v28    # "_arg0":Landroid/content/Intent;
    :sswitch_2e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 758
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_21

    .line 759
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/Intent;

    .line 765
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 767
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 769
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 770
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v8, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->queryIntentContentProviders(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v99

    .line 771
    .restart local v99    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 772
    move-object/from16 v0, p3

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 773
    const/4 v6, 0x1

    return v6

    .line 762
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v99    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_21
    const/16 v28, 0x0

    .restart local v28    # "_arg0":Landroid/content/Intent;
    goto :goto_21

    .line 777
    .end local v28    # "_arg0":Landroid/content/Intent;
    :sswitch_2f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 779
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 781
    .restart local v45    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 782
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v45

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v84

    .line 783
    .local v84, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 784
    if-eqz v84, :cond_22

    .line 785
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 786
    const/4 v6, 0x1

    move-object/from16 v0, v84

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 791
    :goto_22
    const/4 v6, 0x1

    return v6

    .line 789
    :cond_22
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_22

    .line 795
    .end local v36    # "_arg1":I
    .end local v45    # "_arg0":I
    .end local v84    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_30
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 797
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v55

    .line 799
    .restart local v55    # "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 801
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 802
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2, v9}, Landroid/content/pm/IPackageManager$Stub;->getPackagesHoldingPermissions([Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v84

    .line 803
    .restart local v84    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    if-eqz v84, :cond_23

    .line 805
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 806
    const/4 v6, 0x1

    move-object/from16 v0, v84

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 811
    :goto_23
    const/4 v6, 0x1

    return v6

    .line 809
    :cond_23
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_23

    .line 815
    .end local v9    # "_arg2":I
    .end local v36    # "_arg1":I
    .end local v55    # "_arg0":[Ljava/lang/String;
    .end local v84    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_31
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 817
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 819
    .restart local v45    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 820
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v45

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v84

    .line 821
    .restart local v84    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 822
    if-eqz v84, :cond_24

    .line 823
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 824
    const/4 v6, 0x1

    move-object/from16 v0, v84

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 829
    :goto_24
    const/4 v6, 0x1

    return v6

    .line 827
    :cond_24
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_24

    .line 833
    .end local v36    # "_arg1":I
    .end local v45    # "_arg0":I
    .end local v84    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_32
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 835
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 836
    .restart local v45    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPersistentApplications(I)Ljava/util/List;

    move-result-object v93

    .line 837
    .local v93, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 838
    move-object/from16 v0, p3

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 839
    const/4 v6, 0x1

    return v6

    .line 843
    .end local v45    # "_arg0":I
    .end local v93    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :sswitch_33
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 845
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 847
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 849
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 850
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v87

    .line 851
    .restart local v87    # "_result":Landroid/content/pm/ProviderInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 852
    if-eqz v87, :cond_25

    .line 853
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 854
    const/4 v6, 0x1

    move-object/from16 v0, v87

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 859
    :goto_25
    const/4 v6, 0x1

    return v6

    .line 857
    :cond_25
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_25

    .line 863
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v36    # "_arg1":I
    .end local v87    # "_result":Landroid/content/pm/ProviderInfo;
    :sswitch_34
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 865
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v52

    .line 867
    .local v52, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v6, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v65

    .line 868
    .local v65, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->querySyncProviders(Ljava/util/List;Ljava/util/List;)V

    .line 869
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 870
    move-object/from16 v0, p3

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 871
    move-object/from16 v0, p3

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 872
    const/4 v6, 0x1

    return v6

    .line 876
    .end local v52    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v65    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :sswitch_35
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 878
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 880
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 882
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 883
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->queryContentProviders(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v84

    .line 884
    .restart local v84    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 885
    if-eqz v84, :cond_26

    .line 886
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 887
    const/4 v6, 0x1

    move-object/from16 v0, v84

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 892
    :goto_26
    const/4 v6, 0x1

    return v6

    .line 890
    :cond_26
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_26

    .line 896
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v36    # "_arg1":I
    .end local v84    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_36
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 898
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_27

    .line 899
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    .line 905
    :goto_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 906
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v80

    .line 907
    .local v80, "_result":Landroid/content/pm/InstrumentationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 908
    if-eqz v80, :cond_28

    .line 909
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 910
    const/4 v6, 0x1

    move-object/from16 v0, v80

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/InstrumentationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 915
    :goto_28
    const/4 v6, 0x1

    return v6

    .line 902
    .end local v36    # "_arg1":I
    .end local v80    # "_result":Landroid/content/pm/InstrumentationInfo;
    :cond_27
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_27

    .line 913
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    .restart local v36    # "_arg1":I
    .restart local v80    # "_result":Landroid/content/pm/InstrumentationInfo;
    :cond_28
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_28

    .line 919
    .end local v36    # "_arg1":I
    .end local v80    # "_result":Landroid/content/pm/InstrumentationInfo;
    :sswitch_37
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 921
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 923
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 924
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v94

    .line 925
    .local v94, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 926
    move-object/from16 v0, p3

    move-object/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 927
    const/4 v6, 0x1

    return v6

    .line 931
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":I
    .end local v94    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    :sswitch_38
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 933
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 935
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageInstallObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallObserver2;

    move-result-object v22

    .line 937
    .local v22, "_arg1":Landroid/content/pm/IPackageInstallObserver2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 939
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 941
    .local v24, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_29

    .line 942
    sget-object v6, Landroid/content/pm/VerificationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/pm/VerificationParams;

    .line 948
    :goto_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .local v26, "_arg5":Ljava/lang/String;
    move-object/from16 v20, p0

    move-object/from16 v21, v7

    move/from16 v23, v9

    .line 949
    invoke-virtual/range {v20 .. v26}, Landroid/content/pm/IPackageManager$Stub;->installPackage(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Landroid/content/pm/VerificationParams;Ljava/lang/String;)V

    .line 950
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 951
    const/4 v6, 0x1

    return v6

    .line 945
    .end local v26    # "_arg5":Ljava/lang/String;
    :cond_29
    const/16 v25, 0x0

    .local v25, "_arg4":Landroid/content/pm/VerificationParams;
    goto :goto_29

    .line 955
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v22    # "_arg1":Landroid/content/pm/IPackageInstallObserver2;
    .end local v24    # "_arg3":Ljava/lang/String;
    .end local v25    # "_arg4":Landroid/content/pm/VerificationParams;
    :sswitch_39
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 957
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 959
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageInstallObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallObserver2;

    move-result-object v22

    .line 961
    .restart local v22    # "_arg1":Landroid/content/pm/IPackageInstallObserver2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 963
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 965
    .restart local v24    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2a

    .line 966
    sget-object v6, Landroid/content/pm/VerificationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/pm/VerificationParams;

    .line 972
    :goto_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 974
    .restart local v26    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .restart local v19    # "_arg6":I
    move-object/from16 v20, p0

    move-object/from16 v21, v7

    move/from16 v23, v9

    move/from16 v27, v19

    .line 975
    invoke-virtual/range {v20 .. v27}, Landroid/content/pm/IPackageManager$Stub;->installPackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Landroid/content/pm/VerificationParams;Ljava/lang/String;I)V

    .line 976
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 977
    const/4 v6, 0x1

    return v6

    .line 969
    .end local v19    # "_arg6":I
    .end local v26    # "_arg5":Ljava/lang/String;
    :cond_2a
    const/16 v25, 0x0

    .restart local v25    # "_arg4":Landroid/content/pm/VerificationParams;
    goto :goto_2a

    .line 981
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v22    # "_arg1":Landroid/content/pm/IPackageInstallObserver2;
    .end local v24    # "_arg3":Ljava/lang/String;
    .end local v25    # "_arg4":Landroid/content/pm/VerificationParams;
    :sswitch_3a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 983
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 984
    .restart local v45    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->finishPackageInstall(I)V

    .line 985
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 986
    const/4 v6, 0x1

    return v6

    .line 990
    .end local v45    # "_arg0":I
    :sswitch_3b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 992
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 994
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 995
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 997
    const/4 v6, 0x1

    return v6

    .line 1001
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    :sswitch_3c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1003
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1005
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageDeleteObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver;

    move-result-object v62

    .line 1007
    .local v62, "_arg1":Landroid/content/pm/IPackageDeleteObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1009
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1010
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v7, v1, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    .line 1011
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1012
    const/4 v6, 0x1

    return v6

    .line 1016
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v62    # "_arg1":Landroid/content/pm/IPackageDeleteObserver;
    :sswitch_3d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1018
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1020
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageDeleteObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v61

    .line 1022
    .local v61, "_arg1":Landroid/content/pm/IPackageDeleteObserver2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1024
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1025
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v7, v1, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;II)V

    .line 1026
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1027
    const/4 v6, 0x1

    return v6

    .line 1031
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v61    # "_arg1":Landroid/content/pm/IPackageDeleteObserver2;
    :sswitch_3e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1033
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1034
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v91

    .line 1035
    .restart local v91    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1036
    move-object/from16 v0, p3

    move-object/from16 v1, v91

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1037
    const/4 v6, 0x1

    return v6

    .line 1041
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v91    # "_result":Ljava/lang/String;
    :sswitch_3f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1043
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1044
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->addPackageToPreferred(Ljava/lang/String;)V

    .line 1045
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1046
    const/4 v6, 0x1

    return v6

    .line 1050
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_40
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1052
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1053
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->removePackageFromPreferred(Ljava/lang/String;)V

    .line 1054
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1055
    const/4 v6, 0x1

    return v6

    .line 1059
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_41
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1061
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 1062
    .restart local v45    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPreferredPackages(I)Ljava/util/List;

    move-result-object v96

    .line 1063
    .local v96, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1064
    move-object/from16 v0, p3

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1065
    const/4 v6, 0x1

    return v6

    .line 1069
    .end local v45    # "_arg0":I
    .end local v96    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :sswitch_42
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1071
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 1072
    .restart local v45    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->resetApplicationPreferences(I)V

    .line 1073
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1074
    const/4 v6, 0x1

    return v6

    .line 1078
    .end local v45    # "_arg0":I
    :sswitch_43
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1080
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2b

    .line 1081
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/Intent;

    .line 1087
    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1089
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1090
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v8, v9}, Landroid/content/pm/IPackageManager$Stub;->getLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v88

    .line 1091
    .restart local v88    # "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1092
    if-eqz v88, :cond_2c

    .line 1093
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1094
    const/4 v6, 0x1

    move-object/from16 v0, v88

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1099
    :goto_2c
    const/4 v6, 0x1

    return v6

    .line 1084
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v88    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_2b
    const/16 v28, 0x0

    .restart local v28    # "_arg0":Landroid/content/Intent;
    goto :goto_2b

    .line 1097
    .end local v28    # "_arg0":Landroid/content/Intent;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v9    # "_arg2":I
    .restart local v88    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_2c
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2c

    .line 1103
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v88    # "_result":Landroid/content/pm/ResolveInfo;
    :sswitch_44
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2d

    .line 1106
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/Intent;

    .line 1112
    :goto_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1114
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1116
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2e

    .line 1117
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/content/IntentFilter;

    .line 1123
    :goto_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1125
    .restart local v11    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2f

    .line 1126
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/ComponentName;

    :goto_2f
    move-object/from16 v27, p0

    move-object/from16 v29, v8

    move/from16 v30, v9

    move/from16 v32, v11

    .line 1131
    invoke-virtual/range {v27 .. v33}, Landroid/content/pm/IPackageManager$Stub;->setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V

    .line 1132
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1133
    const/4 v6, 0x1

    return v6

    .line 1109
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v11    # "_arg4":I
    :cond_2d
    const/16 v28, 0x0

    .restart local v28    # "_arg0":Landroid/content/Intent;
    goto :goto_2d

    .line 1120
    .end local v28    # "_arg0":Landroid/content/Intent;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v9    # "_arg2":I
    :cond_2e
    const/16 v31, 0x0

    .local v31, "_arg3":Landroid/content/IntentFilter;
    goto :goto_2e

    .line 1129
    .end local v31    # "_arg3":Landroid/content/IntentFilter;
    .restart local v11    # "_arg4":I
    :cond_2f
    const/16 v33, 0x0

    .local v33, "_arg5":Landroid/content/ComponentName;
    goto :goto_2f

    .line 1137
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v11    # "_arg4":I
    .end local v33    # "_arg5":Landroid/content/ComponentName;
    :sswitch_45
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_30

    .line 1140
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/IntentFilter;

    .line 1146
    :goto_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 1148
    .restart local v36    # "_arg1":I
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v37

    check-cast v37, [Landroid/content/ComponentName;

    .line 1150
    .local v37, "_arg2":[Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_31

    .line 1151
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/content/ComponentName;

    .line 1157
    :goto_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .restart local v11    # "_arg4":I
    move-object/from16 v34, p0

    move/from16 v39, v11

    .line 1158
    invoke-virtual/range {v34 .. v39}, Landroid/content/pm/IPackageManager$Stub;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    .line 1159
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1160
    const/4 v6, 0x1

    return v6

    .line 1143
    .end local v11    # "_arg4":I
    .end local v36    # "_arg1":I
    .end local v37    # "_arg2":[Landroid/content/ComponentName;
    :cond_30
    const/16 v35, 0x0

    .local v35, "_arg0":Landroid/content/IntentFilter;
    goto :goto_30

    .line 1154
    .end local v35    # "_arg0":Landroid/content/IntentFilter;
    .restart local v36    # "_arg1":I
    .restart local v37    # "_arg2":[Landroid/content/ComponentName;
    :cond_31
    const/16 v38, 0x0

    .local v38, "_arg3":Landroid/content/ComponentName;
    goto :goto_31

    .line 1164
    .end local v36    # "_arg1":I
    .end local v37    # "_arg2":[Landroid/content/ComponentName;
    .end local v38    # "_arg3":Landroid/content/ComponentName;
    :sswitch_46
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_32

    .line 1167
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/IntentFilter;

    .line 1173
    :goto_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 1175
    .restart local v36    # "_arg1":I
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v37

    check-cast v37, [Landroid/content/ComponentName;

    .line 1177
    .restart local v37    # "_arg2":[Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_33

    .line 1178
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/content/ComponentName;

    .line 1184
    :goto_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .restart local v11    # "_arg4":I
    move-object/from16 v34, p0

    move/from16 v39, v11

    .line 1185
    invoke-virtual/range {v34 .. v39}, Landroid/content/pm/IPackageManager$Stub;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    .line 1186
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1187
    const/4 v6, 0x1

    return v6

    .line 1170
    .end local v11    # "_arg4":I
    .end local v36    # "_arg1":I
    .end local v37    # "_arg2":[Landroid/content/ComponentName;
    :cond_32
    const/16 v35, 0x0

    .restart local v35    # "_arg0":Landroid/content/IntentFilter;
    goto :goto_32

    .line 1181
    .end local v35    # "_arg0":Landroid/content/IntentFilter;
    .restart local v36    # "_arg1":I
    .restart local v37    # "_arg2":[Landroid/content/ComponentName;
    :cond_33
    const/16 v38, 0x0

    .restart local v38    # "_arg3":Landroid/content/ComponentName;
    goto :goto_33

    .line 1191
    .end local v36    # "_arg1":I
    .end local v37    # "_arg2":[Landroid/content/ComponentName;
    .end local v38    # "_arg3":Landroid/content/ComponentName;
    :sswitch_47
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1194
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 1195
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1196
    const/4 v6, 0x1

    return v6

    .line 1200
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_48
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1202
    new-instance v50, Ljava/util/ArrayList;

    invoke-direct/range {v50 .. v50}, Ljava/util/ArrayList;-><init>()V

    .line 1204
    .local v50, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    new-instance v64, Ljava/util/ArrayList;

    invoke-direct/range {v64 .. v64}, Ljava/util/ArrayList;-><init>()V

    .line 1206
    .local v64, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v73

    .line 1207
    .restart local v73    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v64

    move-object/from16 v3, v73

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    move-result v75

    .line 1208
    .restart local v75    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1209
    move-object/from16 v0, p3

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1210
    move-object/from16 v0, p3

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1211
    move-object/from16 v0, p3

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1212
    const/4 v6, 0x1

    return v6

    .line 1216
    .end local v50    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v64    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v73    # "_arg2":Ljava/lang/String;
    .end local v75    # "_result":I
    :sswitch_49
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_34

    .line 1219
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/IntentFilter;

    .line 1225
    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_35

    .line 1226
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Landroid/content/ComponentName;

    .line 1232
    :goto_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1233
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v58

    invoke-virtual {v0, v1, v2, v9}, Landroid/content/pm/IPackageManager$Stub;->addPersistentPreferredActivity(Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    .line 1234
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1235
    const/4 v6, 0x1

    return v6

    .line 1222
    .end local v9    # "_arg2":I
    :cond_34
    const/16 v35, 0x0

    .restart local v35    # "_arg0":Landroid/content/IntentFilter;
    goto :goto_34

    .line 1229
    .end local v35    # "_arg0":Landroid/content/IntentFilter;
    :cond_35
    const/16 v58, 0x0

    .local v58, "_arg1":Landroid/content/ComponentName;
    goto :goto_35

    .line 1239
    .end local v58    # "_arg1":Landroid/content/ComponentName;
    :sswitch_4a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1243
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 1244
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->clearPackagePersistentPreferredActivities(Ljava/lang/String;I)V

    .line 1245
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1246
    const/4 v6, 0x1

    return v6

    .line 1250
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":I
    :sswitch_4b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_36

    .line 1253
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/IntentFilter;

    .line 1259
    :goto_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1261
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1263
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1265
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .restart local v11    # "_arg4":I
    move-object/from16 v39, p0

    move-object/from16 v40, v35

    move-object/from16 v41, v8

    move/from16 v42, v9

    move/from16 v43, v10

    move/from16 v44, v11

    .line 1266
    invoke-virtual/range {v39 .. v44}, Landroid/content/pm/IPackageManager$Stub;->addCrossProfileIntentFilter(Landroid/content/IntentFilter;Ljava/lang/String;III)V

    .line 1267
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1268
    const/4 v6, 0x1

    return v6

    .line 1256
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    :cond_36
    const/16 v35, 0x0

    .restart local v35    # "_arg0":Landroid/content/IntentFilter;
    goto :goto_36

    .line 1272
    .end local v35    # "_arg0":Landroid/content/IntentFilter;
    :sswitch_4c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 1276
    .restart local v45    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1277
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1, v8}, Landroid/content/pm/IPackageManager$Stub;->clearCrossProfileIntentFilters(ILjava/lang/String;)V

    .line 1278
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1279
    const/4 v6, 0x1

    return v6

    .line 1283
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v45    # "_arg0":I
    :sswitch_4d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1285
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 1286
    .restart local v45    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPreferredActivityBackup(I)[B

    move-result-object v101

    .line 1287
    .local v101, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1288
    move-object/from16 v0, p3

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1289
    const/4 v6, 0x1

    return v6

    .line 1293
    .end local v45    # "_arg0":I
    .end local v101    # "_result":[B
    :sswitch_4e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1295
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v54

    .line 1297
    .local v54, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 1298
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->restorePreferredActivities([BI)V

    .line 1299
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1300
    const/4 v6, 0x1

    return v6

    .line 1304
    .end local v36    # "_arg1":I
    .end local v54    # "_arg0":[B
    :sswitch_4f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 1307
    .restart local v45    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getDefaultAppsBackup(I)[B

    move-result-object v101

    .line 1308
    .restart local v101    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1309
    move-object/from16 v0, p3

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1310
    const/4 v6, 0x1

    return v6

    .line 1314
    .end local v45    # "_arg0":I
    .end local v101    # "_result":[B
    :sswitch_50
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v54

    .line 1318
    .restart local v54    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 1319
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->restoreDefaultApps([BI)V

    .line 1320
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1321
    const/4 v6, 0x1

    return v6

    .line 1325
    .end local v36    # "_arg1":I
    .end local v54    # "_arg0":[B
    :sswitch_51
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 1328
    .restart local v45    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getIntentFilterVerificationBackup(I)[B

    move-result-object v101

    .line 1329
    .restart local v101    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1330
    move-object/from16 v0, p3

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1331
    const/4 v6, 0x1

    return v6

    .line 1335
    .end local v45    # "_arg0":I
    .end local v101    # "_result":[B
    :sswitch_52
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1337
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v54

    .line 1339
    .restart local v54    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 1340
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->restoreIntentFilterVerification([BI)V

    .line 1341
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1342
    const/4 v6, 0x1

    return v6

    .line 1346
    .end local v36    # "_arg1":I
    .end local v54    # "_arg0":[B
    :sswitch_53
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1348
    new-instance v51, Ljava/util/ArrayList;

    invoke-direct/range {v51 .. v51}, Ljava/util/ArrayList;-><init>()V

    .line 1349
    .local v51, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v76

    .line 1350
    .local v76, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1351
    if-eqz v76, :cond_37

    .line 1352
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1353
    const/4 v6, 0x1

    move-object/from16 v0, v76

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1358
    :goto_37
    move-object/from16 v0, p3

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1359
    const/4 v6, 0x1

    return v6

    .line 1356
    :cond_37
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_37

    .line 1363
    .end local v51    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v76    # "_result":Landroid/content/ComponentName;
    :sswitch_54
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1365
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_38

    .line 1366
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    .line 1372
    :goto_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 1374
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1376
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1377
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v13, v1, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V

    .line 1378
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1379
    const/4 v6, 0x1

    return v6

    .line 1369
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v36    # "_arg1":I
    :cond_38
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_38

    .line 1383
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    :sswitch_55
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1385
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_39

    .line 1386
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    .line 1392
    :goto_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 1393
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result v75

    .line 1394
    .restart local v75    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1395
    move-object/from16 v0, p3

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1396
    const/4 v6, 0x1

    return v6

    .line 1389
    .end local v36    # "_arg1":I
    .end local v75    # "_result":I
    :cond_39
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_39

    .line 1400
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    :sswitch_56
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1402
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1404
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 1406
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1408
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1410
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "_arg4":Ljava/lang/String;
    move-object/from16 v39, p0

    move-object/from16 v40, v7

    move/from16 v41, v36

    move/from16 v42, v9

    move/from16 v43, v10

    move-object/from16 v44, v17

    .line 1411
    invoke-virtual/range {v39 .. v44}, Landroid/content/pm/IPackageManager$Stub;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    .line 1412
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1413
    const/4 v6, 0x1

    return v6

    .line 1417
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v36    # "_arg1":I
    :sswitch_57
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1419
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1421
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 1422
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v75

    .line 1423
    .restart local v75    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1424
    move-object/from16 v0, p3

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1425
    const/4 v6, 0x1

    return v6

    .line 1429
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":I
    .end local v75    # "_result":I
    :sswitch_58
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1431
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1433
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3a

    const/16 v66, 0x1

    .line 1435
    .local v66, "_arg1":Z
    :goto_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1436
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->setPackageStoppedState(Ljava/lang/String;ZI)V

    .line 1437
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1438
    const/4 v6, 0x1

    return v6

    .line 1433
    .end local v9    # "_arg2":I
    .end local v66    # "_arg1":Z
    :cond_3a
    const/16 v66, 0x0

    .restart local v66    # "_arg1":Z
    goto :goto_3a

    .line 1442
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v66    # "_arg1":Z
    :sswitch_59
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1444
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1446
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v56

    .line 1448
    .local v56, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v71

    .line 1449
    .local v71, "_arg2":Landroid/content/pm/IPackageDataObserver;
    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    move-object/from16 v3, v71

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->freeStorageAndNotify(Ljava/lang/String;JLandroid/content/pm/IPackageDataObserver;)V

    .line 1450
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1451
    const/4 v6, 0x1

    return v6

    .line 1455
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v56    # "_arg1":J
    .end local v71    # "_arg2":Landroid/content/pm/IPackageDataObserver;
    :sswitch_5a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1457
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1459
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v56

    .line 1461
    .restart local v56    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3b

    .line 1462
    sget-object v6, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Landroid/content/IntentSender;

    .line 1467
    :goto_3b
    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    move-object/from16 v3, v67

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->freeStorage(Ljava/lang/String;JLandroid/content/IntentSender;)V

    .line 1468
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1469
    const/4 v6, 0x1

    return v6

    .line 1465
    :cond_3b
    const/16 v67, 0x0

    .local v67, "_arg2":Landroid/content/IntentSender;
    goto :goto_3b

    .line 1473
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v56    # "_arg1":J
    .end local v67    # "_arg2":Landroid/content/IntentSender;
    :sswitch_5b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1475
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1477
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v60

    .line 1478
    .local v60, "_arg1":Landroid/content/pm/IPackageDataObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 1479
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1480
    const/4 v6, 0x1

    return v6

    .line 1484
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v60    # "_arg1":Landroid/content/pm/IPackageDataObserver;
    :sswitch_5c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1486
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1488
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v60

    .line 1490
    .restart local v60    # "_arg1":Landroid/content/pm/IPackageDataObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1491
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V

    .line 1492
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1493
    const/4 v6, 0x1

    return v6

    .line 1497
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v60    # "_arg1":Landroid/content/pm/IPackageDataObserver;
    :sswitch_5d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1499
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1501
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 1503
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageStatsObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageStatsObserver;

    move-result-object v72

    .line 1504
    .local v72, "_arg2":Landroid/content/pm/IPackageStatsObserver;
    move-object/from16 v0, p0

    move/from16 v1, v36

    move-object/from16 v2, v72

    invoke-virtual {v0, v7, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    .line 1505
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1506
    const/4 v6, 0x1

    return v6

    .line 1510
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":I
    .end local v72    # "_arg2":Landroid/content/pm/IPackageStatsObserver;
    :sswitch_5e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1511
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v104

    .line 1512
    .restart local v104    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1513
    move-object/from16 v0, p3

    move-object/from16 v1, v104

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1514
    const/4 v6, 0x1

    return v6

    .line 1518
    .end local v104    # "_result":[Ljava/lang/String;
    :sswitch_5f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1519
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v103

    .line 1520
    .local v103, "_result":[Landroid/content/pm/FeatureInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1521
    const/4 v6, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v103

    invoke-virtual {v0, v1, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1522
    const/4 v6, 0x1

    return v6

    .line 1526
    .end local v103    # "_result":[Landroid/content/pm/FeatureInfo;
    :sswitch_60
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1528
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1529
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v100

    .line 1530
    .restart local v100    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1531
    if-eqz v100, :cond_3c

    const/4 v6, 0x1

    :goto_3c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1532
    const/4 v6, 0x1

    return v6

    .line 1531
    :cond_3c
    const/4 v6, 0x0

    goto :goto_3c

    .line 1536
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v100    # "_result":Z
    :sswitch_61
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1537
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->enterSafeMode()V

    .line 1538
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1539
    const/4 v6, 0x1

    return v6

    .line 1543
    :sswitch_62
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1544
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isSafeMode()Z

    move-result v100

    .line 1545
    .restart local v100    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1546
    if-eqz v100, :cond_3d

    const/4 v6, 0x1

    :goto_3d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1547
    const/4 v6, 0x1

    return v6

    .line 1546
    :cond_3d
    const/4 v6, 0x0

    goto :goto_3d

    .line 1551
    .end local v100    # "_result":Z
    :sswitch_63
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1552
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->systemReady()V

    .line 1553
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1554
    const/4 v6, 0x1

    return v6

    .line 1558
    :sswitch_64
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1559
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->hasSystemUidErrors()Z

    move-result v100

    .line 1560
    .restart local v100    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1561
    if-eqz v100, :cond_3e

    const/4 v6, 0x1

    :goto_3e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1562
    const/4 v6, 0x1

    return v6

    .line 1561
    :cond_3e
    const/4 v6, 0x0

    goto :goto_3e

    .line 1566
    .end local v100    # "_result":Z
    :sswitch_65
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1567
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->performBootDexOpt()V

    .line 1568
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1569
    const/4 v6, 0x1

    return v6

    .line 1573
    :sswitch_66
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1575
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1576
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->enforceDexOpt(Ljava/lang/String;)Z

    move-result v100

    .line 1577
    .restart local v100    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1578
    if-eqz v100, :cond_3f

    const/4 v6, 0x1

    :goto_3f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1579
    const/4 v6, 0x1

    return v6

    .line 1578
    :cond_3f
    const/4 v6, 0x0

    goto :goto_3f

    .line 1583
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v100    # "_result":Z
    :sswitch_67
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1585
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1587
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1588
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->performDexOptIfNeeded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v100

    .line 1589
    .restart local v100    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1590
    if-eqz v100, :cond_40

    const/4 v6, 0x1

    :goto_40
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1591
    const/4 v6, 0x1

    return v6

    .line 1590
    :cond_40
    const/4 v6, 0x0

    goto :goto_40

    .line 1595
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v100    # "_result":Z
    :sswitch_68
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1597
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1598
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->forceDexOpt(Ljava/lang/String;)V

    .line 1599
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1600
    const/4 v6, 0x1

    return v6

    .line 1604
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_69
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1606
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_41

    const/16 v53, 0x1

    .line 1608
    .local v53, "_arg0":Z
    :goto_41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_42

    const/16 v66, 0x1

    .line 1609
    .restart local v66    # "_arg1":Z
    :goto_42
    move-object/from16 v0, p0

    move/from16 v1, v53

    move/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->updateExternalMediaStatus(ZZ)V

    .line 1610
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1611
    const/4 v6, 0x1

    return v6

    .line 1606
    .end local v53    # "_arg0":Z
    .end local v66    # "_arg1":Z
    :cond_41
    const/16 v53, 0x0

    .restart local v53    # "_arg0":Z
    goto :goto_41

    .line 1608
    :cond_42
    const/16 v66, 0x0

    .restart local v66    # "_arg1":Z
    goto :goto_42

    .line 1615
    .end local v53    # "_arg0":Z
    .end local v66    # "_arg1":Z
    :sswitch_6a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1617
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_43

    .line 1618
    sget-object v6, Landroid/content/pm/PackageCleanItem;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/content/pm/PackageCleanItem;

    .line 1623
    :goto_43
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->nextPackageToClean(Landroid/content/pm/PackageCleanItem;)Landroid/content/pm/PackageCleanItem;

    move-result-object v82

    .line 1624
    .local v82, "_result":Landroid/content/pm/PackageCleanItem;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1625
    if-eqz v82, :cond_44

    .line 1626
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1627
    const/4 v6, 0x1

    move-object/from16 v0, v82

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PackageCleanItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1632
    :goto_44
    const/4 v6, 0x1

    return v6

    .line 1621
    .end local v82    # "_result":Landroid/content/pm/PackageCleanItem;
    :cond_43
    const/16 v48, 0x0

    .local v48, "_arg0":Landroid/content/pm/PackageCleanItem;
    goto :goto_43

    .line 1630
    .end local v48    # "_arg0":Landroid/content/pm/PackageCleanItem;
    .restart local v82    # "_result":Landroid/content/pm/PackageCleanItem;
    :cond_44
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_44

    .line 1636
    .end local v82    # "_result":Landroid/content/pm/PackageCleanItem;
    :sswitch_6b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1638
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 1639
    .restart local v45    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getMoveStatus(I)I

    move-result v75

    .line 1640
    .restart local v75    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1641
    move-object/from16 v0, p3

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1642
    const/4 v6, 0x1

    return v6

    .line 1646
    .end local v45    # "_arg0":I
    .end local v75    # "_result":I
    :sswitch_6c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1648
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;

    move-result-object v47

    .line 1649
    .local v47, "_arg0":Landroid/content/pm/IPackageMoveObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->registerMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V

    .line 1650
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1651
    const/4 v6, 0x1

    return v6

    .line 1655
    .end local v47    # "_arg0":Landroid/content/pm/IPackageMoveObserver;
    :sswitch_6d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1657
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;

    move-result-object v47

    .line 1658
    .restart local v47    # "_arg0":Landroid/content/pm/IPackageMoveObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->unregisterMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V

    .line 1659
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1660
    const/4 v6, 0x1

    return v6

    .line 1664
    .end local v47    # "_arg0":Landroid/content/pm/IPackageMoveObserver;
    :sswitch_6e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1666
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1668
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1669
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->movePackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v75

    .line 1670
    .restart local v75    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1671
    move-object/from16 v0, p3

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1672
    const/4 v6, 0x1

    return v6

    .line 1676
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v75    # "_result":I
    :sswitch_6f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1678
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1679
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->movePrimaryStorage(Ljava/lang/String;)I

    move-result v75

    .line 1680
    .restart local v75    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1681
    move-object/from16 v0, p3

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1682
    const/4 v6, 0x1

    return v6

    .line 1686
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v75    # "_result":I
    :sswitch_70
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1688
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_45

    .line 1689
    sget-object v6, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/content/pm/PermissionInfo;

    .line 1694
    :goto_45
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z

    move-result v100

    .line 1695
    .restart local v100    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1696
    if-eqz v100, :cond_46

    const/4 v6, 0x1

    :goto_46
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1697
    const/4 v6, 0x1

    return v6

    .line 1692
    .end local v100    # "_result":Z
    :cond_45
    const/16 v49, 0x0

    .restart local v49    # "_arg0":Landroid/content/pm/PermissionInfo;
    goto :goto_45

    .line 1696
    .end local v49    # "_arg0":Landroid/content/pm/PermissionInfo;
    .restart local v100    # "_result":Z
    :cond_46
    const/4 v6, 0x0

    goto :goto_46

    .line 1701
    .end local v100    # "_result":Z
    :sswitch_71
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1703
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 1704
    .restart local v45    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->setInstallLocation(I)Z

    move-result v100

    .line 1705
    .restart local v100    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1706
    if-eqz v100, :cond_47

    const/4 v6, 0x1

    :goto_47
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1707
    const/4 v6, 0x1

    return v6

    .line 1706
    :cond_47
    const/4 v6, 0x0

    goto :goto_47

    .line 1711
    .end local v45    # "_arg0":I
    .end local v100    # "_result":Z
    :sswitch_72
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1712
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getInstallLocation()I

    move-result v75

    .line 1713
    .restart local v75    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1714
    move-object/from16 v0, p3

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1715
    const/4 v6, 0x1

    return v6

    .line 1719
    .end local v75    # "_result":I
    :sswitch_73
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1721
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1723
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 1724
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->installExistingPackageAsUser(Ljava/lang/String;I)I

    move-result v75

    .line 1725
    .restart local v75    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1726
    move-object/from16 v0, p3

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1727
    const/4 v6, 0x1

    return v6

    .line 1731
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":I
    .end local v75    # "_result":I
    :sswitch_74
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1733
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 1735
    .restart local v45    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 1736
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v45

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->verifyPendingInstall(II)V

    .line 1737
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1738
    const/4 v6, 0x1

    return v6

    .line 1742
    .end local v36    # "_arg1":I
    .end local v45    # "_arg0":I
    :sswitch_75
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1744
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 1746
    .restart local v45    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 1748
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v68

    .line 1749
    .local v68, "_arg2":J
    move-object/from16 v0, p0

    move/from16 v1, v45

    move/from16 v2, v36

    move-wide/from16 v3, v68

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->extendVerificationTimeout(IIJ)V

    .line 1750
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1751
    const/4 v6, 0x1

    return v6

    .line 1755
    .end local v36    # "_arg1":I
    .end local v45    # "_arg0":I
    .end local v68    # "_arg2":J
    :sswitch_76
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1757
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 1759
    .restart local v45    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 1761
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v74

    .line 1762
    .local v74, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move/from16 v1, v45

    move/from16 v2, v36

    move-object/from16 v3, v74

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->verifyIntentFilter(IILjava/util/List;)V

    .line 1763
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1764
    const/4 v6, 0x1

    return v6

    .line 1768
    .end local v36    # "_arg1":I
    .end local v45    # "_arg0":I
    .end local v74    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_77
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1770
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1772
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 1773
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->getIntentVerificationStatus(Ljava/lang/String;I)I

    move-result v75

    .line 1774
    .restart local v75    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1775
    move-object/from16 v0, p3

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1776
    const/4 v6, 0x1

    return v6

    .line 1780
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":I
    .end local v75    # "_result":I
    :sswitch_78
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1782
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1784
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 1786
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1787
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->updateIntentVerificationStatus(Ljava/lang/String;II)Z

    move-result v100

    .line 1788
    .restart local v100    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1789
    if-eqz v100, :cond_48

    const/4 v6, 0x1

    :goto_48
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1790
    const/4 v6, 0x1

    return v6

    .line 1789
    :cond_48
    const/4 v6, 0x0

    goto :goto_48

    .line 1794
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v36    # "_arg1":I
    .end local v100    # "_result":Z
    :sswitch_79
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1796
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1797
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->getIntentFilterVerifications(Ljava/lang/String;)Ljava/util/List;

    move-result-object v95

    .line 1798
    .local v95, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/IntentFilterVerificationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1799
    move-object/from16 v0, p3

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1800
    const/4 v6, 0x1

    return v6

    .line 1804
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v95    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/IntentFilterVerificationInfo;>;"
    :sswitch_7a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1806
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1807
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->getAllIntentFilters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v92

    .line 1808
    .local v92, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1809
    move-object/from16 v0, p3

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1810
    const/4 v6, 0x1

    return v6

    .line 1814
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v92    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    :sswitch_7b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1816
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1818
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 1819
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->setDefaultBrowserPackageName(Ljava/lang/String;I)Z

    move-result v100

    .line 1820
    .restart local v100    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1821
    if-eqz v100, :cond_49

    const/4 v6, 0x1

    :goto_49
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1822
    const/4 v6, 0x1

    return v6

    .line 1821
    :cond_49
    const/4 v6, 0x0

    goto :goto_49

    .line 1826
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":I
    .end local v100    # "_result":Z
    :sswitch_7c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1828
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 1829
    .restart local v45    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getDefaultBrowserPackageName(I)Ljava/lang/String;

    move-result-object v91

    .line 1830
    .restart local v91    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1831
    move-object/from16 v0, p3

    move-object/from16 v1, v91

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1832
    const/4 v6, 0x1

    return v6

    .line 1836
    .end local v45    # "_arg0":I
    .end local v91    # "_result":Ljava/lang/String;
    :sswitch_7d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1837
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v90

    .line 1838
    .local v90, "_result":Landroid/content/pm/VerifierDeviceIdentity;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1839
    if-eqz v90, :cond_4a

    .line 1840
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1841
    const/4 v6, 0x1

    move-object/from16 v0, v90

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/VerifierDeviceIdentity;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1846
    :goto_4a
    const/4 v6, 0x1

    return v6

    .line 1844
    :cond_4a
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4a

    .line 1850
    .end local v90    # "_result":Landroid/content/pm/VerifierDeviceIdentity;
    :sswitch_7e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1851
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isFirstBoot()Z

    move-result v100

    .line 1852
    .restart local v100    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1853
    if-eqz v100, :cond_4b

    const/4 v6, 0x1

    :goto_4b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1854
    const/4 v6, 0x1

    return v6

    .line 1853
    :cond_4b
    const/4 v6, 0x0

    goto :goto_4b

    .line 1858
    .end local v100    # "_result":Z
    :sswitch_7f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1859
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isOnlyCoreApps()Z

    move-result v100

    .line 1860
    .restart local v100    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1861
    if-eqz v100, :cond_4c

    const/4 v6, 0x1

    :goto_4c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1862
    const/4 v6, 0x1

    return v6

    .line 1861
    :cond_4c
    const/4 v6, 0x0

    goto :goto_4c

    .line 1866
    .end local v100    # "_result":Z
    :sswitch_80
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1867
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isUpgrade()Z

    move-result v100

    .line 1868
    .restart local v100    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1869
    if-eqz v100, :cond_4d

    const/4 v6, 0x1

    :goto_4d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1870
    const/4 v6, 0x1

    return v6

    .line 1869
    :cond_4d
    const/4 v6, 0x0

    goto :goto_4d

    .line 1874
    .end local v100    # "_result":Z
    :sswitch_81
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1876
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1877
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->checkAPKSignatures(Ljava/lang/String;)I

    move-result v75

    .line 1878
    .restart local v75    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1879
    move-object/from16 v0, p3

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1880
    const/4 v6, 0x1

    return v6

    .line 1884
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v75    # "_result":I
    :sswitch_82
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1886
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1888
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4e

    const/16 v66, 0x1

    .line 1889
    .restart local v66    # "_arg1":Z
    :goto_4e
    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->setPermissionEnforced(Ljava/lang/String;Z)V

    .line 1890
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1891
    const/4 v6, 0x1

    return v6

    .line 1888
    .end local v66    # "_arg1":Z
    :cond_4e
    const/16 v66, 0x0

    .restart local v66    # "_arg1":Z
    goto :goto_4e

    .line 1895
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v66    # "_arg1":Z
    :sswitch_83
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1897
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1898
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->isPermissionEnforced(Ljava/lang/String;)Z

    move-result v100

    .line 1899
    .restart local v100    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1900
    if-eqz v100, :cond_4f

    const/4 v6, 0x1

    :goto_4f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1901
    const/4 v6, 0x1

    return v6

    .line 1900
    :cond_4f
    const/4 v6, 0x0

    goto :goto_4f

    .line 1905
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v100    # "_result":Z
    :sswitch_84
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1906
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isStorageLow()Z

    move-result v100

    .line 1907
    .restart local v100    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1908
    if-eqz v100, :cond_50

    const/4 v6, 0x1

    :goto_50
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1909
    const/4 v6, 0x1

    return v6

    .line 1908
    :cond_50
    const/4 v6, 0x0

    goto :goto_50

    .line 1913
    .end local v100    # "_result":Z
    :sswitch_85
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1915
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1917
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_51

    const/16 v66, 0x1

    .line 1919
    .restart local v66    # "_arg1":Z
    :goto_51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1920
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z

    move-result v100

    .line 1921
    .restart local v100    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1922
    if-eqz v100, :cond_52

    const/4 v6, 0x1

    :goto_52
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1923
    const/4 v6, 0x1

    return v6

    .line 1917
    .end local v9    # "_arg2":I
    .end local v66    # "_arg1":Z
    .end local v100    # "_result":Z
    :cond_51
    const/16 v66, 0x0

    .restart local v66    # "_arg1":Z
    goto :goto_51

    .line 1922
    .restart local v9    # "_arg2":I
    .restart local v100    # "_result":Z
    :cond_52
    const/4 v6, 0x0

    goto :goto_52

    .line 1927
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v66    # "_arg1":Z
    .end local v100    # "_result":Z
    :sswitch_86
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1929
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1931
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 1932
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z

    move-result v100

    .line 1933
    .restart local v100    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1934
    if-eqz v100, :cond_53

    const/4 v6, 0x1

    :goto_53
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1935
    const/4 v6, 0x1

    return v6

    .line 1934
    :cond_53
    const/4 v6, 0x0

    goto :goto_53

    .line 1939
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":I
    .end local v100    # "_result":Z
    :sswitch_87
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1940
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v79

    .line 1941
    .local v79, "_result":Landroid/content/pm/IPackageInstaller;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1942
    if-eqz v79, :cond_54

    invoke-interface/range {v79 .. v79}, Landroid/content/pm/IPackageInstaller;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :goto_54
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1943
    const/4 v6, 0x1

    return v6

    .line 1942
    :cond_54
    const/4 v6, 0x0

    goto :goto_54

    .line 1947
    .end local v79    # "_result":Landroid/content/pm/IPackageInstaller;
    :sswitch_88
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1949
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1951
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_55

    const/16 v66, 0x1

    .line 1953
    .restart local v66    # "_arg1":Z
    :goto_55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1954
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->setBlockUninstallForUser(Ljava/lang/String;ZI)Z

    move-result v100

    .line 1955
    .restart local v100    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1956
    if-eqz v100, :cond_56

    const/4 v6, 0x1

    :goto_56
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1957
    const/4 v6, 0x1

    return v6

    .line 1951
    .end local v9    # "_arg2":I
    .end local v66    # "_arg1":Z
    .end local v100    # "_result":Z
    :cond_55
    const/16 v66, 0x0

    .restart local v66    # "_arg1":Z
    goto :goto_55

    .line 1956
    .restart local v9    # "_arg2":I
    .restart local v100    # "_result":Z
    :cond_56
    const/4 v6, 0x0

    goto :goto_56

    .line 1961
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v66    # "_arg1":Z
    .end local v100    # "_result":Z
    :sswitch_89
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1963
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1965
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 1966
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->getBlockUninstallForUser(Ljava/lang/String;I)Z

    move-result v100

    .line 1967
    .restart local v100    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1968
    if-eqz v100, :cond_57

    const/4 v6, 0x1

    :goto_57
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1969
    const/4 v6, 0x1

    return v6

    .line 1968
    :cond_57
    const/4 v6, 0x0

    goto :goto_57

    .line 1973
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":I
    .end local v100    # "_result":Z
    :sswitch_8a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1975
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1977
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1978
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->getKeySetByAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;

    move-result-object v81

    .line 1979
    .local v81, "_result":Landroid/content/pm/KeySet;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1980
    if-eqz v81, :cond_58

    .line 1981
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1982
    const/4 v6, 0x1

    move-object/from16 v0, v81

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/KeySet;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1987
    :goto_58
    const/4 v6, 0x1

    return v6

    .line 1985
    :cond_58
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_58

    .line 1991
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v81    # "_result":Landroid/content/pm/KeySet;
    :sswitch_8b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1993
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1994
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->getSigningKeySet(Ljava/lang/String;)Landroid/content/pm/KeySet;

    move-result-object v81

    .line 1995
    .restart local v81    # "_result":Landroid/content/pm/KeySet;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1996
    if-eqz v81, :cond_59

    .line 1997
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1998
    const/4 v6, 0x1

    move-object/from16 v0, v81

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/KeySet;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2003
    :goto_59
    const/4 v6, 0x1

    return v6

    .line 2001
    :cond_59
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_59

    .line 2007
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v81    # "_result":Landroid/content/pm/KeySet;
    :sswitch_8c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2009
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2011
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5a

    .line 2012
    sget-object v6, Landroid/content/pm/KeySet;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Landroid/content/pm/KeySet;

    .line 2017
    :goto_5a
    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->isPackageSignedByKeySet(Ljava/lang/String;Landroid/content/pm/KeySet;)Z

    move-result v100

    .line 2018
    .restart local v100    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2019
    if-eqz v100, :cond_5b

    const/4 v6, 0x1

    :goto_5b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2020
    const/4 v6, 0x1

    return v6

    .line 2015
    .end local v100    # "_result":Z
    :cond_5a
    const/16 v63, 0x0

    .local v63, "_arg1":Landroid/content/pm/KeySet;
    goto :goto_5a

    .line 2019
    .end local v63    # "_arg1":Landroid/content/pm/KeySet;
    .restart local v100    # "_result":Z
    :cond_5b
    const/4 v6, 0x0

    goto :goto_5b

    .line 2024
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v100    # "_result":Z
    :sswitch_8d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2026
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2028
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5c

    .line 2029
    sget-object v6, Landroid/content/pm/KeySet;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Landroid/content/pm/KeySet;

    .line 2034
    :goto_5c
    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->isPackageSignedByKeySetExactly(Ljava/lang/String;Landroid/content/pm/KeySet;)Z

    move-result v100

    .line 2035
    .restart local v100    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2036
    if-eqz v100, :cond_5d

    const/4 v6, 0x1

    :goto_5d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2037
    const/4 v6, 0x1

    return v6

    .line 2032
    .end local v100    # "_result":Z
    :cond_5c
    const/16 v63, 0x0

    .restart local v63    # "_arg1":Landroid/content/pm/KeySet;
    goto :goto_5c

    .line 2036
    .end local v63    # "_arg1":Landroid/content/pm/KeySet;
    .restart local v100    # "_result":Z
    :cond_5d
    const/4 v6, 0x0

    goto :goto_5d

    .line 2041
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v100    # "_result":Z
    :sswitch_8e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2043
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IOnPermissionsChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOnPermissionsChangeListener;

    move-result-object v46

    .line 2044
    .local v46, "_arg0":Landroid/content/pm/IOnPermissionsChangeListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->addOnPermissionsChangeListener(Landroid/content/pm/IOnPermissionsChangeListener;)V

    .line 2045
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2046
    const/4 v6, 0x1

    return v6

    .line 2050
    .end local v46    # "_arg0":Landroid/content/pm/IOnPermissionsChangeListener;
    :sswitch_8f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2052
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IOnPermissionsChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOnPermissionsChangeListener;

    move-result-object v46

    .line 2053
    .restart local v46    # "_arg0":Landroid/content/pm/IOnPermissionsChangeListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->removeOnPermissionsChangeListener(Landroid/content/pm/IOnPermissionsChangeListener;)V

    .line 2054
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2055
    const/4 v6, 0x1

    return v6

    .line 2059
    .end local v46    # "_arg0":Landroid/content/pm/IOnPermissionsChangeListener;
    :sswitch_90
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2061
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v55

    .line 2063
    .restart local v55    # "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 2064
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V

    .line 2065
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2066
    const/4 v6, 0x1

    return v6

    .line 2070
    .end local v36    # "_arg1":I
    .end local v55    # "_arg0":[Ljava/lang/String;
    :sswitch_91
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2072
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2074
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2076
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2077
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, Landroid/content/pm/IPackageManager$Stub;->isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v100

    .line 2078
    .restart local v100    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2079
    if-eqz v100, :cond_5e

    const/4 v6, 0x1

    :goto_5e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2080
    const/4 v6, 0x1

    return v6

    .line 2079
    :cond_5e
    const/4 v6, 0x0

    goto :goto_5e

    .line 2084
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v100    # "_result":Z
    :sswitch_92
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2085
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v91

    .line 2086
    .restart local v91    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2087
    move-object/from16 v0, p3

    move-object/from16 v1, v91

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2088
    const/4 v6, 0x1

    return v6

    .line 2092
    .end local v91    # "_result":Ljava/lang/String;
    :sswitch_93
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2094
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2096
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2098
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5f

    .line 2099
    sget-object v6, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Landroid/content/pm/ApplicationInfo;

    .line 2104
    :goto_5f
    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v7, v8, v1}, Landroid/content/pm/IPackageManager$Stub;->copyFiles(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)I

    move-result v75

    .line 2105
    .restart local v75    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2106
    move-object/from16 v0, p3

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2107
    const/4 v6, 0x1

    return v6

    .line 2102
    .end local v75    # "_result":I
    :cond_5f
    const/16 v70, 0x0

    .local v70, "_arg2":Landroid/content/pm/ApplicationInfo;
    goto :goto_5f

    .line 44
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x74 -> :sswitch_74
        0x75 -> :sswitch_75
        0x76 -> :sswitch_76
        0x77 -> :sswitch_77
        0x78 -> :sswitch_78
        0x79 -> :sswitch_79
        0x7a -> :sswitch_7a
        0x7b -> :sswitch_7b
        0x7c -> :sswitch_7c
        0x7d -> :sswitch_7d
        0x7e -> :sswitch_7e
        0x7f -> :sswitch_7f
        0x80 -> :sswitch_80
        0x81 -> :sswitch_81
        0x82 -> :sswitch_82
        0x83 -> :sswitch_83
        0x84 -> :sswitch_84
        0x85 -> :sswitch_85
        0x86 -> :sswitch_86
        0x87 -> :sswitch_87
        0x88 -> :sswitch_88
        0x89 -> :sswitch_89
        0x8a -> :sswitch_8a
        0x8b -> :sswitch_8b
        0x8c -> :sswitch_8c
        0x8d -> :sswitch_8d
        0x8e -> :sswitch_8e
        0x8f -> :sswitch_8f
        0x90 -> :sswitch_90
        0x91 -> :sswitch_91
        0x92 -> :sswitch_92
        0x93 -> :sswitch_93
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
