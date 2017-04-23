.class public final Landroid/provider/Settings$System;
.super Landroid/provider/Settings$NameValueTable;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "System"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Settings$System$Validator;,
        Landroid/provider/Settings$System$DiscreteValueValidator;,
        Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;,
        Landroid/provider/Settings$System$InclusiveFloatRangeValidator;,
        Landroid/provider/Settings$System$1;,
        Landroid/provider/Settings$System$2;,
        Landroid/provider/Settings$System$3;,
        Landroid/provider/Settings$System$4;,
        Landroid/provider/Settings$System$5;,
        Landroid/provider/Settings$System$6;,
        Landroid/provider/Settings$System$7;,
        Landroid/provider/Settings$System$8;,
        Landroid/provider/Settings$System$9;
    }
.end annotation


# static fields
.field public static final ACCELEROMETER_ROTATION:Ljava/lang/String; = "accelerometer_rotation"

.field public static final ACCELEROMETER_ROTATION_RESTORE:Ljava/lang/String; = "accelerometer_rotation_restore"

.field public static final ACCELEROMETER_ROTATION_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final ADB_ENABLED:Ljava/lang/String; = "adb_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ADVANCED_SETTINGS:Ljava/lang/String; = "advanced_settings"

.field public static final ADVANCED_SETTINGS_DEFAULT:I = 0x0

.field private static final ADVANCED_SETTINGS_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final AIRPLANE_MODE_ON:Ljava/lang/String; = "airplane_mode_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AIRPLANE_MODE_RADIOS:Ljava/lang/String; = "airplane_mode_radios"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AIRPLANE_MODE_TOGGLEABLE_RADIOS:Ljava/lang/String; = "airplane_mode_toggleable_radios"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ALARM_ALERT:Ljava/lang/String; = "alarm_alert"

.field private static final ALARM_ALERT_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final ALWAYS_FINISH_ACTIVITIES:Ljava/lang/String; = "always_finish_activities"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ANDROID_ID:Ljava/lang/String; = "android_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ANIMATOR_DURATION_SCALE:Ljava/lang/String; = "animator_duration_scale"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ANR_DEBUGGING_MECHANISM:Ljava/lang/String; = "anr_debugging_mechanism"

.field public static final ANR_DEBUGGING_MECHANISM_STATUS:Ljava/lang/String; = "anr_debugging_mechanism_status"

.field public static final APPEND_FOR_LAST_AUDIBLE:Ljava/lang/String; = "_last_audible"

.field public static final AUTO_TIME:Ljava/lang/String; = "auto_time"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AUTO_TIME_GPS:Ljava/lang/String; = "auto_time_gps"

.field public static final AUTO_TIME_ZONE:Ljava/lang/String; = "auto_time_zone"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static BASE_VOICE_WAKEUP_COMMAND_KEY:Ljava/lang/String; = null

.field public static final BG_POWER_SAVING_ENABLE:Ljava/lang/String; = "background_power_saving_enable"

.field public static final BLACK_SCREEN_SNAP_SHOT:Ljava/lang/String; = "black_screen_snap_shot"

.field public static final BLUETOOTH_DISCOVERABILITY:Ljava/lang/String; = "bluetooth_discoverability"

.field public static final BLUETOOTH_DISCOVERABILITY_TIMEOUT:Ljava/lang/String; = "bluetooth_discoverability_timeout"

.field private static final BLUETOOTH_DISCOVERABILITY_TIMEOUT_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field private static final BLUETOOTH_DISCOVERABILITY_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final BLUETOOTH_ON:Ljava/lang/String; = "bluetooth_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CALENDAR_UNREAD_KEY:Ljava/lang/String; = "com_android_calendar_mtk_unread"

.field public static final CAR_DOCK_SOUND:Ljava/lang/String; = "car_dock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAR_UNDOCK_SOUND:Ljava/lang/String; = "car_undock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CELLBROADCAST_UNREAD_KEY:Ljava/lang/String; = "com_mediatek_cellbroadcastreceiver_mtk_unread"

.field private static final CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTACTS_UNREAD_KEY:Ljava/lang/String; = "com_android_contacts_mtk_unread"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CT_TIME_DISPLAY_MODE:Ljava/lang/String; = "ct_time_display_mode"

.field public static final CURRENT_DISPLAY_MODE:Ljava/lang/String; = "current_display_mode"

.field public static final CURRENT_WALLPAPER_NAME:Ljava/lang/String; = "current_wallpaper_component_name"

.field public static final DATA_ROAMING:Ljava/lang/String; = "data_roaming"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATA_SAVING_KEY:Ljava/lang/String; = "data_saving_key"

.field public static final DATE_FORMAT:Ljava/lang/String; = "date_format"

.field public static final DATE_FORMAT_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final DEBUG_APP:Ljava/lang/String; = "debug_app"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

.field public static final DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

.field public static final DEFAULT_RINGTONE_URI:Landroid/net/Uri;

.field public static final DEFAULT_SIM_NOT_SET:J = -0x5L

.field public static final DEFAULT_SIM_SETTING_ALWAYS_ASK:J = -0x1L

.field public static final DEFAULT_SIP_CALL_URI:Landroid/net/Uri;

.field public static final DEFAULT_VIDEO_CALL_URI:Landroid/net/Uri;

.field public static final DESK_DOCK_SOUND:Ljava/lang/String; = "desk_dock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DESK_UNDOCK_SOUND:Ljava/lang/String; = "desk_undock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEVICE_PROVISIONED:Ljava/lang/String; = "device_provisioned"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DIALOG_SEQUENCE_DEFAULT:I = 0x0

.field public static final DIALOG_SEQUENCE_KEYGUARD:I = 0x1

.field public static final DIALOG_SEQUENCE_SETTINGS:Ljava/lang/String; = "dialog_sequence_settings"

.field public static final DIALOG_SEQUENCE_STK:I = 0x2

.field public static final DIM_SCREEN:Ljava/lang/String; = "dim_screen"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DIM_SCREEN_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final DISPLAY_EFFECT_ACO:Ljava/lang/String; = "aco"

.field public static final DISPLAY_EFFECT_CABC:Ljava/lang/String; = "cabc"

.field public static final DISPLAY_EFFECT_CE:Ljava/lang/String; = "ce"

.field public static final DISPLAY_EFFECT_CTA:Ljava/lang/String; = "cta"

.field public static final DISPLAY_EFFECT_GAMMA:Ljava/lang/String; = "gamma"

.field public static final DISPLAY_MODE:Ljava/lang/String; = "display_mode"

.field public static final DM_BOOT_START_ENABLE_KEY:Ljava/lang/String; = "dm_boot_start_enable_key"

.field public static final DOCK_SOUNDS_ENABLED:Ljava/lang/String; = "dock_sounds_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DTMF_TONE_TYPE_WHEN_DIALING:Ljava/lang/String; = "dtmf_tone_type"

.field public static final DTMF_TONE_TYPE_WHEN_DIALING_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final DTMF_TONE_WHEN_DIALING:Ljava/lang/String; = "dtmf_tone"

.field public static final DTMF_TONE_WHEN_DIALING_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final EGG_MODE:Ljava/lang/String; = "egg_mode"

.field public static final EGG_MODE_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final EMAIL_UNREAD_KEY:Ljava/lang/String; = "com_android_email_mtk_unread"

.field public static final END_BUTTON_BEHAVIOR:Ljava/lang/String; = "end_button_behavior"

.field public static final END_BUTTON_BEHAVIOR_DEFAULT:I = 0x2

.field public static final END_BUTTON_BEHAVIOR_HOME:I = 0x1

.field public static final END_BUTTON_BEHAVIOR_SLEEP:I = 0x2

.field private static final END_BUTTON_BEHAVIOR_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final FONT_SCALE:Ljava/lang/String; = "font_scale"

.field private static final FONT_SCALE_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final FULL_SCREEN_EXPAND_STATUSBAR:Ljava/lang/String; = "full_screen_expand_statusbar"

.field public static final GLOVE_MODE_ALERT_ENABLED:Ljava/lang/String; = "glove_mode_alert_enabled"

.field public static final GLOVE_MODE_RESTORE_ENABLED:Ljava/lang/String; = "glove_mode_restore_enabled"

.field public static final GPRS_CONNECTION_SETTING:Ljava/lang/String; = "gprs_connection_setting"

.field public static final GPRS_CONNECTION_SETTING_DEFAULT:I = -0x4

.field public static final GPRS_CONNECTION_SIM_SETTING:Ljava/lang/String; = "gprs_connection_sim_setting"

.field public static final GPRS_TRANSFER_SETTING:Ljava/lang/String; = "gprs_transfer_setting"

.field public static final GPRS_TRANSFER_SETTING_DEFAULT:I = 0x1

.field public static final HAPTIC_FEEDBACK_ENABLED:Ljava/lang/String; = "haptic_feedback_enabled"

.field public static final HAPTIC_FEEDBACK_ENABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final HDMI_AUDIO_OUTPUT_MODE:Ljava/lang/String; = "hdmi_audio_output_mode"

.field public static final HDMI_CABLE_PLUGGED:Ljava/lang/String; = "hdmi_cable_plugged"

.field public static final HDMI_COLOR_SPACE:Ljava/lang/String; = "hdmi_color_space"

