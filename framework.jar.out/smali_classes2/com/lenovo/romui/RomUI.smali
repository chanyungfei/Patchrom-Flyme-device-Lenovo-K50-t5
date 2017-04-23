.class public Lcom/lenovo/romui/RomUI;
.super Ljava/lang/Object;
.source "RomUI.java"


# static fields
.field public static final PLATFORM_ROMUI_VERSION_KEY:Ljava/lang/String; = "sys.lenovo.romui.version.sdk"

.field public static final ROMUI_DEBUG_KEY:Ljava/lang/String; = "debug.romui"

.field private static final TAG:Ljava/lang/String; = "RomUI"

.field private static final sPlatform_romui_version:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    const-string/jumbo v0, "sys.lenovo.romui.version.sdk"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/lenovo/romui/RomUI;->sPlatform_romui_version:I

    .line 11
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataFromAttribute(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrId"    # I

    .prologue
    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getThemeSafely()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 78
    .local v1, "theme":Landroid/content/res/Resources$Theme;
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 80
    .local v0, "out":Landroid/util/TypedValue;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    iget v2, v0, Landroid/util/TypedValue;->data:I

    return v2

    .line 85
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public static getRomUIVersion(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 24
    .local v1, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getThemeSafely()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 26
    .local v0, "theme":Landroid/content/res/Resources$Theme;
    if-nez v0, :cond_0

    .line 27
    const-string/jumbo v3, "RomUI"

    const-string/jumbo v4, "getRomUIVersion: getThemeSafely return NULL!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const/4 v3, -0x1

    return v3

    .line 34
    :cond_0
    const/high16 v3, 0x9010000

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 35
    iget v2, v1, Landroid/util/TypedValue;->data:I

    .line 36
    .local v2, "version":I
    const-string/jumbo v3, "RomUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RomUI version :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return v2

    .line 41
    .end local v2    # "version":I
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public static getTypedValueFromAttribute(Landroid/content/Context;I)Landroid/util/TypedValue;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrId"    # I

    .prologue
    const/4 v3, 0x0

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getThemeSafely()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 60
    .local v1, "theme":Landroid/content/res/Resources$Theme;
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 62
    .local v0, "out":Landroid/util/TypedValue;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    return-object v0

    .line 67
    :cond_0
    return-object v3
.end method

.method public static isPlatfromSupportRomUI()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 49
    sget v1, Lcom/lenovo/romui/RomUI;->sPlatform_romui_version:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
