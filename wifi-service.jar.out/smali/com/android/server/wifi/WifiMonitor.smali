.class public Lcom/android/server/wifi/WifiMonitor;
.super Ljava/lang/Object;
.source "WifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;,
        Lcom/android/server/wifi/WifiMonitor$MonitorThread;
    }
.end annotation


# static fields
.field private static final ADDR_STRING:Ljava/lang/String; = "addr="

.field public static final ANQP_DONE_EVENT:I = 0x2402c

.field private static final ANQP_DONE_STR:Ljava/lang/String; = "ANQP-QUERY-DONE"

.field public static final AP_STA_CONNECTED_EVENT:I = 0x2402a

.field private static final AP_STA_CONNECTED_STR:Ljava/lang/String; = "AP-STA-CONNECTED"

.field public static final AP_STA_DISCONNECTED_EVENT:I = 0x24029

.field private static final AP_STA_DISCONNECTED_STR:Ljava/lang/String; = "AP-STA-DISCONNECTED"

.field private static final ASSOCIATED_WITH_STR:Ljava/lang/String; = "Associated with "

.field public static final ASSOCIATION_REJECTION_EVENT:I = 0x2402b

.field private static final ASSOC_REJECT:I = 0x9

.field private static final ASSOC_REJECT_STR:Ljava/lang/String; = "ASSOC-REJECT"

.field public static final AUTHENTICATION_FAILURE_EVENT:I = 0x24007

.field private static final AUTHENTICATION_TIMEOUT_PREFIX_STR:Ljava/lang/String; = "Authentication with"

.field private static final AUTHENTICATION_TIMEOUT_STR:Ljava/lang/String; = "timed out"

.field private static final AUTH_EVENT_PREFIX_STR:Ljava/lang/String; = "Authentication with"

.field private static final AUTH_TIMEOUT_STR:Ljava/lang/String; = "timed out."

.field private static final BASE:I = 0x24000

.field private static final BSS_ADDED:I = 0xc

.field private static final BSS_ADDED_STR:Ljava/lang/String; = "BSS-ADDED"

.field private static final BSS_REMOVED:I = 0xd

.field private static final BSS_REMOVED_STR:Ljava/lang/String; = "BSS-REMOVED"

.field private static final CONFIG_AUTH_FAILURE:I = 0x12

.field private static final CONFIG_MULTIPLE_PBC_DETECTED:I = 0xc

.field private static final CONNECTED:I = 0x1

.field private static final CONNECTED_STR:Ljava/lang/String; = "CONNECTED"

.field private static DBG:Z = false

.field private static final DISCONNECTED:I = 0x2

.field private static final DISCONNECTED_STR:Ljava/lang/String; = "DISCONNECTED"

.field public static final DRIVER_HUNG_EVENT:I = 0x2400c

.field private static final DRIVER_STATE:I = 0x7

.field private static final DRIVER_STATE_STR:Ljava/lang/String; = "DRIVER-STATE"

.field private static final EAP_AUTH_FAILURE_STR:Ljava/lang/String; = "EAP authentication failed"

.field private static final EAP_FAILURE:I = 0x8

.field private static final EAP_FAILURE_STR:Ljava/lang/String; = "EAP-FAILURE"

.field private static final EAP_FAST_NEW_PAC_UPDATED:Ljava/lang/String; = "EAP-FAST-NEW-PAC-UPDATED"

.field private static final EVENT_PREFIX_LEN_STR:I

.field private static final EVENT_PREFIX_STR:Ljava/lang/String; = "CTRL-EVENT-"

.field public static final GAS_QUERY_DONE_EVENT:I = 0x24034

.field private static final GAS_QUERY_DONE_STR:Ljava/lang/String; = "GAS-QUERY-DONE"

.field private static final GAS_QUERY_PREFIX_STR:Ljava/lang/String; = "GAS-QUERY-"

.field public static final GAS_QUERY_START_EVENT:I = 0x24033

.field private static final GAS_QUERY_START_STR:Ljava/lang/String; = "GAS-QUERY-START"

.field private static final HOST_AP_EVENT_PREFIX_STR:Ljava/lang/String; = "AP"

.field public static final HS20_DEAUTH_EVENT:I = 0x2403e

.field private static final HS20_DEAUTH_STR:Ljava/lang/String; = "HS20-DEAUTH-IMMINENT-NOTICE"

.field private static final HS20_PREFIX_STR:Ljava/lang/String; = "HS20-"

.field public static final HS20_REMEDIATION_EVENT:I = 0x2403d

.field private static final HS20_SUB_REM_STR:Ljava/lang/String; = "HS20-SUBSCRIPTION-REMEDIATION"

.field public static final HS_R1_CONNECTED_EVENT:I = 0x24059

.field private static final IDENTITY_STR:Ljava/lang/String; = "IDENTITY"

.field private static final LINK_SPEED:I = 0x5

.field private static final LINK_SPEED_STR:Ljava/lang/String; = "LINK-SPEED"

.field private static final MAX_RECV_ERRORS:I = 0xa

.field public static final NETWORK_CONNECTION_EVENT:I = 0x24003

.field public static final NETWORK_DISCONNECTION_EVENT:I = 0x24004

.field public static final NEW_PAC_UPDATED_EVENT:I = 0x24051

.field private static final NO_CERTIFICATION:I = 0x10

.field public static final P2P_DEVICE_FOUND_EVENT:I = 0x24015

.field private static final P2P_DEVICE_FOUND_STR:Ljava/lang/String; = "P2P-DEVICE-FOUND"

.field public static final P2P_DEVICE_LOST_EVENT:I = 0x24016

.field private static final P2P_DEVICE_LOST_STR:Ljava/lang/String; = "P2P-DEVICE-LOST"

.field private static final P2P_EVENT_PREFIX_STR:Ljava/lang/String; = "P2P"

.field public static final P2P_FIND_STOPPED_EVENT:I = 0x24025

.field private static final P2P_FIND_STOPPED_STR:Ljava/lang/String; = "P2P-FIND-STOPPED"

.field public static final P2P_GC_IP_GET_EVENT:I = 0x24057

.field private static final P2P_GC_IP_GET_STR:Ljava/lang/String; = "P2P-GC-IP-GET"

.field public static final P2P_GO_IP_ALLOCATE_EVENT:I = 0x24056

.field private static final P2P_GO_IP_ALLOCATE_STR:Ljava/lang/String; = "P2P-GO-IP-ALLOCATE"

.field public static final P2P_GO_NEGOTIATION_FAILURE_EVENT:I = 0x2401a

.field public static final P2P_GO_NEGOTIATION_REQUEST_EVENT:I = 0x24017

.field public static final P2P_GO_NEGOTIATION_SUCCESS_EVENT:I = 0x24019

.field private static final P2P_GO_NEG_FAILURE_STR:Ljava/lang/String; = "P2P-GO-NEG-FAILURE"

.field private static final P2P_GO_NEG_REQUEST_STR:Ljava/lang/String; = "P2P-GO-NEG-REQUEST"

.field private static final P2P_GO_NEG_SUCCESS_STR:Ljava/lang/String; = "P2P-GO-NEG-SUCCESS"

.field public static final P2P_GROUP_FORMATION_FAILURE_EVENT:I = 0x2401c

.field private static final P2P_GROUP_FORMATION_FAILURE_STR:Ljava/lang/String; = "P2P-GROUP-FORMATION-FAILURE"

.field public static final P2P_GROUP_FORMATION_SUCCESS_EVENT:I = 0x2401b

.field private static final P2P_GROUP_FORMATION_SUCCESS_STR:Ljava/lang/String; = "P2P-GROUP-FORMATION-SUCCESS"

.field public static final P2P_GROUP_REMOVED_EVENT:I = 0x2401e

.field private static final P2P_GROUP_REMOVED_STR:Ljava/lang/String; = "P2P-GROUP-REMOVED"

.field public static final P2P_GROUP_STARTED_EVENT:I = 0x2401d

.field private static final P2P_GROUP_STARTED_STR:Ljava/lang/String; = "P2P-GROUP-STARTED"

.field public static final P2P_INVITATION_RECEIVED_EVENT:I = 0x2401f

.field private static final P2P_INVITATION_RECEIVED_STR:Ljava/lang/String; = "P2P-INVITATION-RECEIVED"

.field public static final P2P_INVITATION_RESULT_EVENT:I = 0x24020

.field private static final P2P_INVITATION_RESULT_STR:Ljava/lang/String; = "P2P-INVITATION-RESULT"

.field private static final P2P_NFC_DEVICE_FOUND_STR:Ljava/lang/String; = "P2P-NFC-DEVICE-FOUND"

.field public static final P2P_NFC_GO_INVITED_EVENT:I = 0x24058

.field private static final P2P_NFC_GO_INVITED_STR:Ljava/lang/String; = "P2P-NFC-GO-INVITED"

.field public static final P2P_PEER_DISCONNECT_EVENT:I = 0x24028

.field public static final P2P_PROV_DISC_ENTER_PIN_EVENT:I = 0x24023

.field private static final P2P_PROV_DISC_ENTER_PIN_STR:Ljava/lang/String; = "P2P-PROV-DISC-ENTER-PIN"

.field public static final P2P_PROV_DISC_FAILURE_EVENT:I = 0x24027

.field private static final P2P_PROV_DISC_FAILURE_STR:Ljava/lang/String; = "P2P-PROV-DISC-FAILURE"

.field public static final P2P_PROV_DISC_PBC_REQ_EVENT:I = 0x24021

.field private static final P2P_PROV_DISC_PBC_REQ_STR:Ljava/lang/String; = "P2P-PROV-DISC-PBC-REQ"

.field public static final P2P_PROV_DISC_PBC_RSP_EVENT:I = 0x24022

.field private static final P2P_PROV_DISC_PBC_RSP_STR:Ljava/lang/String; = "P2P-PROV-DISC-PBC-RESP"