.field public static final HDMI_DEEP_COLOR:Ljava/lang/String; = "hdmi_deep_color"

.field public static final HDMI_ENABLE_STATUS:Ljava/lang/String; = "hdmi_enable_status"

.field public static final HDMI_VIDEO_RESOLUTION:Ljava/lang/String; = "hdmi_video_resolution"

.field public static final HDMI_VIDEO_SCALE:Ljava/lang/String; = "hdmi_video_scale"

.field public static final HEARING_AID:Ljava/lang/String; = "hearing_aid"

.field public static final HEARING_AID_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final HIDE_ROTATION_LOCK_TOGGLE_FOR_ACCESSIBILITY:Ljava/lang/String; = "hide_rotation_lock_toggle_for_accessibility"

.field public static final HIDE_ROTATION_LOCK_TOGGLE_FOR_ACCESSIBILITY_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final HTTP_PROXY:Ljava/lang/String; = "http_proxy"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INSTALL_NON_MARKET_APPS:Ljava/lang/String; = "install_non_market_apps"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final IPO_SETTING:Ljava/lang/String; = "ipo_setting"

.field public static final IVSR_SETTING:Ljava/lang/String; = "ivsr_setting"

.field public static final IVSR_SETTING_DISABLE:J = 0x0L

.field public static final IVSR_SETTING_ENABLE:J = 0x1L

.field public static final KEY_NIGHT_MODE:Ljava/lang/String; = "sys.night_mode"

.field public static final KEY_NIGHT_MODE_DEFAULT:I = 0x0

.field public static final KEY_NIGHT_MODE_ENABLED:Ljava/lang/String; = "sys.night_mode.enabled"

.field public static final KEY_NIGHT_MODE_ENABLED_DEFAULT:I = 0x1

.field public static final LAST_SIMID_BEFORE_WIFI_DISCONNECTED:Ljava/lang/String; = "last_simid_before_wifi_disconnected"

.field public static final LOCATION_PROVIDERS_ALLOWED:Ljava/lang/String; = "location_providers_allowed"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCKSCREEN_DISABLED:Ljava/lang/String; = "lockscreen.disabled"

.field public static final LOCKSCREEN_DISABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final LOCKSCREEN_SOUNDS_ENABLED:Ljava/lang/String; = "lockscreen_sounds_enabled"

.field public static final LOCKSCREEN_SOUNDS_ENABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final LOCK_PATTERN_ENABLED:Ljava/lang/String; = "lock_pattern_autolock"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_PATTERN_TACTILE_FEEDBACK_ENABLED:Ljava/lang/String; = "lock_pattern_tactile_feedback_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_PATTERN_VISIBLE:Ljava/lang/String; = "lock_pattern_visible_pattern"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_SOUND:Ljava/lang/String; = "lock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_TO_APP_ENABLED:Ljava/lang/String; = "lock_to_app_enabled"

.field public static final LOCK_TO_APP_ENABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final LOG2SERVER_DIALOG_SHOW:Ljava/lang/String; = "log2server_dialog_show"

.field public static final LOGGING_ID:Ljava/lang/String; = "logging_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOW_BATTERY_SOUND:Ljava/lang/String; = "low_battery_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEDIA_BUTTON_RECEIVER:Ljava/lang/String; = "media_button_receiver"

.field private static final MEDIA_BUTTON_RECEIVER_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final MICROPHONE_MUTE:Ljava/lang/String; = "microphone_mute"

.field private static final MICROPHONE_MUTE_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final MMS_UNREAD_KEY:Ljava/lang/String; = "com_android_mms_mtk_unread"

.field public static final MODE_RINGER:Ljava/lang/String; = "mode_ringer"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MODE_RINGER_STREAMS_AFFECTED:Ljava/lang/String; = "mode_ringer_streams_affected"

.field private static final MODE_RINGER_STREAMS_AFFECTED_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field private static final MOVED_TO_GLOBAL:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MOVED_TO_SECURE:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MSIM_MODE_SETTING:Ljava/lang/String; = "msim_mode_setting"

.field public static final MTK_RTSP_MAX_UDP_PORT:Ljava/lang/String; = "mtk_rtsp_max_udp_port"

.field public static final MTK_RTSP_MIN_UDP_PORT:Ljava/lang/String; = "mtk_rtsp_min_udp_port"

.field public static final MTK_RTSP_NAME:Ljava/lang/String; = "mtk_rtsp_name"

.field public static final MTK_RTSP_NETINFO:Ljava/lang/String; = "mtk_rtsp_netinfo"

.field public static final MTK_RTSP_TO_NAPID:Ljava/lang/String; = "mtk_rtsp_to_napid"

.field public static final MTK_RTSP_TO_PROXY:Ljava/lang/String; = "mtk_rtsp_to_proxy"

.field public static final MUTE_STREAMS_AFFECTED:Ljava/lang/String; = "mute_streams_affected"

.field private static final MUTE_STREAMS_AFFECTED_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final NETWORK_PREFERENCE:Ljava/lang/String; = "network_preference"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NEXT_ALARM_FORMATTED:Ljava/lang/String; = "next_alarm_formatted"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final NEXT_ALARM_FORMATTED_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final NOTIFICATIONS_USE_RING_VOLUME:Ljava/lang/String; = "notifications_use_ring_volume"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final NOTIFICATIONS_USE_RING_VOLUME_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final NOTIFICATION_LIGHT_PULSE:Ljava/lang/String; = "notification_light_pulse"

.field public static final NOTIFICATION_LIGHT_PULSE_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final NOTIFICATION_SOUND:Ljava/lang/String; = "notification_sound"

.field private static final NOTIFICATION_SOUND_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final PARENTAL_CONTROL_ENABLED:Ljava/lang/String; = "parental_control_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PARENTAL_CONTROL_LAST_UPDATE:Ljava/lang/String; = "parental_control_last_update"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PARENTAL_CONTROL_REDIRECT_URL:Ljava/lang/String; = "parental_control_redirect_url"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PERMISSION_CONTROL_ATTACH:Ljava/lang/String; = "permission_control_attached"

.field public static final PERMISSION_CONTROL_STATE:Ljava/lang/String; = "permission_control_state"

.field private static final PERMISSION_CONTROL_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final PERMISSION_SWITCH_OFF_STATE:Ljava/lang/String; = "permission_switch_off_dlg_state"

.field public static final POINTER_LOCATION:Ljava/lang/String; = "pointer_location"

.field public static final POINTER_LOCATION_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final POINTER_SPEED:Ljava/lang/String; = "pointer_speed"

.field public static final POINTER_SPEED_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final POWER_SOUNDS_ENABLED:Ljava/lang/String; = "power_sounds_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRIVATE_SETTINGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PUBLIC_SETTINGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final RADIO_BLUETOOTH:Ljava/lang/String; = "bluetooth"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RADIO_CELL:Ljava/lang/String; = "cell"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RADIO_NFC:Ljava/lang/String; = "nfc"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RADIO_WIFI:Ljava/lang/String; = "wifi"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RADIO_WIMAX:Ljava/lang/String; = "wimax"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RCSE_UNREAD_KEY:Ljava/lang/String; = "com_android_rcse_mtk_unread"

.field public static final RINGTONE:Ljava/lang/String; = "ringtone"

.field private static final RINGTONE_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final ROAMING_REMINDER_MODE_SETTING:Ljava/lang/String; = "roaming_reminder_mode_setting"

.field public static final SCREEN_AUTO_BRIGHTNESS_ADJ:Ljava/lang/String; = "screen_auto_brightness_adj"

.field private static final SCREEN_AUTO_BRIGHTNESS_ADJ_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SCREEN_BRIGHTNESS:Ljava/lang/String; = "screen_brightness"

.field public static final SCREEN_BRIGHTNESS_ECO_MODE:Ljava/lang/String; = "screen_brightness_eco_mode"

.field public static final SCREEN_BRIGHTNESS_ECO_MODE_AUTOMATIC:I = 0x2

.field public static final SCREEN_BRIGHTNESS_MODE:Ljava/lang/String; = "screen_brightness_mode"

.field public static final SCREEN_BRIGHTNESS_MODE_AUTOMATIC:I = 0x1

.field public static final SCREEN_BRIGHTNESS_MODE_MANUAL:I = 0x0

.field private static final SCREEN_BRIGHTNESS_MODE_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field private static final SCREEN_BRIGHTNESS_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SCREEN_OFF_TIMEOUT:Ljava/lang/String; = "screen_off_timeout"

