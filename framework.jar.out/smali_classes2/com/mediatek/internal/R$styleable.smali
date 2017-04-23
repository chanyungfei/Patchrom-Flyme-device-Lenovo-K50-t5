.class public final Lcom/mediatek/internal/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final BladeView:[I

.field public static final BladeView_bladeIndicator:I = 0x6

.field public static final BladeView_bladeIndicatorHeight:I = 0xa

.field public static final BladeView_bladeIndicatorWidth:I = 0x9

.field public static final BladeView_disablePromptColor:I = 0xe

.field public static final BladeView_disableSectionColor:I = 0xc

.field public static final BladeView_enablePromptColor:I = 0xd

.field public static final BladeView_enableSectionColor:I = 0xb

.field public static final BladeView_fullSectionsId:I = 0x3

.field public static final BladeView_indicatorTopsId:I = 0x7

.field public static final BladeView_promptAnimationDuration:I = 0x8

.field public static final BladeView_promptHorzOffset:I = 0x0

.field public static final BladeView_promptVertOffset:I = 0x1

.field public static final BladeView_replacedSectionsId:I = 0x4

.field public static final BladeView_sectionBaselinesId:I = 0x5

.field public static final BladeView_sectionFontSize:I = 0x2

.field public static final BookmarkView:[I

.field public static final BookmarkView_dotGap:I = 0x3

.field public static final BookmarkView_imageDispHeight:I = 0x1

.field public static final BookmarkView_imageDispWidth:I = 0x0

.field public static final BookmarkView_imageReflection:I = 0x4

.field public static final BookmarkView_infoColor:I = 0x7

.field public static final BookmarkView_maxZoomOut:I = 0x5

.field public static final BookmarkView_spaceBetweenItems:I = 0x2

.field public static final BookmarkView_titleColor:I = 0x6

.field public static final DecelerateInterpolatorEx:[I

.field public static final DecelerateInterpolatorEx_factor:I = 0x0

.field public static final DecelerateInterpolatorEx_scale:I = 0x1

.field public static final ImageSwitch:[I

.field public static final ImageSwitch_android_switchMinWidth:I = 0x3

.field public static final ImageSwitch_android_textOff:I = 0x1

.field public static final ImageSwitch_android_textOn:I = 0x0

.field public static final ImageSwitch_android_thumb:I = 0x2

.field public static final ImageSwitch_android_thumbTextPadding:I = 0x4

.field public static final MTKAppWidgetProviderInfo:[I

.field public static final MTKAppWidgetProviderInfo_hasUsedCustomerView:I

.field public static final TextView:[I

.field public static final TextView_smartFit:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1923
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/internal/R$styleable;->BladeView:[I

    .line 2162
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mediatek/internal/R$styleable;->BookmarkView:[I

    .line 2304
    const/high16 v0, 0x8100000

    const v1, 0x8100001

    .line 2303
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/R$styleable;->DecelerateInterpolatorEx:[I

    .line 2337
    const v0, 0x1010124

    const v1, 0x1010125

    const v2, 0x1010142

    const v3, 0x1010370

    .line 2338
    const v4, 0x1010372

    .line 2336
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/R$styleable;->ImageSwitch:[I

    .line 2380
    new-array v0, v6, [I

    .line 2381
    const v1, 0x8010011

    aput v1, v0, v5

    .line 2380
    sput-object v0, Lcom/mediatek/internal/R$styleable;->MTKAppWidgetProviderInfo:[I

    .line 2410
    new-array v0, v6, [I

    .line 2411
    const v1, 0x801001a

    aput v1, v0, v5

    .line 2410
    sput-object v0, Lcom/mediatek/internal/R$styleable;->TextView:[I

    .line 1883
    return-void

    .line 1923
    nop

    :array_0
    .array-data 4
        0x8010000
        0x8010001
        0x8010002
        0x8010003
        0x8010004
        0x8010005
        0x8010006
        0x8010007
        0x8010008
        0x8010009
        0x801000a
        0x801000b
        0x801000c
        0x801000d
        0x801000e
    .end array-data

    .line 2162
    :array_1
    .array-data 4
        0x8010012
        0x8010013
        0x8010014
        0x8010015
        0x8010016
        0x8010017
        0x8010018
        0x8010019
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1883
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