.field public static final P2P_PROV_DISC_SHOW_PIN_EVENT:I = 0x24024

.field private static final P2P_PROV_DISC_SHOW_PIN_STR:Ljava/lang/String; = "P2P-PROV-DISC-SHOW-PIN"

.field public static final P2P_SERV_DISC_RESP_EVENT:I = 0x24026

.field private static final P2P_SERV_DISC_RESP_STR:Ljava/lang/String; = "P2P-SERV-DISC-RESP"

.field private static final PASSWORD_MAY_BE_INCORRECT_STR:Ljava/lang/String; = "pre-shared key may be incorrect"

.field private static final REASON_TKIP_ONLY_PROHIBITED:I = 0x1

.field private static final REASON_WEP_PROHIBITED:I = 0x2

.field private static final REENABLED_STR:Ljava/lang/String; = "SSID-REENABLED"

.field private static final REQUEST_PREFIX_LEN_STR:I

.field private static final REQUEST_PREFIX_STR:Ljava/lang/String; = "CTRL-REQ-"

.field private static final RESULT_STRING:Ljava/lang/String; = "result="

.field public static final RX_HS20_ANQP_ICON_EVENT:I = 0x24035

.field private static final RX_HS20_ANQP_ICON_STR:Ljava/lang/String; = "RX-HS20-ANQP-ICON"

.field private static final RX_HS20_ANQP_ICON_STR_LEN:I

.field private static final SCAN_FAILED:I = 0xf

.field public static final SCAN_FAILED_EVENT:I = 0x24011

.field private static final SCAN_FAILED_STR:Ljava/lang/String; = "SCAN-FAILED"

.field private static final SCAN_RESULTS:I = 0x4

.field public static final SCAN_RESULTS_EVENT:I = 0x24005

.field private static final SCAN_RESULTS_STR:Ljava/lang/String; = "SCAN-RESULTS"

.field private static final SIM_STR:Ljava/lang/String; = "SIM"

.field private static final SSID_REENABLE:I = 0xb

.field public static final SSID_REENABLED:I = 0x2400e

.field private static final SSID_TEMP_DISABLE:I = 0xa

.field public static final SSID_TEMP_DISABLED:I = 0x2400d

.field private static final STATE_CHANGE:I = 0x3

.field private static final STATE_CHANGE_STR:Ljava/lang/String; = "STATE-CHANGE"

.field public static final SUPPLICANT_STATE_CHANGE_EVENT:I = 0x24006

.field public static final SUP_CONNECTION_EVENT:I = 0x24001

.field public static final SUP_DISCONNECTION_EVENT:I = 0x24002

.field public static final SUP_REQUEST_IDENTITY:I = 0x2400f

.field public static final SUP_REQUEST_SIM_AUTH:I = 0x24010

.field private static final TAG:Ljava/lang/String; = "WifiMonitor"

.field private static final TARGET_BSSID_STR:Ljava/lang/String; = "Trying to associate with "

.field private static final TEMP_DISABLED_STR:Ljava/lang/String; = "SSID-TEMP-DISABLED"

.field private static final TERMINATING:I = 0x6

.field private static final TERMINATING_STR:Ljava/lang/String; = "TERMINATING"

.field private static final UNKNOWN:I = 0xe

.field private static VDBG:Z = false

.field public static final WAPI_NO_CERTIFICATION_EVENT:I = 0x24050

.field private static final WAPI_NO_CERTIFICATION_STRING:Ljava/lang/String; = "EAP-NO-CERTIFICATION"

.field public static final WHOLE_CHIP_RESET_FAIL_EVENT:I = 0x24052

.field private static final WHOLE_CHIP_RESET_FAIL_STRING:Ljava/lang/String; = "WHOLE-CHIP-RESET-FAIL"

.field private static final WPA_EVENT_PREFIX_STR:Ljava/lang/String; = "WPA:"

.field private static final WPA_RECV_ERROR_STR:Ljava/lang/String; = "recv error"

.field public static final WPS_ER_AP_ADD_EVENT:I = 0x24054

.field private static final WPS_ER_AP_ADD_STR:Ljava/lang/String; = "WPS-ER-AP-ADD"

.field public static final WPS_ER_ENROLLEE_ADD_EVENT:I = 0x24053

.field private static final WPS_ER_ENROLLEE_ADD_STR:Ljava/lang/String; = "WPS-ER-ENROLLEE-ADD-PBC"

.field public static final WPS_FAIL_EVENT:I = 0x24009

.field private static final WPS_FAIL_PATTERN:Ljava/lang/String; = "WPS-FAIL msg=\\d+(?: config_error=(\\d+))?(?: reason=(\\d+))?"

.field private static final WPS_FAIL_STR:Ljava/lang/String; = "WPS-FAIL"

.field public static final WPS_OVERLAP_EVENT:I = 0x2400a

.field private static final WPS_OVERLAP_STR:Ljava/lang/String; = "WPS-OVERLAP-DETECTED"

.field public static final WPS_SUCCESS_EVENT:I = 0x24008

.field private static final WPS_SUCCESS_STR:Ljava/lang/String; = "WPS-SUCCESS"

.field public static final WPS_TIMEOUT_EVENT:I = 0x2400b

.field private static final WPS_TIMEOUT_STR:Ljava/lang/String; = "WPS-TIMEOUT"

.field private static eventLogCounter:I

.field private static mAssocRejectEventPattern:Ljava/util/regex/Pattern;

.field private static mAssociatedPattern:Ljava/util/regex/Pattern;

.field private static mConnectedEventPattern:Ljava/util/regex/Pattern;

.field private static mDisconnectedEventPattern:Ljava/util/regex/Pattern;

.field private static mRequestGsmAuthPattern:Ljava/util/regex/Pattern;

.field private static mRequestIdentityPattern:Ljava/util/regex/Pattern;

.field private static mRequestUmtsAuthPattern:Ljava/util/regex/Pattern;

.field private static mTargetBSSIDPattern:Ljava/util/regex/Pattern;

.field private static final p2pErrorExPattern1:Ljava/util/regex/Pattern;

.field private static final p2pErrorExPattern2:Ljava/util/regex/Pattern;

.field private static final p2pErrorExPattern3:Ljava/util/regex/Pattern;

.field private static sP2pOperFreq:I

.field private static sRecvErrors:I


# instance fields
.field private final mInterfaceName:Ljava/lang/String;

.field private mMonitoring:Z

.field private final mStateMachine:Lcom/android/internal/util/StateMachine;

.field private mStateMachine2:Lcom/android/internal/util/StateMachine;

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    return v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wifi/WifiMonitor;->VDBG:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/WifiMonitor;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/WifiMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiMonitor;->mMonitoring:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/wifi/WifiMonitor;)Lcom/android/server/wifi/WifiNative;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/WifiMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiMonitor;->mMonitoring:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/WifiMonitor;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "eventStr"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiMonitor;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    .line 60
    sput-boolean v1, Lcom/android/server/wifi/WifiMonitor;->VDBG:Z

    .line 86
    const-string/jumbo v0, "CTRL-EVENT-"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/server/wifi/WifiMonitor;->EVENT_PREFIX_LEN_STR:I

    .line 90
    const-string/jumbo v0, "CTRL-REQ-"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/server/wifi/WifiMonitor;->REQUEST_PREFIX_LEN_STR:I

    .line 122
    const-string/jumbo v0, "RX-HS20-ANQP-ICON"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/server/wifi/WifiMonitor;->RX_HS20_ANQP_ICON_STR_LEN:I

    .line 135
    sput v1, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    .line 247
    const-string/jumbo v0, "((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) .* \\[id=([0-9]+) "

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 246
    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mConnectedEventPattern:Ljava/util/regex/Pattern;

    .line 255
    const-string/jumbo v0, "((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) +reason=([0-9]+) +locally_generated=([0-1])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 254
    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mDisconnectedEventPattern:Ljava/util/regex/Pattern;

    .line 264
    const-string/jumbo v0, "((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) +status_code=([0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 263
    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mAssocRejectEventPattern:Ljava/util/regex/Pattern;

    .line 275
    const-string/jumbo v0, "Trying to associate with ((?:[0-9a-f]{2}:){5}[0-9a-f]{2}).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 274
    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mTargetBSSIDPattern:Ljava/util/regex/Pattern;

    .line 285
    const-string/jumbo v0, "Associated with ((?:[0-9a-f]{2}:){5}[0-9a-f]{2}).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 284
    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mAssociatedPattern:Ljava/util/regex/Pattern;

    .line 299
    const-string/jumbo v0, "SIM-([0-9]*):GSM-AUTH((:[0-9a-f]+)+) needed for SSID (.+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 298
    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mRequestGsmAuthPattern:Ljava/util/regex/Pattern;

    .line 312
    const-string/jumbo v0, "SIM-([0-9]*):UMTS-AUTH:([0-9a-f]+):([0-9a-f]+) needed for SSID (.+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 311
    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mRequestUmtsAuthPattern:Ljava/util/regex/Pattern;

    .line 320
    const-string/jumbo v0, "IDENTITY-([0-9]+):Identity needed for SSID (.+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 319
    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mRequestIdentityPattern:Ljava/util/regex/Pattern;

    .line 329
    const-string/jumbo v0, "status=([0-9]{1,2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 328
    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->p2pErrorExPattern1:Ljava/util/regex/Pattern;

    .line 337
    const-string/jumbo v0, "status=([0-9]{1,2}) peer_oper_freq=(-?[0-9]{1,4})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 336
    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->p2pErrorExPattern2:Ljava/util/regex/Pattern;

    .line 345
    const-string/jumbo v0, "reason=FREQ_CONFLICT peer_oper_freq=(-?[0-9]{1,4})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 344
    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->p2pErrorExPattern3:Ljava/util/regex/Pattern;

    .line 597
    const/4 v0, -0x1

    sput v0, Lcom/android/server/wifi/WifiMonitor;->sP2pOperFreq:I

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/util/StateMachine;Lcom/android/server/wifi/WifiNative;)V
    .locals 2
    .param p1, "stateMachine"    # Lcom/android/internal/util/StateMachine;
    .param p2, "wifiNative"    # Lcom/android/server/wifi/WifiNative;

    .prologue
    .line 608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 609
    sget-boolean v0, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiMonitor"

    const-string/jumbo v1, "Creating WifiMonitor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_0
    iput-object p2, p0, Lcom/android/server/wifi/WifiMonitor;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 611
    iget-object v0, p2, Lcom/android/server/wifi/WifiNative;->mInterfaceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;

    .line 612
    iput-object p1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    .line 613
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    .line 614
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiMonitor;->mMonitoring:Z

    .line 616
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->-get2()Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->registerInterfaceMonitor(Ljava/lang/String;Lcom/android/server/wifi/WifiMonitor;)V

    .line 608
    return-void
