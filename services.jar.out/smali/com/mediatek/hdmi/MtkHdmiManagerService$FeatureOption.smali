.class Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;
.super Ljava/lang/Object;
.source "MtkHdmiManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/hdmi/MtkHdmiManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FeatureOption"
.end annotation


# static fields
.field public static final MTK_CLEARMOTION_SUPPORT:Z

.field public static final MTK_DRM_KEY_MNG_SUPPORT:Z

.field public static final MTK_ENABLE_HDMI_MULTI_CHANNEL:Z = true

.field public static final MTK_HDMI_HDCP_SUPPORT:Z

.field public static final MTK_INTERNAL_HDMI_SUPPORT:Z

.field public static final MTK_INTERNAL_MHL_SUPPORT:Z

.field public static final MTK_MT8193_HDCP_SUPPORT:Z

.field public static final MTK_MT8193_HDMI_SUPPORT:Z

.field public static final MTK_SMARTBOOK_SUPPORT:Z

.field public static final MTK_TB6582_HDMI_SUPPORT:Z

.field public static final SHUTDOWN_REQUESTED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1212
    const-string/jumbo v0, "ro.mtk_drm_key_mng_support"

    invoke-static {v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    .line 1211
    sput-boolean v0, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->MTK_DRM_KEY_MNG_SUPPORT:Z

    .line 1214
    const-string/jumbo v0, "ro.mtk_hdmi_hdcp_support"

    invoke-static {v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    .line 1213
    sput-boolean v0, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->MTK_HDMI_HDCP_SUPPORT:Z

    .line 1216
    const-string/jumbo v0, "ro.mtk_mt8193_hdcp_support"

    invoke-static {v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    .line 1215
    sput-boolean v0, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->MTK_MT8193_HDCP_SUPPORT:Z

    .line 1218
    const-string/jumbo v0, "ro.mtk_smartbook_support"

    invoke-static {v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    .line 1217
    sput-boolean v0, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->MTK_SMARTBOOK_SUPPORT:Z

    .line 1220
    const-string/jumbo v0, "ro.mtk_clearmotion_support"

    invoke-static {v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    .line 1219
    sput-boolean v0, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->MTK_CLEARMOTION_SUPPORT:Z

    .line 1222
    const-string/jumbo v0, "ro.mtk_internal_mhl_support"

    invoke-static {v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    .line 1221
    sput-boolean v0, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->MTK_INTERNAL_MHL_SUPPORT:Z

    .line 1224
    const-string/jumbo v0, "ro.mtk_internal_hdmi_support"

    invoke-static {v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    .line 1223
    sput-boolean v0, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->MTK_INTERNAL_HDMI_SUPPORT:Z

    .line 1226
    const-string/jumbo v0, "ro.mtk_mt8193_hdmi_support"

    invoke-static {v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    .line 1225
    sput-boolean v0, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->MTK_MT8193_HDMI_SUPPORT:Z

    .line 1229
    const-string/jumbo v0, "ro.hdmi.1080p60.disable"

    invoke-static {v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    .line 1228
    sput-boolean v0, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->MTK_TB6582_HDMI_SUPPORT:Z

    .line 1232
    const-string/jumbo v0, "sys.shutdown.requested"

    invoke-static {v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    .line 1231
    sput-boolean v0, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->SHUTDOWN_REQUESTED:Z

    .line 1209
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getValue(Ljava/lang/String;)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 1234
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
