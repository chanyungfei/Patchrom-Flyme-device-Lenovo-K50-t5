.class final Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;
.super Landroid/database/ContentObserver;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AccessibilityContentObserver"
.end annotation


# instance fields
.field private final mAccessibilityEnabledUri:Landroid/net/Uri;

.field private final mDisplayDaltonizerEnabledUri:Landroid/net/Uri;

.field private final mDisplayDaltonizerUri:Landroid/net/Uri;

.field private final mDisplayInversionEnabledUri:Landroid/net/Uri;

.field private final mDisplayMagnificationEnabledUri:Landroid/net/Uri;

.field private final mEnabledAccessibilityServicesUri:Landroid/net/Uri;

.field private final mEnhancedWebAccessibilityUri:Landroid/net/Uri;

.field private final mHighTextContrastUri:Landroid/net/Uri;

.field private final mTouchExplorationEnabledUri:Landroid/net/Uri;

.field private final mTouchExplorationGrantedAccessibilityServicesUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 3919
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3920
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3890
    const-string/jumbo v0, "accessibility_enabled"

    .line 3889
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilityEnabledUri:Landroid/net/Uri;

    .line 3893
    const-string/jumbo v0, "touch_exploration_enabled"

    .line 3892
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTouchExplorationEnabledUri:Landroid/net/Uri;

    .line 3896
    const-string/jumbo v0, "accessibility_display_magnification_enabled"

    .line 3895
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mDisplayMagnificationEnabledUri:Landroid/net/Uri;

    .line 3899
    const-string/jumbo v0, "enabled_accessibility_services"

    .line 3898
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mEnabledAccessibilityServicesUri:Landroid/net/Uri;

    .line 3902
    const-string/jumbo v0, "touch_exploration_granted_accessibility_services"

    .line 3901
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTouchExplorationGrantedAccessibilityServicesUri:Landroid/net/Uri;

    .line 3905
    const-string/jumbo v0, "accessibility_script_injection"

    .line 3904
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mEnhancedWebAccessibilityUri:Landroid/net/Uri;

    .line 3908
    const-string/jumbo v0, "accessibility_display_inversion_enabled"

    .line 3907
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mDisplayInversionEnabledUri:Landroid/net/Uri;

    .line 3911
    const-string/jumbo v0, "accessibility_display_daltonizer_enabled"

    .line 3910
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mDisplayDaltonizerEnabledUri:Landroid/net/Uri;

    .line 3914
    const-string/jumbo v0, "accessibility_display_daltonizer"

    .line 3913
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mDisplayDaltonizerUri:Landroid/net/Uri;

    .line 3917
    const-string/jumbo v0, "high_text_contrast_enabled"

    .line 3916
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mHighTextContrastUri:Landroid/net/Uri;

    .line 3919
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 3949
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get8(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3952
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap12(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 3955
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    monitor-exit v2

    .line 3956
    return-void

    .line 3959
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilityEnabledUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3960
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap1(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3961
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap18(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v2

    .line 3948
    return-void

    .line 3963
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTouchExplorationEnabledUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3964
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap8(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3965
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap18(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3949
    .end local v0    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 3967
    .restart local v0    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mDisplayMagnificationEnabledUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3968
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap4(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3969
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap18(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    goto :goto_0

    .line 3971
    :cond_4
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mEnabledAccessibilityServicesUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3972
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap5(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3973
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap18(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    goto :goto_0

    .line 3975
    :cond_5
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTouchExplorationGrantedAccessibilityServicesUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3976
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap9(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3977
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap18(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    goto :goto_0

    .line 3979
    :cond_6
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mEnhancedWebAccessibilityUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3980
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap6(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3981
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap18(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    goto :goto_0

    .line 3983
    :cond_7
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mDisplayInversionEnabledUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 3984
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mDisplayDaltonizerEnabledUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 3983
    if-nez v1, :cond_8

    .line 3985
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mDisplayDaltonizerUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 3983
    if-eqz v1, :cond_9

    .line 3986
    :cond_8
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap3(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3987
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap27(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    goto/16 :goto_0

    .line 3989
    :cond_9
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mHighTextContrastUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3990
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap7(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3991
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap18(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public register(Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 3924
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilityEnabledUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 3926
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTouchExplorationEnabledUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 3928
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mDisplayMagnificationEnabledUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 3930
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mEnabledAccessibilityServicesUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 3933
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTouchExplorationGrantedAccessibilityServicesUri:Landroid/net/Uri;

    .line 3932
    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 3935
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mEnhancedWebAccessibilityUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 3938
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mDisplayInversionEnabledUri:Landroid/net/Uri;

    .line 3937
    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 3940
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mDisplayDaltonizerEnabledUri:Landroid/net/Uri;

    .line 3939
    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 3942
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mDisplayDaltonizerUri:Landroid/net/Uri;

    .line 3941
    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 3944
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mHighTextContrastUri:Landroid/net/Uri;

    .line 3943
    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 3923
    return-void
.end method