.end method

.method private dispatchEvent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 27
    .param p1, "eventStr"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    .line 947
    sget-boolean v21, Lcom/android/server/wifi/WifiMonitor;->VDBG:Z

    if-eqz v21, :cond_0

    .line 949
    if-eqz p1, :cond_0

    const-string/jumbo v21, "CTRL-EVENT-BSS-ADDED"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 955
    :cond_0
    :goto_0
    const-string/jumbo v21, "CTRL-EVENT-"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_18

    .line 956
    const-string/jumbo v21, "WPA:"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 957
    const-string/jumbo v21, "pre-shared key may be incorrect"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    if-lez v21, :cond_4

    .line 962
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v21, v0

    sget v22, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    const v23, 0x24007

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    .line 1014
    :cond_2
    :goto_1
    sget v21, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    add-int/lit8 v21, v21, 0x1

    sput v21, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    .line 1015
    const/16 v21, 0x0

    return v21

    .line 950
    :cond_3
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "WifiMonitor:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " cnt="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget v22, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 951
    const-string/jumbo v22, " dispatchEvent: "

    .line 950
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiMonitor;->logDbg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 959
    :cond_4
    const-string/jumbo v21, "Authentication with"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 960
    const-string/jumbo v21, "timed out"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    if-gtz v21, :cond_1

    .line 963
    :cond_5
    const-string/jumbo v21, "WPS-SUCCESS"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v21, v0

    const v22, 0x24008

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_1

    .line 965
    :cond_6
    const-string/jumbo v21, "WPS-FAIL"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 966
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiMonitor;->handleWpsFailEvent(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 967
    :cond_7
    const-string/jumbo v21, "WPS-OVERLAP-DETECTED"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v21, v0

    const v22, 0x2400a

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .line 969
    :cond_8
    const-string/jumbo v21, "WPS-TIMEOUT"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v21, v0

    const v22, 0x2400b

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .line 971
    :cond_9
    const-string/jumbo v21, "P2P"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 972
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiMonitor;->handleP2pEvents(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 973
    :cond_a
    const-string/jumbo v21, "AP"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 974
    invoke-direct/range {p0 .. p2}, Lcom/android/server/wifi/WifiMonitor;->handleHostApEvents(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 975
    :cond_b
    const-string/jumbo v21, "ANQP-QUERY-DONE"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 977
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiMonitor;->handleAnqpResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 979
    :catch_0
    move-exception v11

    .line 980
    .local v11, "iae":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v21, "WifiMonitor"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Bad ANQP event string: \'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "\': "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 982
    .end local v11    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_c
    const-string/jumbo v21, "GAS-QUERY-"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 983
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiMonitor;->handleGasQueryEvents(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 984
    :cond_d
    const-string/jumbo v21, "RX-HS20-ANQP-ICON"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    move-object/from16 v21, v0

    .line 987
    sget v22, Lcom/android/server/wifi/WifiMonitor;->RX_HS20_ANQP_ICON_STR_LEN:I

    add-int/lit8 v22, v22, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    .line 986
    const v23, 0x24035

    move-object/from16 v0, v21

    move/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 988
    :cond_e
    const-string/jumbo v21, "HS20-"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 989
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiMonitor;->handleHs20Events(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 990
    :cond_f
    const-string/jumbo v21, "CTRL-REQ-"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 991
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiMonitor;->handleRequests(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 992
    :cond_10
    const-string/jumbo v21, "Trying to associate with "

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_11

    .line 993
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiMonitor;->handleTargetBSSIDEvent(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 994
    :cond_11
    const-string/jumbo v21, "Associated with "

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_12

    .line 995
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiMonitor;->handleAssociatedBSSIDEvent(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 996
    :cond_12
    const-string/jumbo v21, "Authentication with"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_13

    .line 997
    const-string/jumbo v21, "timed out."

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v21

    .line 996
    if-eqz v21, :cond_13

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v21, v0

    const v22, 0x24007

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .line 1000
    :cond_13
    const-string/jumbo v21, "EAP-FAST-NEW-PAC-UPDATED"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_14

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v21, v0

    const v22, 0x24051

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .line 1003
    :cond_14
    const-string/jumbo v21, "WHOLE-CHIP-RESET-FAIL"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_15

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v21, v0

    const v22, 0x24052

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .line 1006
    :cond_15
    const-string/jumbo v21, "WPS-ER-ENROLLEE-ADD-PBC"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_16

    .line 1007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v21, v0

    const v22, 0x24053

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1008
    :cond_16
    const-string/jumbo v21, "WPS-ER-AP-ADD"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_17

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v21, v0

    const v22, 0x24054

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1012
    :cond_17
    sget-boolean v21, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v21, :cond_2

    const-string/jumbo v21, "WifiMonitor"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "couldn\'t identify event type - "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1018
    :cond_18
    sget v21, Lcom/android/server/wifi/WifiMonitor;->EVENT_PREFIX_LEN_STR:I

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 1019
    .local v10, "eventName":Ljava/lang/String;
    const/16 v21, 0x20

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    .line 1020
    .local v16, "nameEnd":I
    const/16 v21, -0x1

    move/from16 v0, v16

    move/from16 v1, v21

    if-eq v0, v1, :cond_19

    .line 1021
    const/16 v21, 0x0

    move/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1022
    :cond_19
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v21

    if-nez v21, :cond_1b

    .line 1023
    sget-boolean v21, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v21, :cond_1a

    const-string/jumbo v21, "WifiMonitor"

    const-string/jumbo v22, "Received wpa_supplicant event with empty event name"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    :cond_1a
    sget v21, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    add-int/lit8 v21, v21, 0x1

    sput v21, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    .line 1025
    const/16 v21, 0x0

    return v21

    .line 1031
    :cond_1b
    const-string/jumbo v21, "CONNECTED"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_20

    .line 1032
    const/4 v8, 0x1

    .line 1070
    .local v8, "event":I
    :goto_2
    move-object/from16 v9, p1

    .line 1071
    .local v9, "eventData":Ljava/lang/String;
    const/16 v21, 0x7

    move/from16 v0, v21

    if-eq v8, v0, :cond_1c

    const/16 v21, 0x5

    move/from16 v0, v21

    if-ne v8, v0, :cond_2f

    .line 1072
    :cond_1c
    const-string/jumbo v21, " "

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    aget-object v9, v21, v22

    .line 1085
    :cond_1d
    :goto_3
    const/16 v21, 0xa

    move/from16 v0, v21

    if-eq v8, v0, :cond_1e

    const/16 v21, 0xb

    move/from16 v0, v21

    if-ne v8, v0, :cond_36

    .line 1086
    :cond_1e
    const/16 v20, 0x0

    .line 1087
    .local v20, "substr":Ljava/lang/String;
    const/16 v17, -0x1

    .line 1088
    .local v17, "netId":I
    const-string/jumbo v21, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 1089
    .local v13, "ind":I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v13, v0, :cond_1f

    .line 1090
    add-int/lit8 v21, v13, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .line 1092
    .end local v20    # "substr":Ljava/lang/String;
    :cond_1f
    if-eqz v20, :cond_33

    .line 1093
    const-string/jumbo v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 1094
    .local v19, "status":[Ljava/lang/String;
    const/16 v21, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v22, v0

    :goto_4
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_33

    aget-object v14, v19, v21

    .line 1095
    .local v14, "key":Ljava/lang/String;
    const-string/jumbo v23, "id="

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x3

    move/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v14, v0, v1, v2, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v23

    if-eqz v23, :cond_32

    .line 1096
    const/4 v12, 0x3

    .line 1097
    .local v12, "idx":I
    const/16 v17, 0x0

    .line 1098
    :goto_5
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v23

    move/from16 v0, v23

    if-ge v12, v0, :cond_32

    .line 1099
    invoke-virtual {v14, v12}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1100
    .local v6, "c":C
    const/16 v23, 0x30

    move/from16 v0, v23

    if-lt v6, v0, :cond_32

    const/16 v23, 0x39

    move/from16 v0, v23

    if-gt v6, v0, :cond_32

    .line 1101
    mul-int/lit8 v17, v17, 0xa

    .line 1102
    add-int/lit8 v23, v6, -0x30

    add-int v17, v17, v23

    .line 1103
    add-int/lit8 v12, v12, 0x1

    .line 1100
    goto :goto_5

    .line 1033
    .end local v6    # "c":C
    .end local v8    # "event":I
    .end local v9    # "eventData":Ljava/lang/String;
    .end local v12    # "idx":I
    .end local v13    # "ind":I
    .end local v14    # "key":Ljava/lang/String;
    .end local v17    # "netId":I
    .end local v19    # "status":[Ljava/lang/String;
    :cond_20
    const-string/jumbo v21, "DISCONNECTED"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_21

    .line 1034
    const/4 v8, 0x2

    .line 1036
    .restart local v8    # "event":I
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiMonitor;->handleP2pEvents(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1037
    .end local v8    # "event":I
    :cond_21
    const-string/jumbo v21, "STATE-CHANGE"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_22

    .line 1038
    const/4 v8, 0x3

    .restart local v8    # "event":I
    goto/16 :goto_2

    .line 1039
    .end local v8    # "event":I
    :cond_22
    const-string/jumbo v21, "SCAN-RESULTS"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_23

    .line 1040
    const/4 v8, 0x4

    .restart local v8    # "event":I
    goto/16 :goto_2

    .line 1041
    .end local v8    # "event":I
    :cond_23
    const-string/jumbo v21, "SCAN-FAILED"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_24

    .line 1042
    const/16 v8, 0xf

    .restart local v8    # "event":I
    goto/16 :goto_2

    .line 1043
    .end local v8    # "event":I
    :cond_24
    const-string/jumbo v21, "LINK-SPEED"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_25

    .line 1044
    const/4 v8, 0x5

    .restart local v8    # "event":I
    goto/16 :goto_2

    .line 1045
    .end local v8    # "event":I
    :cond_25
    const-string/jumbo v21, "TERMINATING"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_26

    .line 1046
    const/4 v8, 0x6

    .restart local v8    # "event":I
    goto/16 :goto_2

    .line 1047
    .end local v8    # "event":I
    :cond_26
    const-string/jumbo v21, "DRIVER-STATE"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_27

    .line 1048
    const/4 v8, 0x7

    .restart local v8    # "event":I
    goto/16 :goto_2

    .line 1049
    .end local v8    # "event":I
    :cond_27
    const-string/jumbo v21, "EAP-FAILURE"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_28

    .line 1050
    const/16 v8, 0x8

    .restart local v8    # "event":I
    goto/16 :goto_2

    .line 1051
    .end local v8    # "event":I
    :cond_28
    const-string/jumbo v21, "ASSOC-REJECT"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_29

    .line 1052
    const/16 v8, 0x9

    .restart local v8    # "event":I
    goto/16 :goto_2

    .line 1053
    .end local v8    # "event":I
    :cond_29
    const-string/jumbo v21, "SSID-TEMP-DISABLED"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2a

    .line 1054
    const/16 v8, 0xa

    .restart local v8    # "event":I
    goto/16 :goto_2

    .line 1055
    .end local v8    # "event":I
    :cond_2a
    const-string/jumbo v21, "SSID-REENABLED"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2b

    .line 1056
    const/16 v8, 0xb

    .restart local v8    # "event":I
    goto/16 :goto_2

    .line 1057
    .end local v8    # "event":I
    :cond_2b
    const-string/jumbo v21, "BSS-ADDED"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2c

    .line 1058
    const/16 v8, 0xc

    .restart local v8    # "event":I
    goto/16 :goto_2

    .line 1059
    .end local v8    # "event":I
    :cond_2c
    const-string/jumbo v21, "BSS-REMOVED"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2d

    .line 1060
    const/16 v8, 0xd

    .restart local v8    # "event":I
    goto/16 :goto_2

    .line 1063
    .end local v8    # "event":I
    :cond_2d
    const-string/jumbo v21, "EAP-NO-CERTIFICATION"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2e

    .line 1064
    const/16 v8, 0x10

    .restart local v8    # "event":I
    goto/16 :goto_2

    .line 1068
    .end local v8    # "event":I
    :cond_2e
    const/16 v8, 0xe

    .restart local v8    # "event":I
    goto/16 :goto_2

    .line 1073
    .restart local v9    # "eventData":Ljava/lang/String;
    :cond_2f
    const/16 v21, 0x3

    move/from16 v0, v21

    if-eq v8, v0, :cond_30

    const/16 v21, 0x8

    move/from16 v0, v21

    if-ne v8, v0, :cond_31

    .line 1074
    :cond_30
    const-string/jumbo v21, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 1075
    .restart local v13    # "ind":I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v13, v0, :cond_1d

    .line 1076
    add-int/lit8 v21, v13, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_3

    .line 1079
    .end local v13    # "ind":I
    :cond_31
    const-string/jumbo v21, " - "

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 1080
    .restart local v13    # "ind":I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v13, v0, :cond_1d

    .line 1081
    add-int/lit8 v21, v13, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_3

    .line 1094
    .restart local v14    # "key":Ljava/lang/String;
    .restart local v17    # "netId":I
    .restart local v19    # "status":[Ljava/lang/String;
    :cond_32
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_4

    .line 1111
    .end local v14    # "key":Ljava/lang/String;
    .end local v19    # "status":[Ljava/lang/String;
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v22, v0

    const/16 v21, 0xa

    move/from16 v0, v21

    if-ne v8, v0, :cond_35

    .line 1112
    const v21, 0x2400d

    :goto_6
    const/16 v23, 0x0

    .line 1111
    move-object/from16 v0, v22

    move/from16 v1, v21

    move/from16 v2, v17

    move/from16 v3, v23

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1167
    .end local v13    # "ind":I
    .end local v17    # "netId":I
    :cond_34
    :goto_7
    const/16 v21, 0x0

    sput v21, Lcom/android/server/wifi/WifiMonitor;->sRecvErrors:I

    .line 1168
    sget v21, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    add-int/lit8 v21, v21, 0x1

    sput v21, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    .line 1169
    const/16 v21, 0x0

    return v21

    .line 1112
    .restart local v13    # "ind":I
    .restart local v17    # "netId":I
    :cond_35
    const v21, 0x2400e

    goto :goto_6

    .line 1113
    .end local v13    # "ind":I
    .end local v17    # "netId":I
    :cond_36
    const/16 v21, 0x3

    move/from16 v0, v21

    if-ne v8, v0, :cond_37

    .line 1114
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/wifi/WifiMonitor;->handleSupplicantStateChange(Ljava/lang/String;)V

    goto :goto_7

    .line 1115
    :cond_37
    const/16 v21, 0x7

    move/from16 v0, v21

    if-ne v8, v0, :cond_38

    .line 1116
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/wifi/WifiMonitor;->handleDriverEvent(Ljava/lang/String;)V

    goto :goto_7

    .line 1117
    :cond_38
    const/16 v21, 0x6

    move/from16 v0, v21

    if-ne v8, v0, :cond_3d

    .line 1118
    const-string/jumbo v21, "WifiMonitor"

    const-string/jumbo v22, "event == TERMINATING "

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    const-string/jumbo v21, "recv error"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_39

    .line 1124
    sget v21, Lcom/android/server/wifi/WifiMonitor;->sRecvErrors:I

    add-int/lit8 v21, v21, 0x1

    sput v21, Lcom/android/server/wifi/WifiMonitor;->sRecvErrors:I

    const/16 v22, 0xa

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_3b

    .line 1125
    sget-boolean v21, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v21, :cond_39

    .line 1126
    const-string/jumbo v21, "WifiMonitor"

    const-string/jumbo v22, "too many recv errors, closing connection"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    :cond_39
    if-eqz p2, :cond_3a

    const-string/jumbo v21, "ap0"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3c

    .line 1138
    :cond_3a
    :goto_8
    const-string/jumbo v21, "WifiMonitor"

    const-string/jumbo v22, "Exit because of receiving terminating for "

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    const/16 v21, 0x1

    return v21

    .line 1129
    :cond_3b
    sget v21, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    add-int/lit8 v21, v21, 0x1

    sput v21, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    .line 1130
    const/16 v21, 0x0

    return v21

    .line 1136
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v21, v0

    sget v22, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    const v23, 0x24002

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    goto :goto_8

    .line 1140
    :cond_3d
    const/16 v21, 0x8

    move/from16 v0, v21

    if-ne v8, v0, :cond_3e

    .line 1141
    const-string/jumbo v21, "EAP authentication failed"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_34

    .line 1142
    const-string/jumbo v21, "WifiMonitor send auth failure (EAP_AUTH_FAILURE) "

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiMonitor;->logDbg(Ljava/lang/String;)V

    .line 1143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v21, v0

    sget v22, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    const v23, 0x24007

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    goto/16 :goto_7

    .line 1145
    :cond_3e
    const/16 v21, 0x9

    move/from16 v0, v21

    if-ne v8, v0, :cond_41

    .line 1146
    sget-object v21, Lcom/android/server/wifi/WifiMonitor;->mAssocRejectEventPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    .line 1147
    .local v15, "match":Ljava/util/regex/Matcher;
    const-string/jumbo v5, ""

    .line 1148
    .local v5, "BSSID":Ljava/lang/String;
    const/16 v18, -0x1

    .line 1149
    .local v18, "status":I
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->find()Z

    move-result v21

    if-nez v21, :cond_40

    .line 1150
    sget-boolean v21, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v21, :cond_3f

    const-string/jumbo v21, "WifiMonitor"

    const-string/jumbo v22, "Assoc Reject: Could not parse assoc reject string"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    :cond_3f
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v21, v0

    sget v22, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    const v23, 0x2402b

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v22

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    goto/16 :goto_7

    .line 1152
    :cond_40
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 1154
    const/16 v21, 0x2

    :try_start_1
    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v18

    goto :goto_9

    .line 1155
    :catch_1
    move-exception v7

    .line 1156
    .local v7, "e":Ljava/lang/NumberFormatException;
    const/16 v18, -0x1

    goto :goto_9

    .line 1160
    .end local v5    # "BSSID":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    .end local v15    # "match":Ljava/util/regex/Matcher;
    .end local v18    # "status":I
    :cond_41
    const/16 v21, 0xc

    move/from16 v0, v21

    if-ne v8, v0, :cond_42

    sget-boolean v21, Lcom/android/server/wifi/WifiMonitor;->VDBG:Z

    if-eqz v21, :cond_34

    .line 1162
    :cond_42
    const/16 v21, 0xd

    move/from16 v0, v21

    if-ne v8, v0, :cond_43

    sget-boolean v21, Lcom/android/server/wifi/WifiMonitor;->VDBG:Z

    if-eqz v21, :cond_34

    .line 1165
    :cond_43
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/server/wifi/WifiMonitor;->handleEvent(ILjava/lang/String;)V

    goto/16 :goto_7
.end method

.method private handleAnqpResult(Ljava/lang/String;)V
    .locals 12
    .param p1, "eventStr"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x20

    .line 1532
    const-string/jumbo v8, "addr="

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1533
    .local v0, "addrPos":I
    const-string/jumbo v8, "result="

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 1534
    .local v6, "resPos":I
    if-ltz v0, :cond_0

    if-gez v6, :cond_1

    .line 1535
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Unexpected ANQP result notification"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1537
    :cond_1
    const-string/jumbo v8, "addr="

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v0

    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 1538
    .local v1, "eoaddr":I
    if-gez v1, :cond_2

    .line 1539
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1541
    :cond_2
    const-string/jumbo v8, "result="

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 1542
    .local v4, "eoresult":I
    if-gez v4, :cond_3

    .line 1543
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 1547
    :cond_3
    :try_start_0
    const-string/jumbo v8, "addr="

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v0

    invoke-virtual {p1, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/wifi/hotspot2/Utils;->parseMac(Ljava/lang/String;)J

    move-result-wide v2

    .line 1549
    .local v2, "bssid":J
    const-string/jumbo v8, "result="

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v6

    .line 1548
    invoke-virtual {p1, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1549
    const-string/jumbo v9, "success"

    .line 1548
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1549
    const/4 v7, 0x1

    .line 1551
    .local v7, "result":I
    :goto_0
    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const v10, 0x2402c

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v7, v11, v9}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1531
    .end local v2    # "bssid":J
    .end local v7    # "result":I
    :goto_1
    return-void

    .line 1549
    .restart local v2    # "bssid":J
    :cond_4
    const/4 v7, 0x0

    .restart local v7    # "result":I
    goto :goto_0

    .line 1553
    .end local v2    # "bssid":J
    .end local v7    # "result":I
    :catch_0
    move-exception v5

    .line 1554
    .local v5, "iae":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v8, "WifiMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Bad MAC address in ANQP response: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handleAssociatedBSSIDEvent(Ljava/lang/String;)V
    .locals 6
    .param p1, "eventStr"    # Ljava/lang/String;

    .prologue
    .line 1234
    const/4 v0, 0x0

    .line 1235
    .local v0, "BSSID":Ljava/lang/String;
    sget-object v2, Lcom/android/server/wifi/WifiMonitor;->mAssociatedPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1236
    .local v1, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1237
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 1239
    .end local v0    # "BSSID":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    sget v3, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    const v4, 0x20093

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1233
    return-void
.end method

.method private handleDriverEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 1173
    if-nez p1, :cond_0

    .line 1174
    return-void

    .line 1176
    :cond_0
    const-string/jumbo v0, "HANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1177
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v1, 0x2400c

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 1172
    :cond_1
    return-void
.end method

.method private handleGasQueryEvents(Ljava/lang/String;)V
    .locals 11
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 1563
    iget-object v5, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    if-nez v5, :cond_0

    return-void

    .line 1564
    :cond_0
    const-string/jumbo v5, "GAS-QUERY-START"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1565
    iget-object v5, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    const v6, 0x24033

    invoke-virtual {v5, v6}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 1561
    :cond_1
    :goto_0
    return-void

    .line 1566
    :cond_2
    const-string/jumbo v5, "GAS-QUERY-DONE"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1567
    const-string/jumbo v5, " "

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1568
    .local v1, "dataTokens":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 1569
    .local v0, "bssid":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1570
    .local v3, "success":I
    array-length v7, v1

    move v5, v6

    .end local v0    # "bssid":Ljava/lang/String;
    :goto_1
    if-ge v5, v7, :cond_7

    aget-object v4, v1, v5

    .line 1571
    .local v4, "token":Ljava/lang/String;
    const-string/jumbo v8, "="

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1572
    .local v2, "nameValue":[Ljava/lang/String;
    array-length v8, v2

    const/4 v9, 0x2

    if-eq v8, v9, :cond_4

    .line 1570
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1575
    :cond_4
    aget-object v8, v2, v6

    const-string/jumbo v9, "addr"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1576
    aget-object v0, v2, v10

    .local v0, "bssid":Ljava/lang/String;
    goto :goto_2

    .line 1579
    .end local v0    # "bssid":Ljava/lang/String;
    :cond_5
    aget-object v8, v2, v6

    const-string/jumbo v9, "result"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1580
    aget-object v8, v2, v10

    const-string/jumbo v9, "SUCCESS"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v3, 0x1

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    .line 1584
    .end local v2    # "nameValue":[Ljava/lang/String;
    .end local v4    # "token":Ljava/lang/String;
    :cond_7
    iget-object v5, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    const v7, 0x24034

    invoke-virtual {v5, v7, v3, v6, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0

    .line 1586
    .end local v1    # "dataTokens":[Ljava/lang/String;
    .end local v3    # "success":I
    :cond_8
    sget-boolean v5, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "WifiMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown GAS query event: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleHostApEvents(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "dataString"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    const v7, 0x2402a

    const v6, 0x24029

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1500
    const-string/jumbo v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1502
    .local v0, "tokens":[Ljava/lang/String;
    const-string/jumbo v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleHostApEvents mWifiNative.mInterfaceName= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v3, v3, Lcom/android/server/wifi/WifiNative;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " minitor.iface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    aget-object v1, v0, v4

    const-string/jumbo v2, "AP-STA-CONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1506
    if-nez p2, :cond_0

    const-string/jumbo p2, "whatever"

    .line 1507
    :cond_0
    const-string/jumbo v1, "ap0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1508
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    aget-object v2, v0, v5

    invoke-virtual {v1, v7, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1499
    :cond_1
    :goto_0
    return-void

    .line 1510
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v2, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 1514
    :cond_3
    aget-object v1, v0, v4

    const-string/jumbo v2, "AP-STA-DISCONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1516
    if-nez p2, :cond_4

    const-string/jumbo p2, "whatever"

    .line 1517
    :cond_4
    const-string/jumbo v1, "ap0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1518
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    aget-object v2, v0, v5

    invoke-virtual {v1, v6, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 1520
    :cond_5
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v2, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private handleHs20Events(Ljava/lang/String;)V
    .locals 10
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 1594
    iget-object v5, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    if-nez v5, :cond_0

    return-void

    .line 1595
    :cond_0
    const-string/jumbo v5, "HS20-SUBSCRIPTION-REMEDIATION"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1597
    const-string/jumbo v5, " "

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1598
    .local v1, "dataTokens":[Ljava/lang/String;
    const/4 v3, -0x1

    .line 1599
    .local v3, "method":I
    const/4 v4, 0x0

    .line 1600
    .local v4, "url":Ljava/lang/String;
    array-length v5, v1

    if-lt v5, v9, :cond_1

    .line 1601
    aget-object v5, v1, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1602
    aget-object v4, v1, v8

    .line 1604
    .end local v4    # "url":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    const v6, 0x2403d

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v3, v7, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1593
    .end local v1    # "dataTokens":[Ljava/lang/String;
    .end local v3    # "method":I
    :cond_2
    :goto_0
    return-void

    .line 1605
    :cond_3
    const-string/jumbo v5, "HS20-DEAUTH-IMMINENT-NOTICE"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1607
    const/4 v0, -0x1

    .line 1608
    .local v0, "code":I
    const/4 v2, -0x1

    .line 1609
    .local v2, "delay":I
    const/4 v4, 0x0

    .line 1610
    .restart local v4    # "url":Ljava/lang/String;
    const-string/jumbo v5, " "

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1611
    .restart local v1    # "dataTokens":[Ljava/lang/String;
    array-length v5, v1

    const/4 v6, 0x4

    if-lt v5, v6, :cond_4

    .line 1612
    aget-object v5, v1, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1613
    aget-object v5, v1, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1614
    aget-object v4, v1, v9

    .line 1616
    .end local v4    # "url":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    const v6, 0x2403e

    invoke-virtual {v5, v6, v0, v2, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0

    .line 1618
    .end local v0    # "code":I
    .end local v1    # "dataTokens":[Ljava/lang/String;
    .end local v2    # "delay":I
    :cond_5
    sget-boolean v5, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "WifiMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown HS20 event: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .locals 9
    .param p1, "newState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 1731
    const/4 v0, 0x0

    .line 1732
    .local v0, "BSSID":Ljava/lang/String;
    const/4 v5, -0x1

    .line 1733
    .local v5, "networkId":I
    const/4 v6, 0x0

    .line 1734
    .local v6, "reason":I
    const/4 v2, -0x1

    .line 1735
    .local v2, "ind":I
    const/4 v3, 0x0

    .line 1737
    .local v3, "local":I
    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v7, :cond_3

    .line 1738
    sget-object v7, Lcom/android/server/wifi/WifiMonitor;->mConnectedEventPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1739
    .local v4, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1740
    sget-boolean v7, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "WifiMonitor"

    const-string/jumbo v8, "handleNetworkStateChange: Couldnt find BSSID in event string"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    .end local v0    # "BSSID":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v0, v5, v6}, Lcom/android/server/wifi/WifiMonitor;->notifyNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;II)V

    .line 1730
    .end local v4    # "match":Ljava/util/regex/Matcher;
    :cond_1
    :goto_1
    return-void

    .line 1742
    .restart local v0    # "BSSID":Ljava/lang/String;
    .restart local v4    # "match":Ljava/util/regex/Matcher;
    :cond_2
    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 1744
    .local v0, "BSSID":Ljava/lang/String;
    const/4 v7, 0x2

    :try_start_0
    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    .line 1745
    :catch_0
    move-exception v1

    .line 1746
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v5, -0x1

    goto :goto_0

    .line 1750
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "match":Ljava/util/regex/Matcher;
    .local v0, "BSSID":Ljava/lang/String;
    :cond_3
    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v7, :cond_1

    .line 1751
    sget-object v7, Lcom/android/server/wifi/WifiMonitor;->mDisconnectedEventPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1752
    .restart local v4    # "match":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-nez v7, :cond_5

    .line 1753
    sget-boolean v7, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v7, :cond_4

    const-string/jumbo v7, "WifiMonitor"

    const-string/jumbo v8, "handleNetworkStateChange: Could not parse disconnect string"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    .end local v0    # "BSSID":Ljava/lang/String;
    :cond_4
    :goto_2
    invoke-virtual {p0, p1, v0, v3, v6}, Lcom/android/server/wifi/WifiMonitor;->notifyNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;II)V

    goto :goto_1

    .line 1755
    .restart local v0    # "BSSID":Ljava/lang/String;
    :cond_5
    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 1757
    .local v0, "BSSID":Ljava/lang/String;
    const/4 v7, 0x2

    :try_start_1
    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 1762
    :goto_3
    const/4 v7, 0x3

    :try_start_2
    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v3

    goto :goto_2

    .line 1758
    :catch_1
    move-exception v1

    .line 1759
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    const/4 v6, -0x1

    goto :goto_3

    .line 1763
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v1

    .line 1764
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    goto :goto_2
.end method

.method private handleP2pEvents(Ljava/lang/String;)V
    .locals 14
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x3

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/4 v11, -0x1

    .line 1380
    const-string/jumbo v7, "P2P-DEVICE-FOUND"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1381
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->getWifiP2pDevice(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    .line 1382
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v0, :cond_0

    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x24015

    invoke-virtual {v7, v8, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1379
    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_0
    :goto_0
    return-void

    .line 1383
    :cond_1
    const-string/jumbo v7, "P2P-DEVICE-LOST"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1384
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->getWifiP2pDevice(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    .line 1385
    .restart local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v0, :cond_0

    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x24016

    invoke-virtual {v7, v8, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 1386
    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_2
    const-string/jumbo v7, "P2P-FIND-STOPPED"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1387
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x24025

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 1388
    :cond_3
    const-string/jumbo v7, "P2P-GO-NEG-REQUEST"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1389
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    .line 1390
    new-instance v8, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v8, p1}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>(Ljava/lang/String;)V

    .line 1389
    const v9, 0x24017

    invoke-virtual {v7, v9, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 1391
    :cond_4
    const-string/jumbo v7, "P2P-GO-NEG-SUCCESS"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1392
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x24019

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 1393
    :cond_5
    const-string/jumbo v7, "P2P-GO-NEG-FAILURE"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1396
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->p2pErrorEx(Ljava/lang/String;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    move-result-object v5

    .line 1397
    .local v5, "p2pStatus":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    sget v8, Lcom/android/server/wifi/WifiMonitor;->sP2pOperFreq:I

    const v9, 0x2401a

    invoke-virtual {v7, v9, v8, v12, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1398
    sput v11, Lcom/android/server/wifi/WifiMonitor;->sP2pOperFreq:I

    goto :goto_0

    .line 1400
    .end local v5    # "p2pStatus":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    :cond_6
    const-string/jumbo v7, "P2P-GROUP-FORMATION-SUCCESS"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1401
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x2401b

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 1402
    :cond_7
    const-string/jumbo v7, "P2P-GROUP-FORMATION-FAILURE"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1405
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->p2pErrorEx(Ljava/lang/String;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    move-result-object v5

    .line 1406
    .restart local v5    # "p2pStatus":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    sget v8, Lcom/android/server/wifi/WifiMonitor;->sP2pOperFreq:I

    const v9, 0x2401c

    invoke-virtual {v7, v9, v8, v12, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1407
    sput v11, Lcom/android/server/wifi/WifiMonitor;->sP2pOperFreq:I

    goto/16 :goto_0

    .line 1409
    .end local v5    # "p2pStatus":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    :cond_8
    const-string/jumbo v7, "P2P-GROUP-STARTED"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1410
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->getWifiP2pGroup(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v2

    .line 1411
    .local v2, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    if-eqz v2, :cond_0

    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x2401d

    invoke-virtual {v7, v8, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1412
    .end local v2    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    :cond_9
    const-string/jumbo v7, "P2P-GROUP-REMOVED"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1416
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->p2pError_GroupRemove(Ljava/lang/String;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    move-result-object v5

    .line 1417
    .restart local v5    # "p2pStatus":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    sget v8, Lcom/android/server/wifi/WifiMonitor;->sP2pOperFreq:I

    const v9, 0x2401e

    invoke-virtual {v7, v9, v8, v12, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1418
    sput v11, Lcom/android/server/wifi/WifiMonitor;->sP2pOperFreq:I

    goto/16 :goto_0

    .line 1420
    .end local v5    # "p2pStatus":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    :cond_a
    const-string/jumbo v7, "P2P-INVITATION-RECEIVED"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1421
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    .line 1422
    new-instance v8, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v8, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    .line 1421
    const v9, 0x2401f

    invoke-virtual {v7, v9, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1423
    :cond_b
    const-string/jumbo v7, "P2P-INVITATION-RESULT"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1426
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->p2pErrorEx(Ljava/lang/String;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    move-result-object v5

    .line 1427
    .restart local v5    # "p2pStatus":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    sget v8, Lcom/android/server/wifi/WifiMonitor;->sP2pOperFreq:I

    const v9, 0x24020

    invoke-virtual {v7, v9, v8, v12, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1428
    sput v11, Lcom/android/server/wifi/WifiMonitor;->sP2pOperFreq:I

    goto/16 :goto_0

    .line 1430
    .end local v5    # "p2pStatus":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    :cond_c
    const-string/jumbo v7, "P2P-PROV-DISC-PBC-REQ"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1431
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    .line 1432
    new-instance v8, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v8, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    .line 1431
    const v9, 0x24021

    invoke-virtual {v7, v9, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1433
    :cond_d
    const-string/jumbo v7, "P2P-PROV-DISC-PBC-RESP"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1434
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    .line 1435
    new-instance v8, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v8, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    .line 1434
    const v9, 0x24022

    invoke-virtual {v7, v9, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1436
    :cond_e
    const-string/jumbo v7, "P2P-PROV-DISC-ENTER-PIN"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1437
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    .line 1438
    new-instance v8, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v8, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    .line 1437
    const v9, 0x24023

    invoke-virtual {v7, v9, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1439
    :cond_f
    const-string/jumbo v7, "P2P-PROV-DISC-SHOW-PIN"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1440
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    .line 1441
    new-instance v8, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v8, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    .line 1440
    const v9, 0x24024

    invoke-virtual {v7, v9, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1442
    :cond_10
    const-string/jumbo v7, "P2P-PROV-DISC-FAILURE"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1443
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x24027

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 1444
    :cond_11
    const-string/jumbo v7, "P2P-SERV-DISC-RESP"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 1445
    invoke-static {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->newInstance(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1446
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;>;"
    if-eqz v3, :cond_12

    .line 1447
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x24026

    invoke-virtual {v7, v8, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1449
    :cond_12
    const-string/jumbo v7, "WifiMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Null service resp "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1452
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;>;"
    :cond_13
    const-string/jumbo v7, "CTRL-EVENT-DISCONNECTED"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 1456
    const-string/jumbo v7, " "

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1457
    .local v6, "tokens":[Ljava/lang/String;
    array-length v7, v6

    if-ge v7, v13, :cond_14

    return-void

    .line 1458
    :cond_14
    const/4 v7, 0x2

    aget-object v7, v6, v7

    const-string/jumbo v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1459
    .local v4, "nameValue":[Ljava/lang/String;
    array-length v7, v4

    const/4 v8, 0x2

    if-ge v7, v8, :cond_15

    return-void

    .line 1463
    :cond_15
    array-length v7, v6

    const/4 v8, 0x4

    if-le v7, v8, :cond_16

    const/4 v7, 0x4

    aget-object v7, v6, v7

    const-string/jumbo v8, "peer_oper_freq"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 1464
    const/4 v7, 0x4

    aget-object v7, v6, v7

    const-string/jumbo v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1465
    .local v1, "freqNameValue":[Ljava/lang/String;
    aget-object v7, v1, v10

    if-eqz v7, :cond_16

    .line 1466
    aget-object v7, v1, v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sput v7, Lcom/android/server/wifi/WifiMonitor;->sP2pOperFreq:I

    .line 1467
    const-string/jumbo v7, "WifiMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sP2pOperFreq@CTRL-EVENT-DISCONNECTED-1 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/server/wifi/WifiMonitor;->sP2pOperFreq:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    .end local v1    # "freqNameValue":[Ljava/lang/String;
    :cond_16
    array-length v7, v6

    if-le v7, v13, :cond_17

    aget-object v7, v6, v13

    const-string/jumbo v8, "peer_oper_freq"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 1472
    aget-object v7, v6, v13

    const-string/jumbo v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1473
    .restart local v1    # "freqNameValue":[Ljava/lang/String;
    aget-object v7, v1, v10

    if-eqz v7, :cond_17

    .line 1474
    aget-object v7, v1, v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sput v7, Lcom/android/server/wifi/WifiMonitor;->sP2pOperFreq:I

    .line 1475
    const-string/jumbo v7, "WifiMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sP2pOperFreq@CTRL-EVENT-DISCONNECTED-2 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/server/wifi/WifiMonitor;->sP2pOperFreq:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    .end local v1    # "freqNameValue":[Ljava/lang/String;
    :cond_17
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    sget v8, Lcom/android/server/wifi/WifiMonitor;->sP2pOperFreq:I

    aget-object v9, v4, v10

    const v10, 0x24028

    invoke-virtual {v7, v10, v8, v12, v9}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1480
    sput v11, Lcom/android/server/wifi/WifiMonitor;->sP2pOperFreq:I

    goto/16 :goto_0

    .line 1483
    .end local v4    # "nameValue":[Ljava/lang/String;
    .end local v6    # "tokens":[Ljava/lang/String;
    :cond_18
    const-string/jumbo v7, "P2P-GO-IP-ALLOCATE"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 1484
    const-string/jumbo v7, "WifiMonitor"

    const-string/jumbo v8, "handleP2pEvents, send P2P_GO_IP_ALLOCATE_EVENT"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x24056

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 1486
    :cond_19
    const-string/jumbo v7, "P2P-GC-IP-GET"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 1487
    const-string/jumbo v7, "WifiMonitor"

    const-string/jumbo v8, "handleP2pEvents, send P2P_GC_IP_GET_EVENT"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x24057

    invoke-virtual {v7, v8, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1489
    :cond_1a
    const-string/jumbo v7, "P2P-NFC-GO-INVITED"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1490
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x24058

    invoke-virtual {v7, v8, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private handleRequests(Ljava/lang/String;)V
    .locals 13
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const v12, 0x24010

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v11, 0x1

    .line 1626
    const/4 v0, 0x0

    .line 1627
    .local v0, "SSID":Ljava/lang/String;
    const/4 v6, -0x2

    .line 1628
    .local v6, "reason":I
    sget v8, Lcom/android/server/wifi/WifiMonitor;->REQUEST_PREFIX_LEN_STR:I

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 1629
    .local v7, "requestName":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1630
    return-void

    .line 1632
    :cond_0
    const-string/jumbo v8, "IDENTITY"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1633
    sget-object v8, Lcom/android/server/wifi/WifiMonitor;->mRequestIdentityPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1634
    .local v3, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1635
    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 1637
    .local v0, "SSID":Ljava/lang/String;
    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 1644
    .end local v0    # "SSID":Ljava/lang/String;
    :goto_0
    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    sget v9, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    const v10, 0x2400f

    invoke-virtual {v8, v10, v9, v6, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1625
    .end local v3    # "match":Ljava/util/regex/Matcher;
    :cond_1
    :goto_1
    return-void

    .line 1638
    .restart local v0    # "SSID":Ljava/lang/String;
    .restart local v3    # "match":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v2

    .line 1639
    .local v2, "e":Ljava/lang/NumberFormatException;
    const/4 v6, -0x1

    goto :goto_0

    .line 1642
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .local v0, "SSID":Ljava/lang/String;
    :cond_2
    const-string/jumbo v8, "WifiMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "didn\'t find SSID "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1645
    .end local v3    # "match":Ljava/util/regex/Matcher;
    :cond_3
    const-string/jumbo v8, "SIM"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1646
    sget-object v8, Lcom/android/server/wifi/WifiMonitor;->mRequestGsmAuthPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1647
    .local v4, "matchGsm":Ljava/util/regex/Matcher;
    sget-object v8, Lcom/android/server/wifi/WifiMonitor;->mRequestUmtsAuthPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 1649
    .local v5, "matchUmts":Ljava/util/regex/Matcher;
    new-instance v1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;

    invoke-direct {v1}, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;-><init>()V

    .line 1650
    .local v1, "data":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1651
    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->networkId:I

    .line 1652
    iput v10, v1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    .line 1653
    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->ssid:Ljava/lang/String;

    .line 1654
    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->data:[Ljava/lang/String;

    .line 1655
    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v8, v12, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_1

    .line 1656
    :cond_4
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1657
    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->networkId:I

    .line 1658
    const/4 v8, 0x5

    iput v8, v1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    .line 1659
    invoke-virtual {v5, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->ssid:Ljava/lang/String;

    .line 1660
    new-array v8, v9, [Ljava/lang/String;

    iput-object v8, v1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->data:[Ljava/lang/String;

    .line 1661
    iget-object v8, v1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->data:[Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 1662
    iget-object v8, v1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->data:[Ljava/lang/String;

    const/4 v9, 0x3

    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    .line 1663
    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v8, v12, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1665
    :cond_5
    const-string/jumbo v8, "WifiMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "couldn\'t parse SIM auth request - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1669
    .end local v1    # "data":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    .end local v4    # "matchGsm":Ljava/util/regex/Matcher;
    .end local v5    # "matchUmts":Ljava/util/regex/Matcher;
    :cond_6
    sget-boolean v8, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v8, :cond_1

    const-string/jumbo v8, "WifiMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "couldn\'t identify request type - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private handleSupplicantStateChange(Ljava/lang/String;)V
    .locals 17
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    .line 1679
    const/4 v12, 0x0

    .line 1680
    .local v12, "wifiSsid":Landroid/net/wifi/WifiSsid;
    const-string/jumbo v13, "SSID="

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 1681
    .local v4, "index":I
    const/4 v13, -0x1

    if-eq v4, v13, :cond_0

    .line 1683
    add-int/lit8 v13, v4, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 1682
    invoke-static {v13}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v12

    .line 1685
    .end local v12    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    :cond_0
    const-string/jumbo v13, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1687
    .local v2, "dataTokens":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1688
    .local v1, "BSSID":Ljava/lang/String;
    const/4 v6, -0x1

    .line 1689
    .local v6, "networkId":I
    const/4 v7, -0x1

    .line 1690
    .local v7, "newState":I
    const/4 v13, 0x0

    array-length v14, v2

    .end local v1    # "BSSID":Ljava/lang/String;
    :goto_0
    if-ge v13, v14, :cond_5

    aget-object v10, v2, v13

    .line 1691
    .local v10, "token":Ljava/lang/String;
    const-string/jumbo v15, "="

    invoke-virtual {v10, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1692
    .local v5, "nameValue":[Ljava/lang/String;
    array-length v15, v5

    const/16 v16, 0x2

    move/from16 v0, v16

    if-eq v15, v0, :cond_2

    .line 1690
    :cond_1
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1696
    :cond_2
    const/4 v15, 0x0

    aget-object v15, v5, v15

    const-string/jumbo v16, "BSSID"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1697
    const/4 v15, 0x1

    aget-object v1, v5, v15

    .local v1, "BSSID":Ljava/lang/String;
    goto :goto_1

    .line 1703
    .end local v1    # "BSSID":Ljava/lang/String;
    :cond_3
    const/4 v15, 0x1

    :try_start_0
    aget-object v15, v5, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 1708
    .local v11, "value":I
    const/4 v15, 0x0

    aget-object v15, v5, v15

    const-string/jumbo v16, "id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 1709
    move v6, v11

    goto :goto_1

    .line 1710
    :cond_4
    const/4 v15, 0x0

    aget-object v15, v5, v15

    const-string/jumbo v16, "state"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 1711
    move v7, v11

    goto :goto_1

    .line 1715
    .end local v5    # "nameValue":[Ljava/lang/String;
    .end local v10    # "token":Ljava/lang/String;
    .end local v11    # "value":I
    :cond_5
    const/4 v13, -0x1

    if-ne v7, v13, :cond_6

    return-void

    .line 1717
    :cond_6
    sget-object v8, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    .line 1718
    .local v8, "newSupplicantState":Landroid/net/wifi/SupplicantState;
    invoke-static {}, Landroid/net/wifi/SupplicantState;->values()[Landroid/net/wifi/SupplicantState;

    move-result-object v14

    const/4 v13, 0x0

    array-length v15, v14

    :goto_2
    if-ge v13, v15, :cond_7

    aget-object v9, v14, v13

    .line 1719
    .local v9, "state":Landroid/net/wifi/SupplicantState;
    invoke-virtual {v9}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v16

    move/from16 v0, v16

    if-ne v0, v7, :cond_9

    .line 1720
    move-object v8, v9

    .line 1724
    .end local v9    # "state":Landroid/net/wifi/SupplicantState;
    :cond_7
    sget-object v13, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    if-ne v8, v13, :cond_8

    .line 1725
    const-string/jumbo v13, "WifiMonitor"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Invalid supplicant state: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v12, v1, v8}, Lcom/android/server/wifi/WifiMonitor;->notifySupplicantStateChange(ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V

    .line 1678
    return-void

    .line 1718
    .restart local v9    # "state":Landroid/net/wifi/SupplicantState;
    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1704
    .end local v8    # "newSupplicantState":Landroid/net/wifi/SupplicantState;
    .end local v9    # "state":Landroid/net/wifi/SupplicantState;
    .restart local v5    # "nameValue":[Ljava/lang/String;
    .restart local v10    # "token":Ljava/lang/String;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/NumberFormatException;
    goto :goto_1
.end method

.method private handleTargetBSSIDEvent(Ljava/lang/String;)V
    .locals 6
    .param p1, "eventStr"    # Ljava/lang/String;

    .prologue
    .line 1225
    const/4 v0, 0x0

    .line 1226
    .local v0, "BSSID":Ljava/lang/String;
    sget-object v2, Lcom/android/server/wifi/WifiMonitor;->mTargetBSSIDPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1227
    .local v1, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1228
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 1230
    .end local v0    # "BSSID":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    sget v3, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    const v4, 0x2008d

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1224
    return-void
.end method

.method private handleWpsFailEvent(Ljava/lang/String;)V
    .locals 12
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const v11, 0x24009

    const/4 v10, 0x0

    .line 1244
    const-string/jumbo v7, "WPS-FAIL msg=\\d+(?: config_error=(\\d+))?(?: reason=(\\d+))?"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 1245
    .local v3, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1246
    .local v2, "match":Ljava/util/regex/Matcher;
    const/4 v4, 0x0

    .line 1247
    .local v4, "reason":I
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1248
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 1249
    .local v1, "cfgErrStr":Ljava/lang/String;
    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 1251
    .local v6, "reasonStr":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 1252
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1253
    .local v5, "reasonInt":I
    packed-switch v5, :pswitch_data_0

    .line 1263
    move v4, v5

    .line 1267
    .end local v5    # "reasonInt":I
    :cond_0
    if-eqz v1, :cond_1

    .line 1268
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1269
    .local v0, "cfgErrInt":I
    sparse-switch v0, :sswitch_data_0

    .line 1279
    if-nez v4, :cond_1

    move v4, v0

    .line 1285
    .end local v0    # "cfgErrInt":I
    .end local v1    # "cfgErrStr":Ljava/lang/String;
    .end local v6    # "reasonStr":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v8, v11, v10, v4}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1243
    return-void

    .line 1255
    .restart local v1    # "cfgErrStr":Ljava/lang/String;
    .restart local v5    # "reasonInt":I
    .restart local v6    # "reasonStr":Ljava/lang/String;
    :pswitch_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    .line 1256
    const/4 v9, 0x5

    .line 1255
    invoke-virtual {v8, v11, v9, v10}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1257
    return-void

    .line 1259
    :pswitch_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    .line 1260
    const/4 v9, 0x4

    .line 1259
    invoke-virtual {v8, v11, v9, v10}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1261
    return-void

    .line 1271
    .end local v5    # "reasonInt":I
    .restart local v0    # "cfgErrInt":I
    :sswitch_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    .line 1272
    const/4 v9, 0x6

    .line 1271
    invoke-virtual {v8, v11, v9, v10}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1273
    return-void

    .line 1275
    :sswitch_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    .line 1276
    const/4 v9, 0x3

    .line 1275
    invoke-virtual {v8, v11, v9, v10}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1277
    return-void

    .line 1253
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1269
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method private logDbg(Ljava/lang/String;)V
    .locals 1
    .param p1, "debug"    # Ljava/lang/String;

    .prologue
    .line 938
    const-string/jumbo v0, "WifiMonitor"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    return-void
.end method

.method private p2pErrorEx(Ljava/lang/String;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    .locals 5
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 1333
    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNKNOWN:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .line 1336
    .local v1, "status":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    sget-object v2, Lcom/android/server/wifi/WifiMonitor;->p2pErrorExPattern2:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1337
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1338
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->valueOf(I)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    move-result-object v1

    .line 1339
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/android/server/wifi/WifiMonitor;->sP2pOperFreq:I

    .line 1347
    :cond_0
    :goto_0
    sget-object v2, Lcom/android/server/wifi/WifiMonitor;->p2pErrorExPattern3:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1348
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1349
    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->NO_COMMON_CHANNEL:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .line 1350
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/android/server/wifi/WifiMonitor;->sP2pOperFreq:I

    .line 1352
    :cond_1
    const-string/jumbo v2, "WifiMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "p2pErrorEx status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", peer_oper_freq="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/wifi/WifiMonitor;->sP2pOperFreq:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    return-object v1

    .line 1341
    :cond_2
    sget-object v2, Lcom/android/server/wifi/WifiMonitor;->p2pErrorExPattern1:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1342
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1343
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->valueOf(I)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    move-result-object v1

    .line 1344
    const/4 v2, -0x1

    sput v2, Lcom/android/server/wifi/WifiMonitor;->sP2pOperFreq:I

    goto :goto_0
.end method

.method private p2pError_GroupRemove(Ljava/lang/String;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    .locals 9
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x4

    .line 1293
    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNKNOWN:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .line 1294
    .local v1, "err":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    const-string/jumbo v5, " "

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1296
    .local v4, "tokens":[Ljava/lang/String;
    array-length v5, v4

    if-ge v5, v6, :cond_0

    return-object v1

    .line 1297
    :cond_0
    aget-object v5, v4, v6

    const-string/jumbo v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1299
    .local v3, "nameValue":[Ljava/lang/String;
    aget-object v5, v3, v7

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1301
    const/4 v5, 0x1

    :try_start_0
    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->valueOf(I)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1307
    :cond_1
    :goto_0
    sget-object v5, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->NO_COMMON_CHANNEL:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    if-ne v1, v5, :cond_2

    .line 1309
    array-length v5, v4

    if-le v5, v8, :cond_2

    .line 1310
    aget-object v5, v4, v8

    const-string/jumbo v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1311
    .local v2, "freqNameValue":[Ljava/lang/String;
    aget-object v5, v4, v8

    const-string/jumbo v6, "peer_oper_freq"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1312
    const-string/jumbo v5, "WifiMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Incorrect peer_oper_freq format"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    :goto_1
    const-string/jumbo v5, "WifiMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sP2pOperFreq@p2pError_GroupRemove() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/server/wifi/WifiMonitor;->sP2pOperFreq:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    .end local v2    # "freqNameValue":[Ljava/lang/String;
    :cond_2
    return-object v1

    .line 1302
    :catch_0
    move-exception v0

    .line 1303
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 1313
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "freqNameValue":[Ljava/lang/String;
    :cond_3
    array-length v5, v2

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    .line 1314
    const-string/jumbo v5, "WifiMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Incorrect peer_oper_freq format"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1316
    :cond_4
    aget-object v5, v2, v7

    if-nez v5, :cond_5

    .line 1317
    const-string/jumbo v5, "WifiMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Incorrect peer_oper_freq format"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1319
    :cond_5
    aget-object v5, v2, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sput v5, Lcom/android/server/wifi/WifiMonitor;->sP2pOperFreq:I

    goto :goto_1
.end method


# virtual methods
.method enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .prologue
    const/4 v0, 0x0

    .line 621
    if-lez p1, :cond_0

    .line 622
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wifi/WifiMonitor;->VDBG:Z

    .line 619
    :goto_0
    return-void

    .line 624
    :cond_0
    sput-boolean v0, Lcom/android/server/wifi/WifiMonitor;->VDBG:Z

    goto :goto_0
.end method

.method getWifiP2pDevice(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 3
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    .line 1360
    :try_start_0
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1361
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    return-object v0

    .line 1362
    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :catch_0
    move-exception v1

    .line 1363
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    return-object v2
.end method

.method getWifiP2pGroup(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 3
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    .line 1369
    :try_start_0
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v1, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1370
    .local v1, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    return-object v1

    .line 1371
    .end local v1    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    :catch_0
    move-exception v0

    .line 1372
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    return-object v2
.end method

.method handleEvent(ILjava/lang/String;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "remainder"    # Ljava/lang/String;

    .prologue
    .line 1188
    sget-boolean v0, Lcom/android/server/wifi/WifiMonitor;->VDBG:Z

    if-eqz v0, :cond_0

    .line 1189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleEvent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiMonitor;->logDbg(Ljava/lang/String;)V

    .line 1191
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1187
    :cond_1
    :goto_0
    return-void

    .line 1193
    :sswitch_0
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v0, p2}, Lcom/android/server/wifi/WifiMonitor;->handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto :goto_0

    .line 1197
    :sswitch_1
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v0, p2}, Lcom/android/server/wifi/WifiMonitor;->handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto :goto_0

    .line 1201
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v1, 0x24005

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 1205
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v1, 0x24011

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 1210
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v1, 0x24050

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 1215
    :sswitch_5
    sget-boolean v0, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v0, :cond_1

    .line 1216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleEvent unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiMonitor;->logDbg(Ljava/lang/String;)V

    goto :goto_0

    .line 1191
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x4 -> :sswitch_2
        0xe -> :sswitch_5
        0xf -> :sswitch_3
        0x10 -> :sswitch_4
    .end sparse-switch
.end method

.method public isMonitoring()Z
    .locals 2

    .prologue
    .line 643
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->-get2()Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->isMonitoring(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public killSupplicant(Z)V
    .locals 1
    .param p1, "p2pSupported"    # Z

    .prologue
    .line 652
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->-get2()Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->killSupplicant(Z)V

    .line 651
    return-void
.end method

.method notifyNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;II)V
    .locals 3
    .param p1, "newState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "netId"    # I
    .param p4, "reason"    # I

    .prologue
    .line 1782
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_0

    .line 1783
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24003

    invoke-virtual {v1, v2, p3, p4, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1785
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1781
    :goto_0
    return-void

    .line 1788
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24004

    invoke-virtual {v1, v2, p3, p4, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1790
    .restart local v0    # "m":Landroid/os/Message;
    sget-boolean v1, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WifiMonitor notify network disconnect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1792
    const-string/jumbo v2, " reason="

    .line 1790
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1792
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1790
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiMonitor;->logDbg(Ljava/lang/String;)V

    .line 1793
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method notifySupplicantStateChange(ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V
    .locals 6
    .param p1, "networkId"    # I
    .param p2, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p3, "BSSID"    # Ljava/lang/String;
    .param p4, "newState"    # Landroid/net/wifi/SupplicantState;

    .prologue
    .line 1807
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    .line 1808
    sget v2, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    .line 1809
    new-instance v3, Lcom/android/server/wifi/StateChangeResult;

    invoke-direct {v3, p1, p2, p3, p4}, Lcom/android/server/wifi/StateChangeResult;-><init>(ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V

    .line 1807
    const v4, 0x24006

    .line 1808
    const/4 v5, 0x0

    .line 1807
    invoke-virtual {v1, v4, v2, v5, v3}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1806
    return-void
.end method

.method public quitMonitoring()V
    .locals 1

    .prologue
    .line 656
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->-get2()Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->quitMonitoring()V

    .line 655
    return-void
.end method

.method public setStateMachine2(Lcom/android/internal/util/StateMachine;)V
    .locals 0
    .param p1, "stateMachine"    # Lcom/android/internal/util/StateMachine;

    .prologue
    .line 630
    iput-object p1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    .line 629
    return-void
.end method

.method public startMonitoring()V
    .locals 2

    .prologue
    .line 634
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->-get2()Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->startMonitoring(Ljava/lang/String;)V

    .line 633
    return-void
.end method

.method public stopMonitoring()V
    .locals 2

    .prologue
    .line 638
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->-get2()Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->stopMonitoring(Ljava/lang/String;)V

    .line 637
    return-void
.end method

.method public stopSupplicant()V
    .locals 1

    .prologue
    .line 648
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->-get2()Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->stopSupplicant()V

    .line 647
    return-void
.end method
