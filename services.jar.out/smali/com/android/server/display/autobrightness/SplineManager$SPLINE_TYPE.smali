.class public final enum Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;
.super Ljava/lang/Enum;
.source "SplineManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/autobrightness/SplineManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SPLINE_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

.field public static final enum DAYTIME_SPLINE:Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

.field public static final enum INVALID_SPLINE:Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

.field public static final enum NIGHT_SPLINE:Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    const-string/jumbo v1, "INVALID_SPLINE"

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;->INVALID_SPLINE:Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    .line 35
    new-instance v0, Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    const-string/jumbo v1, "DAYTIME_SPLINE"

    invoke-direct {v0, v1, v3}, Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;->DAYTIME_SPLINE:Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    .line 36
    new-instance v0, Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    const-string/jumbo v1, "NIGHT_SPLINE"

    invoke-direct {v0, v1, v4}, Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;->NIGHT_SPLINE:Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    sget-object v1, Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;->INVALID_SPLINE:Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;->DAYTIME_SPLINE:Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;->NIGHT_SPLINE:Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;->$VALUES:[Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;->$VALUES:[Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    return-object v0
.end method