.field private static final SCREEN_OFF_TIMEOUT_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SETTINGS_CLASSNAME:Ljava/lang/String; = "settings_classname"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SETTINGS_TO_BACKUP:[Ljava/lang/String;

.field public static final SETUP_WIZARD_HAS_RUN:Ljava/lang/String; = "setup_wizard_has_run"

.field public static final SETUP_WIZARD_HAS_RUN_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SHOW_GTALK_SERVICE_STATUS:Ljava/lang/String; = "SHOW_GTALK_SERVICE_STATUS"

.field private static final SHOW_GTALK_SERVICE_STATUS_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SHOW_PROCESSES:Ljava/lang/String; = "show_processes"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHOW_TOUCHES:Ljava/lang/String; = "show_touches"

.field public static final SHOW_TOUCHES_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SHOW_WEB_SUGGESTIONS:Ljava/lang/String; = "show_web_suggestions"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHOW_WEB_SUGGESTIONS_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SIP_ADDRESS_ONLY:Ljava/lang/String; = "SIP_ADDRESS_ONLY"

.field public static final SIP_ADDRESS_ONLY_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SIP_ALWAYS:Ljava/lang/String; = "SIP_ALWAYS"

.field public static final SIP_ALWAYS_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SIP_ASK_ME_EACH_TIME:Ljava/lang/String; = "SIP_ASK_ME_EACH_TIME"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SIP_ASK_ME_EACH_TIME_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SIP_CALL:Ljava/lang/String; = "sip_call"

.field public static final SIP_CALL_OPTIONS:Ljava/lang/String; = "sip_call_options"

.field public static final SIP_CALL_OPTIONS_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SIP_RECEIVE_CALLS:Ljava/lang/String; = "sip_receive_calls"

.field public static final SIP_RECEIVE_CALLS_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SMART_ULTRA_BRIGHT_MODE_ENABLED:Ljava/lang/String; = "smart_ultra_bright_mode_enabled"

.field public static final SMS_SIM_SETTING:Ljava/lang/String; = "sms_sim_setting"

.field public static final SMS_SIM_SETTING_AUTO:J = -0x3L

.field public static final SOUND_EFFECTS_ENABLED:Ljava/lang/String; = "sound_effects_enabled"

.field public static final SOUND_EFFECTS_ENABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final STAY_ON_WHILE_PLUGGED_IN:Ljava/lang/String; = "stay_on_while_plugged_in"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SYS_PROP_SETTING_VERSION:Ljava/lang/String; = "sys.settings_system_version"

.field public static final TETHER_IPV6_FEATURE:Ljava/lang/String; = "tether_ipv6_feature"

.field public static final TEXT_AUTO_CAPS:Ljava/lang/String; = "auto_caps"

.field private static final TEXT_AUTO_CAPS_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final TEXT_AUTO_PUNCTUATE:Ljava/lang/String; = "auto_punctuate"

.field private static final TEXT_AUTO_PUNCTUATE_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final TEXT_AUTO_REPLACE:Ljava/lang/String; = "auto_replace"

.field private static final TEXT_AUTO_REPLACE_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final TEXT_SHOW_PASSWORD:Ljava/lang/String; = "show_password"

.field private static final TEXT_SHOW_PASSWORD_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final TIME_12_24:Ljava/lang/String; = "time_12_24"

.field public static final TIME_12_24_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final TRANSITION_ANIMATION_SCALE:Ljava/lang/String; = "transition_animation_scale"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TTY_MODE:Ljava/lang/String; = "tty_mode"

.field public static final TTY_MODE_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final UNLOCK_SOUND:Ljava/lang/String; = "unlock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final USB_MASS_STORAGE_ENABLED:Ljava/lang/String; = "usb_mass_storage_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final USB_TETHERING_TYPE:Ljava/lang/String; = "usb_tethering_type"

.field public static final USB_TETHERING_TYPE_DEFAULT:I = 0x0

.field public static final USB_TETHERING_TYPE_EEM:I = 0x1

.field public static final USER_ROTATION:Ljava/lang/String; = "user_rotation"

.field public static final USER_ROTATION_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final USE_GOOGLE_MAIL:Ljava/lang/String; = "use_google_mail"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VALIDATORS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/provider/Settings$System$Validator;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIBRATE_INPUT_DEVICES:Ljava/lang/String; = "vibrate_input_devices"

.field private static final VIBRATE_INPUT_DEVICES_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final VIBRATE_IN_SILENT:Ljava/lang/String; = "vibrate_in_silent"

.field private static final VIBRATE_IN_SILENT_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final VIBRATE_ON:Ljava/lang/String; = "vibrate_on"

.field private static final VIBRATE_ON_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final VIBRATE_WHEN_RINGING:Ljava/lang/String; = "vibrate_when_ringing"

.field public static final VIBRATE_WHEN_RINGING_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final VIDEO_CALL:Ljava/lang/String; = "video_call"

.field public static final VIDEO_STEP_OPTION:Ljava/lang/String; = "selected_step_option"

.field private static final VIDEO_STEP_OPTION_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final VOICE_CALL_REJECT_MODE:Ljava/lang/String; = "voice_call_reject_mode"

.field public static final VOICE_CALL_SIM_SETTING:Ljava/lang/String; = "voice_call_sim_setting"

.field public static final VOICE_CALL_SIM_SETTING_INTERNET:J = -0x2L

.field public static final VOICE_UNLOCK_AND_LAUNCH1:Ljava/lang/String; = "voice_unlock_and_launch1"

.field public static final VOICE_UNLOCK_AND_LAUNCH2:Ljava/lang/String; = "voice_unlock_and_launch2"

.field public static final VOICE_UNLOCK_AND_LAUNCH3:Ljava/lang/String; = "voice_unlock_and_launch3"

.field public static final VOICE_UNLOCK_SCREEN:Ljava/lang/String; = "voice_unlock_screen"

.field public static VOICE_WAKEUP_COMMAND_STATUS:Ljava/lang/String; = null

.field public static VOICE_WAKEUP_MODE:Ljava/lang/String; = null

.field public static final VOLUME_ALARM:Ljava/lang/String; = "volume_alarm"

.field public static final VOLUME_BLUETOOTH_SCO:Ljava/lang/String; = "volume_bluetooth_sco"

.field public static final VOLUME_MASTER:Ljava/lang/String; = "volume_master"

.field public static final VOLUME_MASTER_MUTE:Ljava/lang/String; = "volume_master_mute"

.field private static final VOLUME_MASTER_MUTE_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final VOLUME_MUSIC:Ljava/lang/String; = "volume_music"

.field public static final VOLUME_NOTIFICATION:Ljava/lang/String; = "volume_notification"

.field public static final VOLUME_RING:Ljava/lang/String; = "volume_ring"

.field public static final VOLUME_SETTINGS:[Ljava/lang/String;

.field public static final VOLUME_SYSTEM:Ljava/lang/String; = "volume_system"

.field public static final VOLUME_VOICE:Ljava/lang/String; = "volume_voice"

.field public static final WAIT_FOR_DEBUGGER:Ljava/lang/String; = "wait_for_debugger"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WALLPAPER_ACTIVITY:Ljava/lang/String; = "wallpaper_activity"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final WALLPAPER_ACTIVITY_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final WHEN_TO_MAKE_WIFI_CALLS:Ljava/lang/String; = "when_to_make_wifi_calls"

.field public static final WIFI_CONNECT_AP_TYPE:Ljava/lang/String; = "wifi_ap_connect_type"

.field public static final WIFI_CONNECT_AP_TYPE_AUTO:I = 0x0

.field public static final WIFI_CONNECT_AP_TYPE_MANUL:I = 0x1

.field public static final WIFI_CONNECT_REMINDER:Ljava/lang/String; = "wifi_connect_reminder"

.field public static final WIFI_CONNECT_TYPE:Ljava/lang/String; = "wifi_connect_type"

.field public static final WIFI_CONNECT_TYPE_ASK:I = 0x2

.field public static final WIFI_CONNECT_TYPE_AUTO:I = 0x0

.field public static final WIFI_CONNECT_TYPE_MANUL:I = 0x1

.field public static final WIFI_HOTSPOT_AUTO_DISABLE:Ljava/lang/String; = "wifi_hotspot_auto_disable"

.field public static final WIFI_HOTSPOT_AUTO_DISABLE_FOR_FIVE_MINS:I = 0x1

.field public static final WIFI_HOTSPOT_AUTO_DISABLE_OFF:I = 0x0

.field public static final WIFI_HOTSPOT_DEFAULT_CLIENT_NUM:I = 0x6

.field public static final WIFI_HOTSPOT_DEFAULT_START_TIME:I = 0x0

.field public static final WIFI_HOTSPOT_MAX_CLIENT_NUM:Ljava/lang/String; = "wifi_hotspot_max_client_num"

.field public static final WIFI_HOTSPOT_START_TIME:Ljava/lang/String; = "wifi_hotspot_start_time"

.field public static final WIFI_MAX_DHCP_RETRY_COUNT:Ljava/lang/String; = "wifi_max_dhcp_retry_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_MOBILE_DATA_TRANSITION_WAKELOCK_TIMEOUT_MS:Ljava/lang/String; = "wifi_mobile_data_transition_wakelock_timeout_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_NETWORKS_AVAILABLE_NOTIFICATION_ON:Ljava/lang/String; = "wifi_networks_available_notification_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_NETWORKS_AVAILABLE_REPEAT_DELAY:Ljava/lang/String; = "wifi_networks_available_repeat_delay"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_NUM_OPEN_NETWORKS_KEPT:Ljava/lang/String; = "wifi_num_open_networks_kept"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_ON:Ljava/lang/String; = "wifi_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_PRIORITY_TYPE:Ljava/lang/String; = "wifi_priority_type"

.field public static final WIFI_PRIORITY_TYPE_DEFAULT:I = 0x0

.field public static final WIFI_PRIORITY_TYPE_MAMUAL:I = 0x1

.field public static final WIFI_SELECT_SSID_AUTO:I = 0x0

.field public static final WIFI_SELECT_SSID_TYPE:Ljava/lang/String; = "wifi_select_ssid_type"

.field public static final WIFI_SLEEP_POLICY:Ljava/lang/String; = "wifi_sleep_policy"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_SLEEP_POLICY_DEFAULT:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_SLEEP_POLICY_NEVER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_SLEEP_POLICY_NEVER_WHILE_PLUGGED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_SLEEP_POLICY_SMART:I = 0x3

.field public static final WIFI_STATIC_DNS1:Ljava/lang/String; = "wifi_static_dns1"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final WIFI_STATIC_DNS1_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final WIFI_STATIC_DNS2:Ljava/lang/String; = "wifi_static_dns2"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final WIFI_STATIC_DNS2_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final WIFI_STATIC_GATEWAY:Ljava/lang/String; = "wifi_static_gateway"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final WIFI_STATIC_GATEWAY_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final WIFI_STATIC_IP:Ljava/lang/String; = "wifi_static_ip"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final WIFI_STATIC_IP_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final WIFI_STATIC_NETMASK:Ljava/lang/String; = "wifi_static_netmask"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final WIFI_STATIC_NETMASK_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final WIFI_USE_STATIC_IP:Ljava/lang/String; = "wifi_use_static_ip"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final WIFI_USE_STATIC_IP_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final WIFI_WATCHDOG_ACCEPTABLE_PACKET_LOSS_PERCENTAGE:Ljava/lang/String; = "wifi_watchdog_acceptable_packet_loss_percentage"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_AP_COUNT:Ljava/lang/String; = "wifi_watchdog_ap_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_DELAY_MS:Ljava/lang/String; = "wifi_watchdog_background_check_delay_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_ENABLED:Ljava/lang/String; = "wifi_watchdog_background_check_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_TIMEOUT_MS:Ljava/lang/String; = "wifi_watchdog_background_check_timeout_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_INITIAL_IGNORED_PING_COUNT:Ljava/lang/String; = "wifi_watchdog_initial_ignored_ping_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_MAX_AP_CHECKS:Ljava/lang/String; = "wifi_watchdog_max_ap_checks"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_ON:Ljava/lang/String; = "wifi_watchdog_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_PING_COUNT:Ljava/lang/String; = "wifi_watchdog_ping_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_PING_DELAY_MS:Ljava/lang/String; = "wifi_watchdog_ping_delay_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_PING_TIMEOUT_MS:Ljava/lang/String; = "wifi_watchdog_ping_timeout_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WINDOW_ANIMATION_SCALE:Ljava/lang/String; = "window_animation_scale"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WINDOW_ORIENTATION_LISTENER_LOG:Ljava/lang/String; = "window_orientation_listener_log"

.field public static final WINDOW_ORIENTATION_LISTENER_LOG_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final WPS_EM_P2P_OPTION:Ljava/lang/String; = "wps_em_p2p_enable"

.field private static final WPS_EM_P2P_OPTION_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final WPS_EM_WIFI_OPTION:Ljava/lang/String; = "wps_em_wifi_enable"

.field private static final WPS_EM_WIFI_OPTIONN_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final WPS_NFC_KEY:Ljava/lang/String; = "wps_nfc_pubkey"

.field private static final WPS_NFC_KEY_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field private static final sBooleanValidator:Landroid/provider/Settings$System$Validator;

.field private static final sLenientIpAddressValidator:Landroid/provider/Settings$System$Validator;

.field private static final sNameValueCache:Landroid/provider/Settings$NameValueCache;

.field private static final sNonNegativeIntegerValidator:Landroid/provider/Settings$System$Validator;

.field private static final sUriValidator:Landroid/provider/Settings$System$Validator;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 1469
    const-string/jumbo v0, "content://settings/system"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1468
    sput-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    .line 1471
    new-instance v0, Landroid/provider/Settings$NameValueCache;

    .line 1472
    const-string/jumbo v1, "sys.settings_system_version"

    .line 1473
    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    .line 1474
    const-string/jumbo v3, "GET_system"

    .line 1475
    const-string/jumbo v4, "PUT_system"

    .line 1471
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/provider/Settings$NameValueCache;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$System;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    .line 1479
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    .line 1480
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "android_id"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1481
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "http_proxy"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1482
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "location_providers_allowed"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1483
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "lock_biometric_weak_flags"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1484
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "lock_pattern_autolock"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1485
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "lock_pattern_visible_pattern"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1486
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "lock_pattern_tactile_feedback_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1487
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "logging_id"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1488
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "parental_control_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1489
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "parental_control_last_update"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1490
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "parental_control_redirect_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1491
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "settings_classname"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1492
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "use_google_mail"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1493
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_networks_available_notification_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1494
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_networks_available_repeat_delay"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1495
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_num_open_networks_kept"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1496
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1497
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_acceptable_packet_loss_percentage"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1498
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_ap_count"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1499
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_background_check_delay_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1500
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_background_check_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1501
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_background_check_timeout_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1502
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_initial_ignored_ping_count"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1503
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_max_ap_checks"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1504
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1505
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_ping_count"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1506
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_ping_delay_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1507
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_ping_timeout_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1510
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "install_non_market_apps"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1516
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    .line 1517
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    .line 1521
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "adb_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1522
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "bluetooth_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1523
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "data_roaming"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1524
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "device_provisioned"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1525
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "usb_mass_storage_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1526
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "http_proxy"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1529
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "airplane_mode_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1530
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "airplane_mode_radios"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1531
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "airplane_mode_toggleable_radios"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1532
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "auto_time"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1533
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "auto_time_zone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1534
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "car_dock_sound"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1535
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "car_undock_sound"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1536
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "desk_dock_sound"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1537
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "desk_undock_sound"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1538
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "dock_sounds_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1539
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "lock_sound"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1540
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "unlock_sound"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1541
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "low_battery_sound"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1542
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "power_sounds_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1543
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "stay_on_while_plugged_in"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1544
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_sleep_policy"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1545
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "mode_ringer"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1546
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "window_animation_scale"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1547
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "transition_animation_scale"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1548
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "animator_duration_scale"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1549
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "fancy_ime_animations"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1550
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "compatibility_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1551
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "emergency_tone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1552
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "call_auto_retry"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1553
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "debug_app"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1554
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wait_for_debugger"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1555
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "show_processes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1556
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "always_finish_activities"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1557
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "tzinfo_content_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1558
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "tzinfo_metadata_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1559
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "selinux_content_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1560
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "selinux_metadata_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1561
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "sms_short_codes_content_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1562
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "sms_short_codes_metadata_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1563
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "cert_pin_content_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1564
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "cert_pin_metadata_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1567
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "auto_time_gps"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1568
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "acm_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1572
    new-instance v0, Landroid/provider/Settings$System$DiscreteValueValidator;

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "0"

    aput-object v2, v1, v5

    const-string/jumbo v2, "1"

    aput-object v2, v1, v7

    invoke-direct {v0, v1}, Landroid/provider/Settings$System$DiscreteValueValidator;-><init>([Ljava/lang/String;)V

    .line 1571
    sput-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    .line 1574
    new-instance v0, Landroid/provider/Settings$System$1;

    invoke-direct {v0}, Landroid/provider/Settings$System$1;-><init>()V

    sput-object v0, Landroid/provider/Settings$System;->sNonNegativeIntegerValidator:Landroid/provider/Settings$System$Validator;

    .line 1585
    new-instance v0, Landroid/provider/Settings$System$2;

    invoke-direct {v0}, Landroid/provider/Settings$System$2;-><init>()V

    sput-object v0, Landroid/provider/Settings$System;->sUriValidator:Landroid/provider/Settings$System$Validator;

    .line 1597
    new-instance v0, Landroid/provider/Settings$System$3;

    invoke-direct {v0}, Landroid/provider/Settings$System$3;-><init>()V

    sput-object v0, Landroid/provider/Settings$System;->sLenientIpAddressValidator:Landroid/provider/Settings$System$Validator;

    .line 2112
    new-instance v0, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;

    invoke-direct {v0, v5, v8}, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;-><init>(II)V

    .line 2111
    sput-object v0, Landroid/provider/Settings$System;->END_BUTTON_BEHAVIOR_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 2138
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->ADVANCED_SETTINGS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 2247
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->WIFI_USE_STATIC_IP_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 2259
    sget-object v0, Landroid/provider/Settings$System;->sLenientIpAddressValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->WIFI_STATIC_IP_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 2271
    sget-object v0, Landroid/provider/Settings$System;->sLenientIpAddressValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->WIFI_STATIC_GATEWAY_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 2283
    sget-object v0, Landroid/provider/Settings$System;->sLenientIpAddressValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->WIFI_STATIC_NETMASK_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 2295
    sget-object v0, Landroid/provider/Settings$System;->sLenientIpAddressValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->WIFI_STATIC_DNS1_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 2307
    sget-object v0, Landroid/provider/Settings$System;->sLenientIpAddressValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->WIFI_STATIC_DNS2_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 2321
    new-instance v0, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;

    invoke-direct {v0, v5, v6}, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;-><init>(II)V

    .line 2320
    sput-object v0, Landroid/provider/Settings$System;->BLUETOOTH_DISCOVERABILITY_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 2332
    sget-object v0, Landroid/provider/Settings$System;->sNonNegativeIntegerValidator:Landroid/provider/Settings$System$Validator;

    .line 2331
    sput-object v0, Landroid/provider/Settings$System;->BLUETOOTH_DISCOVERABILITY_TIMEOUT_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 2366
    new-instance v0, Landroid/provider/Settings$System$4;

    invoke-direct {v0}, Landroid/provider/Settings$System$4;-><init>()V

    sput-object v0, Landroid/provider/Settings$System;->NEXT_ALARM_FORMATTED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 2381
    new-instance v0, Landroid/provider/Settings$System$5;

    invoke-direct {v0}, Landroid/provider/Settings$System$5;-><init>()V

    sput-object v0, Landroid/provider/Settings$System;->FONT_SCALE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 2416
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->DIM_SCREEN_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 2426
    sget-object v0, Landroid/provider/Settings$System;->sNonNegativeIntegerValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->SCREEN_OFF_TIMEOUT_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 2434
    new-instance v0, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;

    const/16 v1, 0xff

    invoke-direct {v0, v5, v1}, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;-><init>(II)V

    .line 2433
    sput-object v0, Landroid/provider/Settings$System;->SCREEN_BRIGHTNESS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 2461
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->SCREEN_BRIGHTNESS_MODE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 2471
    new-instance v0, Landroid/provider/Settings$System$InclusiveFloatRangeValidator;

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/provider/Settings$System$InclusiveFloatRangeValidator;-><init>(FF)V

    .line 2470
    sput-object v0, Landroid/provider/Settings$System;->SCREEN_AUTO_BRIGHTNESS_ADJ_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 2509
    sget-object v0, Landroid/provider/Settings$System;->sNonNegativeIntegerValidator:Landroid/provider/Settings$System$Validator;

    .line 2508
    sput-object v0, Landroid/provider/Settings$System;->MODE_RINGER_STREAMS_AFFECTED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 2519
    sget-object v0, Landroid/provider/Settings$System;->sNonNegativeIntegerValidator:Landroid/provider/Settings$System$Validator;

    .line 2518
    sput-object v0, Landroid/provider/Settings$System;->MUTE_STREAMS_AFFECTED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 2527
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->VIBRATE_ON_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 2543
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->VIBRATE_INPUT_DEVICES_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 2621
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->VOLUME_MASTER_MUTE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 2630
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->MICROPHONE_MUTE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 2650
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->NOTIFICATIONS_USE_RING_VOLUME_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 2666
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->VIBRATE_IN_SILENT_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 2674
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 2675
    const-string/jumbo v1, "volume_voice"

    aput-object v1, v0, v5

    const-string/jumbo v1, "volume_system"

    aput-object v1, v0, v7

    const-string/jumbo v1, "volume_ring"

    aput-object v1, v0, v6

    const-string/jumbo v1, "volume_music"

    aput-object v1, v0, v8

    .line 2676
    const-string/jumbo v1, "volume_alarm"

    aput-object v1, v0, v9

    const-string/jumbo v1, "volume_notification"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "volume_bluetooth_sco"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, ""

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, ""

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, ""

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 2674
    sput-object v0, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    .line 2700
    sget-object v0, Landroid/provider/Settings$System;->sUriValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->RINGTONE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 2710
    const-string/jumbo v0, "ringtone"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 2744
    sget-object v0, Landroid/provider/Settings$System;->sUriValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->NOTIFICATION_SOUND_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 2752
    const-string/jumbo v0, "notification_sound"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 2762
    sget-object v0, Landroid/provider/Settings$System;->sUriValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->ALARM_ALERT_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 2770
    const-string/jumbo v0, "alarm_alert"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    .line 2786
    new-instance v0, Landroid/provider/Settings$System$6;

    invoke-direct {v0}, Landroid/provider/Settings$System$6;-><init>()V

    sput-object v0, Landroid/provider/Settings$System;->MEDIA_BUTTON_RECEIVER_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 2803
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->TEXT_AUTO_REPLACE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 2810
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->TEXT_AUTO_CAPS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 2818
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->TEXT_AUTO_PUNCTUATE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 2825
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->TEXT_SHOW_PASSWORD_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 2830
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->SHOW_GTALK_SERVICE_STATUS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 2840
    new-instance v0, Landroid/provider/Settings$System$7;

    invoke-direct {v0}, Landroid/provider/Settings$System$7;-><init>()V

    sput-object v0, Landroid/provider/Settings$System;->WALLPAPER_ACTIVITY_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 2875
    new-instance v0, Landroid/provider/Settings$System$DiscreteValueValidator;

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "12"

    aput-object v2, v1, v5

    const-string/jumbo v2, "24"

    aput-object v2, v1, v7

    invoke-direct {v0, v1}, Landroid/provider/Settings$System$DiscreteValueValidator;-><init>([Ljava/lang/String;)V

    .line 2874
    sput-object v0, Landroid/provider/Settings$System;->TIME_12_24_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 2886
    new-instance v0, Landroid/provider/Settings$System$8;

    invoke-direct {v0}, Landroid/provider/Settings$System$8;-><init>()V

    sput-object v0, Landroid/provider/Settings$System;->DATE_FORMAT_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 2908
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->SETUP_WIZARD_HAS_RUN_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 2947
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->ACCELEROMETER_ROTATION_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 2961
    new-instance v0, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;

    invoke-direct {v0, v5, v8}, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;-><init>(II)V

    .line 2960
    sput-object v0, Landroid/provider/Settings$System;->USER_ROTATION_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 2979
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    .line 2978
    sput-object v0, Landroid/provider/Settings$System;->HIDE_ROTATION_LOCK_TOGGLE_FOR_ACCESSIBILITY_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 2994
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->VIBRATE_WHEN_RINGING_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 3003
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->DTMF_TONE_WHEN_DIALING_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 3014
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->DTMF_TONE_TYPE_WHEN_DIALING_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 3024
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->HEARING_AID_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 3038
    new-instance v0, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;

    invoke-direct {v0, v5, v8}, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;-><init>(II)V

    sput-object v0, Landroid/provider/Settings$System;->TTY_MODE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 3047
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->SOUND_EFFECTS_ENABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 3056
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->HAPTIC_FEEDBACK_ENABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 3066
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->SHOW_WEB_SUGGESTIONS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 3076
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->NOTIFICATION_LIGHT_PULSE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 3087
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->POINTER_LOCATION_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 3098
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->SHOW_TOUCHES_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 3112
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->WINDOW_ORIENTATION_LISTENER_LOG_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 3137
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->LOCKSCREEN_SOUNDS_ENABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 3146
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->LOCKSCREEN_DISABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 3213
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->SIP_RECEIVE_CALLS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 3224
    new-instance v0, Landroid/provider/Settings$System$DiscreteValueValidator;

    .line 3225
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "SIP_ALWAYS"

    aput-object v2, v1, v5

    const-string/jumbo v2, "SIP_ADDRESS_ONLY"

    aput-object v2, v1, v7

    .line 3224
    invoke-direct {v0, v1}, Landroid/provider/Settings$System$DiscreteValueValidator;-><init>([Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$System;->SIP_CALL_OPTIONS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 3234
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->SIP_ALWAYS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 3243
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->SIP_ADDRESS_ONLY_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 3256
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->SIP_ASK_ME_EACH_TIME_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 3270
    new-instance v0, Landroid/provider/Settings$System$InclusiveFloatRangeValidator;

    const/high16 v1, -0x3f200000    # -7.0f

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-direct {v0, v1, v2}, Landroid/provider/Settings$System$InclusiveFloatRangeValidator;-><init>(FF)V

    .line 3269
    sput-object v0, Landroid/provider/Settings$System;->POINTER_SPEED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 3279
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->LOCK_TO_APP_ENABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 3291
    new-instance v0, Landroid/provider/Settings$System$9;

    invoke-direct {v0}, Landroid/provider/Settings$System$9;-><init>()V

    sput-object v0, Landroid/provider/Settings$System;->EGG_MODE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 3329
    sget-object v0, Landroid/provider/Settings$System;->sNonNegativeIntegerValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->VIDEO_STEP_OPTION_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 3336
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->WPS_NFC_KEY_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 3343
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->WPS_EM_WIFI_OPTIONN_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 3350
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->WPS_EM_P2P_OPTION_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 3369
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->PERMISSION_CONTROL_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 3668
    const-string/jumbo v0, "video_call"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$System;->DEFAULT_VIDEO_CALL_URI:Landroid/net/Uri;

    .line 3675
    const-string/jumbo v0, "sip_call"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$System;->DEFAULT_SIP_CALL_URI:Landroid/net/Uri;

    .line 3851
    const-string/jumbo v0, "voice_wakeup_app"

    sput-object v0, Landroid/provider/Settings$System;->BASE_VOICE_WAKEUP_COMMAND_KEY:Ljava/lang/String;

    .line 3880
    const-string/jumbo v0, "voice_wakeup_mode"

    sput-object v0, Landroid/provider/Settings$System;->VOICE_WAKEUP_MODE:Ljava/lang/String;

    .line 3890
    const-string/jumbo v0, "voice_wakeup_command_status"

    sput-object v0, Landroid/provider/Settings$System;->VOICE_WAKEUP_COMMAND_STATUS:Ljava/lang/String;

    .line 3950
    const/16 v0, 0x2c

    new-array v0, v0, [Ljava/lang/String;

    .line 3951
    const-string/jumbo v1, "stay_on_while_plugged_in"

    aput-object v1, v0, v5

    .line 3952
    const-string/jumbo v1, "wifi_use_static_ip"

    aput-object v1, v0, v7

    .line 3953
    const-string/jumbo v1, "wifi_static_ip"

    aput-object v1, v0, v6

    .line 3954
    const-string/jumbo v1, "wifi_static_gateway"

    aput-object v1, v0, v8

    .line 3955
    const-string/jumbo v1, "wifi_static_netmask"

    aput-object v1, v0, v9

    .line 3956
    const-string/jumbo v1, "wifi_static_dns1"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 3957
    const-string/jumbo v1, "wifi_static_dns2"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 3958
    const-string/jumbo v1, "bluetooth_discoverability"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 3959
    const-string/jumbo v1, "bluetooth_discoverability_timeout"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 3960
    const-string/jumbo v1, "dim_screen"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 3961
    const-string/jumbo v1, "screen_off_timeout"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 3962
    const-string/jumbo v1, "screen_brightness"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 3963
    const-string/jumbo v1, "screen_brightness_mode"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 3964
    const-string/jumbo v1, "screen_auto_brightness_adj"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 3965
    const-string/jumbo v1, "vibrate_input_devices"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 3966
    const-string/jumbo v1, "mode_ringer_streams_affected"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 3967
    const-string/jumbo v1, "auto_replace"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 3968
    const-string/jumbo v1, "auto_caps"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 3969
    const-string/jumbo v1, "auto_punctuate"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 3970
    const-string/jumbo v1, "show_password"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 3971
    const-string/jumbo v1, "auto_time"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 3972
    const-string/jumbo v1, "auto_time_zone"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 3973
    const-string/jumbo v1, "time_12_24"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 3974
    const-string/jumbo v1, "date_format"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 3975
    const-string/jumbo v1, "dtmf_tone"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 3976
    const-string/jumbo v1, "dtmf_tone_type"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 3977
    const-string/jumbo v1, "hearing_aid"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 3978
    const-string/jumbo v1, "tty_mode"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 3979
    const-string/jumbo v1, "sound_effects_enabled"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 3980
    const-string/jumbo v1, "haptic_feedback_enabled"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 3981
    const-string/jumbo v1, "power_sounds_enabled"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 3982
    const-string/jumbo v1, "dock_sounds_enabled"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 3983
    const-string/jumbo v1, "lockscreen_sounds_enabled"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 3984
    const-string/jumbo v1, "show_web_suggestions"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 3985
    const-string/jumbo v1, "notification_light_pulse"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 3986
    const-string/jumbo v1, "sip_call_options"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 3987
    const-string/jumbo v1, "sip_receive_calls"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    .line 3988
    const-string/jumbo v1, "pointer_speed"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    .line 3989
    const-string/jumbo v1, "vibrate_when_ringing"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    .line 3990
    const-string/jumbo v1, "ringtone"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    .line 3991
    const-string/jumbo v1, "lock_to_app_enabled"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    .line 3992
    const-string/jumbo v1, "notification_sound"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    .line 3993
    const-string/jumbo v1, "anr_debugging_mechanism"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    .line 3994
    const-string/jumbo v1, "anr_debugging_mechanism_status"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    .line 3950
    sput-object v0, Landroid/provider/Settings$System;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    .line 4002
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    .line 4004
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "end_button_behavior"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4005
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "wifi_use_static_ip"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4006
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "wifi_static_ip"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4007
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "wifi_static_gateway"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4008
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "wifi_static_netmask"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4009
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "wifi_static_dns1"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4010
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "wifi_static_dns2"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4011
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "bluetooth_discoverability"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4012
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "bluetooth_discoverability_timeout"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4013
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "next_alarm_formatted"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4014
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "font_scale"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4015
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "dim_screen"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4016
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "screen_off_timeout"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4017
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "screen_brightness"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4018
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "screen_brightness_mode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4019
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "mode_ringer_streams_affected"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4020
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "mute_streams_affected"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4021
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "vibrate_on"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4022
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "volume_ring"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4023
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "volume_system"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4024
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "volume_voice"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4025
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "volume_music"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4026
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "volume_alarm"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4027
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "volume_notification"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4028
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "volume_bluetooth_sco"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4029
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "ringtone"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4030
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "notification_sound"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4031
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "alarm_alert"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4032
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "auto_replace"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4033
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "auto_caps"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4034
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "auto_punctuate"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4035
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "show_password"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4036
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "SHOW_GTALK_SERVICE_STATUS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4037
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "wallpaper_activity"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4038
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "time_12_24"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4039
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "date_format"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4040
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "setup_wizard_has_run"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4041
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "accelerometer_rotation"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4042
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "user_rotation"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4043
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "dtmf_tone"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4044
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "sound_effects_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4045
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "haptic_feedback_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4046
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "show_web_suggestions"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4049
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "selected_step_option"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4050
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "wps_nfc_pubkey"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4051
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "wps_em_wifi_enable"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4052
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "wps_em_p2p_enable"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4053
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "permission_control_state"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4054
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "permission_control_attached"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4055
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "permission_switch_off_dlg_state"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4056
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "voice_unlock_screen"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4057
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "voice_unlock_and_launch1"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4058
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "voice_unlock_and_launch2"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4059
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "voice_unlock_and_launch3"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4060
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "dm_boot_start_enable_key"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4061
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "msim_mode_setting"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4062
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "roaming_reminder_mode_setting"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4063
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "gprs_connection_sim_setting"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4064
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "voice_call_reject_mode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4065
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "voice_call_sim_setting"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4066
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "sms_sim_setting"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4067
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "gprs_connection_setting"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4068
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "gprs_transfer_setting"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4069
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "wifi_ap_connect_type"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4070
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "wifi_connect_type"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4071
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "wifi_connect_reminder"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4072
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "wifi_hotspot_auto_disable"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4073
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "wifi_hotspot_max_client_num"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4074
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "wifi_hotspot_start_time"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4075
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "wifi_select_ssid_type"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4076
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "wifi_priority_type"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4077
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "usb_tethering_type"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4078
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "dialog_sequence_settings"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4079
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "video_call"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4080
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "sip_call"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4081
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "auto_time_gps"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4082
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "accelerometer_rotation_restore"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4083
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "background_power_saving_enable"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4084
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "ipo_setting"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4085
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "log2server_dialog_show"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4086
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "mtk_rtsp_name"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4087
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "mtk_rtsp_to_proxy"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4088
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "mtk_rtsp_netinfo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4089
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "mtk_rtsp_to_napid"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4090
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "mtk_rtsp_max_udp_port"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4091
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "mtk_rtsp_min_udp_port"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4092
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "ivsr_setting"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4093
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "tether_ipv6_feature"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4094
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "ct_time_display_mode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4095
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "current_wallpaper_component_name"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4096
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "screen_brightness_eco_mode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4097
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "hdmi_enable_status"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4098
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "hdmi_video_resolution"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4099
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "hdmi_video_scale"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4100
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "hdmi_color_space"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4101
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "hdmi_deep_color"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4102
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "hdmi_cable_plugged"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4103
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "hdmi_audio_output_mode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4104
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "last_simid_before_wifi_disconnected"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4105
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "data_saving_key"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4106
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    sget-object v1, Landroid/provider/Settings$System;->BASE_VOICE_WAKEUP_COMMAND_KEY:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4107
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    sget-object v1, Landroid/provider/Settings$System;->VOICE_WAKEUP_MODE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4108
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    sget-object v1, Landroid/provider/Settings$System;->VOICE_WAKEUP_COMMAND_STATUS:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4109
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "com_android_contacts_mtk_unread"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4110
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "com_android_mms_mtk_unread"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4111
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "com_android_email_mtk_unread"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4112
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "com_android_calendar_mtk_unread"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4113
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "com_android_rcse_mtk_unread"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4114
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "com_mediatek_cellbroadcastreceiver_mtk_unread"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4117
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "ringtone_path"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4118
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "notification_sound_path"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4119
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "alarm_alert_path"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4120
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "ringtone_2"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4121
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "ringtone_2_path"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4122
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "sms_notifi_sound"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4123
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "sms_notifi_sound_path"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4124
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "sms_notifi_sound_2"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4125
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "sms_notifi_sound_2_path"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4134
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    .line 4136
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "wifi_use_static_ip"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4137
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "end_button_behavior"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4138
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "advanced_settings"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4139
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "screen_auto_brightness_adj"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4140
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "vibrate_input_devices"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4141
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "volume_master"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4142
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "volume_master_mute"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4143
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "microphone_mute"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4144
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "notifications_use_ring_volume"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4145
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "vibrate_in_silent"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4146
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "media_button_receiver"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4147
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "hide_rotation_lock_toggle_for_accessibility"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4148
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "vibrate_when_ringing"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4149
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "dtmf_tone_type"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4150
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "hearing_aid"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4151
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "tty_mode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4152
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "notification_light_pulse"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4153
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "pointer_location"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4154
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "show_touches"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4155
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "window_orientation_listener_log"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4156
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "power_sounds_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4157
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "dock_sounds_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4158
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "lockscreen_sounds_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4159
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "lockscreen.disabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4160
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "low_battery_sound"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4161
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "desk_dock_sound"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4162
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "desk_undock_sound"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4163
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "car_dock_sound"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4164
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "car_undock_sound"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4165
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "lock_sound"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4166
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "unlock_sound"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4167
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "sip_receive_calls"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4168
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "sip_call_options"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4169
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "SIP_ALWAYS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4170
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "SIP_ADDRESS_ONLY"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4171
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "SIP_ASK_ME_EACH_TIME"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4172
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "pointer_speed"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4173
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "lock_to_app_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4174
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "egg_mode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4182
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    .line 4184
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "end_button_behavior"

    sget-object v2, Landroid/provider/Settings$System;->END_BUTTON_BEHAVIOR_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4185
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "wifi_use_static_ip"

    sget-object v2, Landroid/provider/Settings$System;->WIFI_USE_STATIC_IP_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4186
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "bluetooth_discoverability"

    sget-object v2, Landroid/provider/Settings$System;->BLUETOOTH_DISCOVERABILITY_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4187
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "bluetooth_discoverability_timeout"

    .line 4188
    sget-object v2, Landroid/provider/Settings$System;->BLUETOOTH_DISCOVERABILITY_TIMEOUT_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 4187
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4189
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "next_alarm_formatted"

    sget-object v2, Landroid/provider/Settings$System;->NEXT_ALARM_FORMATTED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4190
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "font_scale"

    sget-object v2, Landroid/provider/Settings$System;->FONT_SCALE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4191
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "dim_screen"

    sget-object v2, Landroid/provider/Settings$System;->DIM_SCREEN_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4192
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "screen_off_timeout"

    sget-object v2, Landroid/provider/Settings$System;->SCREEN_OFF_TIMEOUT_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4193
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "screen_brightness"

    sget-object v2, Landroid/provider/Settings$System;->SCREEN_BRIGHTNESS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4194
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "screen_brightness_mode"

    sget-object v2, Landroid/provider/Settings$System;->SCREEN_BRIGHTNESS_MODE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4195
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "mode_ringer_streams_affected"

    sget-object v2, Landroid/provider/Settings$System;->MODE_RINGER_STREAMS_AFFECTED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4196
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "mute_streams_affected"

    sget-object v2, Landroid/provider/Settings$System;->MUTE_STREAMS_AFFECTED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4197
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "vibrate_on"

    sget-object v2, Landroid/provider/Settings$System;->VIBRATE_ON_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4198
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "ringtone"

    sget-object v2, Landroid/provider/Settings$System;->RINGTONE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4199
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "notification_sound"

    sget-object v2, Landroid/provider/Settings$System;->NOTIFICATION_SOUND_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4200
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "alarm_alert"

    sget-object v2, Landroid/provider/Settings$System;->ALARM_ALERT_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4201
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "auto_replace"

    sget-object v2, Landroid/provider/Settings$System;->TEXT_AUTO_REPLACE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4202
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "auto_caps"

    sget-object v2, Landroid/provider/Settings$System;->TEXT_AUTO_CAPS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4203
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "auto_punctuate"

    sget-object v2, Landroid/provider/Settings$System;->TEXT_AUTO_PUNCTUATE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4204
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "show_password"

    sget-object v2, Landroid/provider/Settings$System;->TEXT_SHOW_PASSWORD_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4205
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "SHOW_GTALK_SERVICE_STATUS"

    sget-object v2, Landroid/provider/Settings$System;->SHOW_GTALK_SERVICE_STATUS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4206
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "wallpaper_activity"

    sget-object v2, Landroid/provider/Settings$System;->WALLPAPER_ACTIVITY_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4207
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "time_12_24"

    sget-object v2, Landroid/provider/Settings$System;->TIME_12_24_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4208
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "date_format"

    sget-object v2, Landroid/provider/Settings$System;->DATE_FORMAT_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4209
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "setup_wizard_has_run"

    sget-object v2, Landroid/provider/Settings$System;->SETUP_WIZARD_HAS_RUN_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4210
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "accelerometer_rotation"

    sget-object v2, Landroid/provider/Settings$System;->ACCELEROMETER_ROTATION_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4211
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "user_rotation"

    sget-object v2, Landroid/provider/Settings$System;->USER_ROTATION_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4212
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "dtmf_tone"

    sget-object v2, Landroid/provider/Settings$System;->DTMF_TONE_WHEN_DIALING_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4213
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "sound_effects_enabled"

    sget-object v2, Landroid/provider/Settings$System;->SOUND_EFFECTS_ENABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4214
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "haptic_feedback_enabled"

    sget-object v2, Landroid/provider/Settings$System;->HAPTIC_FEEDBACK_ENABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4215
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "show_web_suggestions"

    sget-object v2, Landroid/provider/Settings$System;->SHOW_WEB_SUGGESTIONS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4216
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "wifi_use_static_ip"

    sget-object v2, Landroid/provider/Settings$System;->WIFI_USE_STATIC_IP_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4217
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "end_button_behavior"

    sget-object v2, Landroid/provider/Settings$System;->END_BUTTON_BEHAVIOR_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4218
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "advanced_settings"

    sget-object v2, Landroid/provider/Settings$System;->ADVANCED_SETTINGS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4219
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "screen_auto_brightness_adj"

    sget-object v2, Landroid/provider/Settings$System;->SCREEN_AUTO_BRIGHTNESS_ADJ_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4220
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "vibrate_input_devices"

    sget-object v2, Landroid/provider/Settings$System;->VIBRATE_INPUT_DEVICES_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4221
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "volume_master_mute"

    sget-object v2, Landroid/provider/Settings$System;->VOLUME_MASTER_MUTE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4222
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "microphone_mute"

    sget-object v2, Landroid/provider/Settings$System;->MICROPHONE_MUTE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4223
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "notifications_use_ring_volume"

    sget-object v2, Landroid/provider/Settings$System;->NOTIFICATIONS_USE_RING_VOLUME_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4224
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "vibrate_in_silent"

    sget-object v2, Landroid/provider/Settings$System;->VIBRATE_IN_SILENT_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4225
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "media_button_receiver"

    sget-object v2, Landroid/provider/Settings$System;->MEDIA_BUTTON_RECEIVER_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4226
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "hide_rotation_lock_toggle_for_accessibility"

    .line 4227
    sget-object v2, Landroid/provider/Settings$System;->HIDE_ROTATION_LOCK_TOGGLE_FOR_ACCESSIBILITY_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 4226
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4228
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "vibrate_when_ringing"

    sget-object v2, Landroid/provider/Settings$System;->VIBRATE_WHEN_RINGING_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4229
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "dtmf_tone_type"

    sget-object v2, Landroid/provider/Settings$System;->DTMF_TONE_TYPE_WHEN_DIALING_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4230
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "hearing_aid"

    sget-object v2, Landroid/provider/Settings$System;->HEARING_AID_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4231
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "tty_mode"

    sget-object v2, Landroid/provider/Settings$System;->TTY_MODE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4232
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "notification_light_pulse"

    sget-object v2, Landroid/provider/Settings$System;->NOTIFICATION_LIGHT_PULSE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4233
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "pointer_location"

    sget-object v2, Landroid/provider/Settings$System;->POINTER_LOCATION_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4234
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "show_touches"

    sget-object v2, Landroid/provider/Settings$System;->SHOW_TOUCHES_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4235
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "window_orientation_listener_log"

    .line 4236
    sget-object v2, Landroid/provider/Settings$System;->WINDOW_ORIENTATION_LISTENER_LOG_VALIDATOR:Landroid/provider/Settings$System$Validator;

    .line 4235
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4237
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "lockscreen_sounds_enabled"

    sget-object v2, Landroid/provider/Settings$System;->LOCKSCREEN_SOUNDS_ENABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4238
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "lockscreen.disabled"

    sget-object v2, Landroid/provider/Settings$System;->LOCKSCREEN_DISABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4239
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "sip_receive_calls"

    sget-object v2, Landroid/provider/Settings$System;->SIP_RECEIVE_CALLS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4240
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "sip_call_options"

    sget-object v2, Landroid/provider/Settings$System;->SIP_CALL_OPTIONS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4241
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "SIP_ALWAYS"

    sget-object v2, Landroid/provider/Settings$System;->SIP_ALWAYS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4242
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "SIP_ADDRESS_ONLY"

    sget-object v2, Landroid/provider/Settings$System;->SIP_ADDRESS_ONLY_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4243
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "SIP_ASK_ME_EACH_TIME"

    sget-object v2, Landroid/provider/Settings$System;->SIP_ASK_ME_EACH_TIME_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4244
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "pointer_speed"

    sget-object v2, Landroid/provider/Settings$System;->POINTER_SPEED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4245
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "lock_to_app_enabled"

    sget-object v2, Landroid/provider/Settings$System;->LOCK_TO_APP_ENABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4246
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "egg_mode"

    sget-object v2, Landroid/provider/Settings$System;->EGG_MODE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4247
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "wifi_static_ip"

    sget-object v2, Landroid/provider/Settings$System;->WIFI_STATIC_IP_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4248
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "wifi_static_gateway"

    sget-object v2, Landroid/provider/Settings$System;->WIFI_STATIC_GATEWAY_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4249
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "wifi_static_netmask"

    sget-object v2, Landroid/provider/Settings$System;->WIFI_STATIC_NETMASK_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4250
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "wifi_static_dns1"

    sget-object v2, Landroid/provider/Settings$System;->WIFI_STATIC_DNS1_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4251
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "wifi_static_dns2"

    sget-object v2, Landroid/provider/Settings$System;->WIFI_STATIC_DNS2_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4254
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "selected_step_option"

    sget-object v2, Landroid/provider/Settings$System;->VIDEO_STEP_OPTION_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4255
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "wps_nfc_pubkey"

    sget-object v2, Landroid/provider/Settings$System;->WPS_NFC_KEY_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4256
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "wps_em_wifi_enable"

    sget-object v2, Landroid/provider/Settings$System;->WPS_EM_WIFI_OPTIONN_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4257
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "wps_em_p2p_enable"

    sget-object v2, Landroid/provider/Settings$System;->WPS_EM_P2P_OPTION_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4258
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "permission_control_state"

    sget-object v2, Landroid/provider/Settings$System;->PERMISSION_CONTROL_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4259
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "permission_control_attached"

    sget-object v2, Landroid/provider/Settings$System;->PERMISSION_CONTROL_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4260
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "permission_switch_off_dlg_state"

    sget-object v2, Landroid/provider/Settings$System;->PERMISSION_CONTROL_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4267
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/provider/Settings$System;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    .line 4269
    sget-object v0, Landroid/provider/Settings$System;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "date_format"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4270
    sget-object v0, Landroid/provider/Settings$System;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "haptic_feedback_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4271
    sget-object v0, Landroid/provider/Settings$System;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "sound_effects_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4272
    sget-object v0, Landroid/provider/Settings$System;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "show_password"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4273
    sget-object v0, Landroid/provider/Settings$System;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "time_12_24"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1457
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1457
    invoke-direct {p0}, Landroid/provider/Settings$NameValueTable;-><init>()V

    return-void
.end method

.method public static canWrite(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4533
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4534
    .local v0, "uid":I
    invoke-static {p0, v0}, Landroid/provider/Settings;->getPackageNameForUid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 4535
    const/4 v2, 0x0

    .line 4534
    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings;->isCallingPackageAllowedToWriteSettings(Landroid/content/Context;ILjava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static clearConfiguration(Landroid/content/res/Configuration;)V
    .locals 1
    .param p0, "inoutConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1983
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 1982
    return-void
.end method

.method public static getCloneToManagedProfileSettings(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4278
    .local p0, "outKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Landroid/provider/Settings$System;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4277
    return-void
.end method

.method public static getConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "outConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1965
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)V

    .line 1964
    return-void
.end method

.method public static getConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)V
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "outConfig"    # Landroid/content/res/Configuration;
    .param p2, "userHandle"    # I

    .prologue
    .line 1972
    const-string/jumbo v0, "font_scale"

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 1971
    invoke-static {p0, v0, v1, p2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 1973
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 1974
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 1970
    :cond_0
    return-void
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 1916
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # F

    .prologue
    .line 1882
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    return v0
.end method

.method public static getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # F
    .param p3, "userHandle"    # I

    .prologue
    .line 1888
    invoke-static {p0, p1, p3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1890
    .local v1, "v":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .end local p2    # "def":F
    :cond_0
    return p2

    .line 1891
    .restart local p2    # "def":F
    :catch_0
    move-exception v0

    .line 1892
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p2
.end method

.method public static getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)F
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 1922
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1923
    .local v1, "v":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1924
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1927
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1928
    :catch_0
    move-exception v0

    .line 1929
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 1743
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    .line 1710
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 1749
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1751
    .local v1, "v":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1752
    :catch_0
    move-exception v0

    .line 1753
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1715
    invoke-static {p0, p1, p3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1717
    .local v1, "v":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .end local p2    # "def":I
    :cond_0
    return p2

    .line 1718
    .restart local p2    # "def":I
    :catch_0
    move-exception v0

    .line 1719
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p2
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 1830
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # J

    .prologue
    .line 1795
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 1836
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1838
    .local v1, "valString":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 1839
    :catch_0
    move-exception v0

    .line 1840
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # J
    .param p4, "userHandle"    # I

    .prologue
    .line 1801
    invoke-static {p0, p1, p4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1804
    .local v1, "valString":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1808
    .local v2, "value":J
    :goto_0
    return-wide v2

    .line 1804
    .end local v2    # "value":J
    :cond_0
    move-wide v2, p2

    .restart local v2    # "value":J
    goto :goto_0

    .line 1805
    .end local v2    # "value":J
    :catch_0
    move-exception v0

    .line 1806
    .local v0, "e":Ljava/lang/NumberFormatException;
    move-wide v2, p2

    .restart local v2    # "value":J
    goto :goto_0
.end method

.method public static getMovedToGlobalSettings(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1608
    .local p0, "outKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1609
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1607
    return-void
.end method

.method public static getMovedToSecureSettings(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1614
    .local p0, "outKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1613
    return-void
.end method

.method public static getNonLegacyMovedKeys(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1619
    .local p0, "outKeySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1618
    return-void
.end method

.method public static getShowGTalkServiceStatus(Landroid/content/ContentResolver;)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2012
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getShowGTalkServiceStatusForUser(Landroid/content/ContentResolver;I)Z

    move-result v0

    return v0
.end method

.method public static getShowGTalkServiceStatusForUser(Landroid/content/ContentResolver;I)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "userHandle"    # I

    .prologue
    const/4 v0, 0x0

    .line 2021
    const-string/jumbo v1, "SHOW_GTALK_SERVICE_STATUS"

    invoke-static {p0, v1, v0, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1629
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 1635
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1636
    const-string/jumbo v0, "SettingsInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has moved from android.provider.Settings.System"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1637
    const-string/jumbo v2, " to android.provider.Settings.Secure, returning read-only value."

    .line 1636
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1640
    :cond_0
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1641
    :cond_1
    const-string/jumbo v0, "SettingsInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has moved from android.provider.Settings.System"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1642
    const-string/jumbo v2, " to android.provider.Settings.Global, returning read-only value."

    .line 1641
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1645
    :cond_2
    sget-object v0, Landroid/provider/Settings$System;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    invoke-virtual {v0, p0, p1, p2}, Landroid/provider/Settings$NameValueCache;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1682
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1683
    const-string/jumbo v0, "SettingsInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has moved from android.provider.Settings.System"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1684
    const-string/jumbo v2, " to android.provider.Settings.Secure, returning Secure URI."

    .line 1683
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    sget-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/Settings$Secure;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 1687
    :cond_0
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1688
    :cond_1
    const-string/jumbo v0, "SettingsInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has moved from android.provider.Settings.System"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1689
    const-string/jumbo v2, " to android.provider.Settings.Global, returning read-only global URI."

    .line 1688
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    sget-object v0, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/Settings$Global;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 1692
    :cond_2
    sget-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/Settings$System;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getVoiceCommandValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "baseCommand"    # Ljava/lang/String;
    .param p2, "commandId"    # I

    .prologue
    .line 3869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasInterestingConfigurationChanges(I)Z
    .locals 2
    .param p0, "changes"    # I

    .prologue
    const/4 v0, 0x0

    .line 2006
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static putConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 1995
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)Z

    move-result v0

    return v0
.end method

.method public static putConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "userHandle"    # I

    .prologue
    .line 2001
    const-string/jumbo v0, "font_scale"

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {p0, v0, v1, p2}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    move-result v0

    return v0
.end method

.method public static putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 1947
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    move-result v0

    return v0
.end method

.method public static putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F
    .param p3, "userHandle"    # I

    .prologue
    .line 1953
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 1771
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1777
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 1858
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/provider/Settings$System;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    move-result v0

    return v0
.end method

.method public static putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userHandle"    # I

    .prologue
    .line 1864
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1656
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 1662
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1663
    const-string/jumbo v0, "SettingsInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has moved from android.provider.Settings.System"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1664
    const-string/jumbo v2, " to android.provider.Settings.Secure, value is unchanged."

    .line 1663
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    return v3

    .line 1667
    :cond_0
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1668
    :cond_1
    const-string/jumbo v0, "SettingsInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has moved from android.provider.Settings.System"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1669
    const-string/jumbo v2, " to android.provider.Settings.Global, value is unchanged."

    .line 1668
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    return v3

    .line 1672
    :cond_2
    sget-object v0, Landroid/provider/Settings$System;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/provider/Settings$NameValueCache;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static setShowGTalkServiceStatus(Landroid/content/ContentResolver;Z)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "flag"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2027
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->setShowGTalkServiceStatusForUser(Landroid/content/ContentResolver;ZI)V

    .line 2026
    return-void
.end method

.method public static setShowGTalkServiceStatusForUser(Landroid/content/ContentResolver;ZI)V
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "flag"    # Z
    .param p2, "userHandle"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2037
    const-string/jumbo v1, "SHOW_GTALK_SERVICE_STATUS"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v1, v0, p2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2036
    return-void

    .line 2037
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setVoiceCommandValue(Landroid/content/ContentResolver;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "baseCommand"    # Ljava/lang/String;
    .param p2, "commandId"    # I
    .param p3, "launchApp"    # Ljava/lang/String;

    .prologue
    .line 3860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3859
    invoke-static {p0, v0, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3858
    return-void
.end method
