.class public Landroid/media/MediaFile;
.super Ljava/lang/Object;
.source "MediaFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaFile$MediaFileType;
    }
.end annotation


# static fields
.field public static final FILE_TYPE_3GA:I = 0xc1

.field public static final FILE_TYPE_3GPP:I = 0x12f

.field public static final FILE_TYPE_3GPP2:I = 0x130

.field public static final FILE_TYPE_3GPP3:I = 0xc7

.field public static final FILE_TYPE_AAC:I = 0x6c

.field public static final FILE_TYPE_AMR:I = 0x68

.field public static final FILE_TYPE_APE:I = 0x6f

.field public static final FILE_TYPE_APK:I = 0x31f

.field public static final FILE_TYPE_ASF:I = 0x132

.field public static final FILE_TYPE_AVI:I = 0x135

.field public static final FILE_TYPE_AWB:I = 0x69

.field public static final FILE_TYPE_BMP:I = 0x194

.field public static final FILE_TYPE_CAF:I = 0x70

.field public static final FILE_TYPE_FL:I = 0x259

.field public static final FILE_TYPE_FLA:I = 0xc4

.field public static final FILE_TYPE_FLAC:I = 0x6e

.field public static final FILE_TYPE_FLV:I = 0x18e

.field public static final FILE_TYPE_GIF:I = 0x192

.field public static final FILE_TYPE_HTML:I = 0x2bd

.field public static final FILE_TYPE_HTTPLIVE:I = 0x1f8

.field public static final FILE_TYPE_ICS:I = 0x31b

.field public static final FILE_TYPE_ICZ:I = 0x31c

.field public static final FILE_TYPE_IMY:I = 0xcb

.field public static final FILE_TYPE_JPEG:I = 0x191

.field public static final FILE_TYPE_M3U:I = 0x1f5

.field public static final FILE_TYPE_M4A:I = 0x66

.field public static final FILE_TYPE_M4V:I = 0x12e

.field public static final FILE_TYPE_MID:I = 0xc9

.field public static final FILE_TYPE_MKA:I = 0x6d

.field public static final FILE_TYPE_MKV:I = 0x133

.field public static final FILE_TYPE_MP2:I = 0xc5

.field public static final FILE_TYPE_MP2PS:I = 0x189

.field public static final FILE_TYPE_MP2TS:I = 0x134

.field public static final FILE_TYPE_MP3:I = 0x65

.field public static final FILE_TYPE_MP4:I = 0x12d

.field public static final FILE_TYPE_MPO:I = 0x1f3

.field public static final FILE_TYPE_MS_EXCEL:I = 0x2c1

.field public static final FILE_TYPE_MS_POWERPOINT:I = 0x2c2

.field public static final FILE_TYPE_MS_WORD:I = 0x2c0

.field public static final FILE_TYPE_OGG:I = 0x6b

.field public static final FILE_TYPE_OGM:I = 0x18a

.field public static final FILE_TYPE_PDF:I = 0x2be

.field public static final FILE_TYPE_PLS:I = 0x1f6

.field public static final FILE_TYPE_PNG:I = 0x193

.field public static final FILE_TYPE_QUICKTIME_AUDIO:I = 0xc2

.field public static final FILE_TYPE_QUICKTIME_VIDEO:I = 0x18d

.field public static final FILE_TYPE_RA:I = 0xc6

.field public static final FILE_TYPE_RM:I = 0x18f

.field public static final FILE_TYPE_RMVB:I = 0x18c

.field public static final FILE_TYPE_RV:I = 0x18b

.field public static final FILE_TYPE_SMF:I = 0xca

.field public static final FILE_TYPE_TEXT:I = 0x2bc

.field public static final FILE_TYPE_VCF:I = 0x31d

.field public static final FILE_TYPE_VCS:I = 0x31e

.field public static final FILE_TYPE_WAV:I = 0x67

.field public static final FILE_TYPE_WBMP:I = 0x195

.field public static final FILE_TYPE_WEBM:I = 0x136

.field public static final FILE_TYPE_WEBP:I = 0x196

.field public static final FILE_TYPE_WMA:I = 0x6a

.field public static final FILE_TYPE_WMV:I = 0x131

.field public static final FILE_TYPE_WPL:I = 0x1f7

.field public static final FILE_TYPE_XML:I = 0x2bf

.field public static final FILE_TYPE_ZIP:I = 0x2c3

.field private static final FIRST_AUDIO_FILE_TYPE:I = 0x65

.field private static final FIRST_DRM_FILE_TYPE:I = 0x259

.field private static final FIRST_IMAGE_FILE_TYPE:I = 0x191

.field private static final FIRST_MIDI_FILE_TYPE:I = 0xc9

.field private static final FIRST_PLAYLIST_FILE_TYPE:I = 0x1f5

.field private static final FIRST_VIDEO_FILE_TYPE:I = 0x12d

.field private static final LAST_AUDIO_FILE_TYPE:I = 0xc7

.field private static final LAST_DRM_FILE_TYPE:I = 0x259

.field private static final LAST_IMAGE_FILE_TYPE:I = 0x1f3

.field private static final LAST_MIDI_FILE_TYPE:I = 0xcb

.field private static final LAST_PLAYLIST_FILE_TYPE:I = 0x1f8

.field private static final LAST_VIDEO_FILE_TYPE:I = 0x18f

.field private static final sFileTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MediaFile$MediaFileType;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFileTypeToFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFormatToMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMimeTypeToFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x300b

    const/16 v7, 0x6b

    const/4 v6, 0x0

    const/16 v5, 0x189

    const/16 v4, 0xc9

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 149
    sput-object v0, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 151
    sput-object v0, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 154
    sput-object v0, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 157
    sput-object v0, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 160
    sput-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    .line 209
    const-string/jumbo v0, "3GP"

    const-string/jumbo v1, "audio/3gpp"

    const/16 v2, 0xc7

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 210
    const-string/jumbo v0, "3GA"

    const-string/jumbo v1, "audio/3gpp"

    const/16 v2, 0xc1

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 211
    const-string/jumbo v0, "MOV"

    const-string/jumbo v1, "audio/quicktime"

    const/16 v2, 0xc2

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 212
    const-string/jumbo v0, "QT"

    const-string/jumbo v1, "audio/quicktime"

    const/16 v2, 0xc2

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 214
    const-string/jumbo v0, "CAF"

    const-string/jumbo v1, "audio/alac"

    const/16 v2, 0x70

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 216
    const-string/jumbo v0, "WAV"

    const-string/jumbo v1, "audio/wav"

    const/16 v2, 0x67

    const/16 v3, 0x3008

    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 217
    const-string/jumbo v0, "OGG"

    const-string/jumbo v1, "audio/vorbis"

    const v2, 0xb902

    invoke-static {v0, v7, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 218
    const-string/jumbo v0, "OGG"

    const-string/jumbo v1, "audio/webm"

    const v2, 0xb902

    invoke-static {v0, v7, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 220
    const-string/jumbo v0, "MP2"

    const-string/jumbo v1, "video/mp2p"

    invoke-static {v0, v5, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 221
    const-string/jumbo v0, "MP2"

    const-string/jumbo v1, "audio/mpeg"

    const/16 v2, 0xc5

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 223
    const-string/jumbo v0, "ro.mtk_audio_ape_support"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    const-string/jumbo v0, "APE"

    const-string/jumbo v1, "audio/ape"

    const/16 v2, 0x6f

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 227
    :cond_0
    const-string/jumbo v0, "ro.mtk_oma_drm_support"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    const-string/jumbo v0, "DCF"

    const-string/jumbo v1, "audio/mpeg"

    const/16 v2, 0x65

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 232
    :cond_1
    const-string/jumbo v0, "MP3"

    const-string/jumbo v1, "audio/mpeg"

    const/16 v2, 0x65

    const/16 v3, 0x3009

    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 233
    const-string/jumbo v0, "MPGA"

    const-string/jumbo v1, "audio/mpeg"

    const/16 v2, 0x65

    const/16 v3, 0x3009

    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 234
    const-string/jumbo v0, "M4A"

    const-string/jumbo v1, "audio/mp4"

    const/16 v2, 0x66

    invoke-static {v0, v2, v1, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 235
    const-string/jumbo v0, "WAV"

    const-string/jumbo v1, "audio/x-wav"

    const/16 v2, 0x67

    const/16 v3, 0x3008

    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 236
    const-string/jumbo v0, "AMR"

    const-string/jumbo v1, "audio/amr"

    const/16 v2, 0x68

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 237
    const-string/jumbo v0, "AWB"

    const-string/jumbo v1, "audio/amr-wb"

    const/16 v2, 0x69

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 238
    invoke-static {}, Landroid/media/MediaFile;->isWMAEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 239
    const-string/jumbo v0, "WMA"

    const-string/jumbo v1, "audio/x-ms-wma"

    const/16 v2, 0x6a

    const v3, 0xb901

    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 241
    :cond_2
    const-string/jumbo v0, "OGG"

    const-string/jumbo v1, "audio/ogg"

    const v2, 0xb902

    invoke-static {v0, v7, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 242
    const-string/jumbo v0, "OGG"

    const-string/jumbo v1, "application/ogg"

    const v2, 0xb902

    invoke-static {v0, v7, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 243
    const-string/jumbo v0, "OGA"

    const-string/jumbo v1, "application/ogg"

    const v2, 0xb902

    invoke-static {v0, v7, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 244
    const-string/jumbo v0, "AAC"

    const-string/jumbo v1, "audio/aac"

    const/16 v2, 0x6c

    const v3, 0xb903

    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 245
    const-string/jumbo v0, "AAC"

    const-string/jumbo v1, "audio/aac-adts"

    const/16 v2, 0x6c

    const v3, 0xb903

    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 246
    const-string/jumbo v0, "MKA"

    const-string/jumbo v1, "audio/x-matroska"

    const/16 v2, 0x6d

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 248
    const-string/jumbo v0, "MID"

    const-string/jumbo v1, "audio/midi"

    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 249
    const-string/jumbo v0, "MIDI"

    const-string/jumbo v1, "audio/midi"

    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 250
    const-string/jumbo v0, "XMF"

    const-string/jumbo v1, "audio/midi"

    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 251
    const-string/jumbo v0, "RTTTL"

    const-string/jumbo v1, "audio/midi"

    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 252
    const-string/jumbo v0, "SMF"

    const-string/jumbo v1, "audio/sp-midi"

    const/16 v2, 0xca

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 253
    const-string/jumbo v0, "IMY"

    const-string/jumbo v1, "audio/imelody"

    const/16 v2, 0xcb

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 254
    const-string/jumbo v0, "RTX"

    const-string/jumbo v1, "audio/midi"

    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 255
    const-string/jumbo v0, "OTA"

    const-string/jumbo v1, "audio/midi"

    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 256
    const-string/jumbo v0, "MXMF"

    const-string/jumbo v1, "audio/midi"

    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 259
    const-string/jumbo v0, "MTS"

    const-string/jumbo v1, "video/mp2ts"

    const/16 v2, 0x134

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 260
    const-string/jumbo v0, "M2TS"

    const-string/jumbo v1, "video/mp2ts"

    const/16 v2, 0x134

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 261
    const-string/jumbo v0, "MOV"

    const-string/jumbo v1, "video/quicktime"

    const/16 v2, 0x18d

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 262
    const-string/jumbo v0, "QT"

    const-string/jumbo v1, "video/quicktime"

    const/16 v2, 0x18d

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 263
    const-string/jumbo v0, "OGV"

    const-string/jumbo v1, "video/ogm"

    const/16 v2, 0x18a

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 264
    const-string/jumbo v0, "OGM"

    const-string/jumbo v1, "video/ogm"

    const/16 v2, 0x18a

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 265
    const-string/jumbo v0, "ro.mtk_flv_playback_support"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 266
    const-string/jumbo v0, "FLV"

    const-string/jumbo v1, "video/x-flv"

    const/16 v2, 0x18e

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 267
    const-string/jumbo v0, "F4V"

    const-string/jumbo v1, "video/x-flv"

    const/16 v2, 0x18e

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 268
    const-string/jumbo v0, "PFV"

    const-string/jumbo v1, "video/x-flv"

    const/16 v2, 0x18e

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 269
    const-string/jumbo v0, "FLA"

    const-string/jumbo v1, "audio/x-flv"

    const/16 v2, 0xc4

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 271
    :cond_3
    const-string/jumbo v0, "ro.mtk_mtkps_playback_support"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 272
    const-string/jumbo v0, "PS"

    const-string/jumbo v1, "video/mp2p"

    invoke-static {v0, v5, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 274
    const-string/jumbo v0, "VOB"

    const-string/jumbo v1, "video/mp2p"

    invoke-static {v0, v5, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 276
    const-string/jumbo v0, "DAT"

    const-string/jumbo v1, "video/mp2p"

    invoke-static {v0, v5, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 280
    :cond_4
    const-string/jumbo v0, "MPEG"

    const-string/jumbo v1, "video/mpeg"

    const/16 v2, 0x12d

    invoke-static {v0, v2, v1, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 281
    const-string/jumbo v0, "MPG"

    const-string/jumbo v1, "video/mpeg"

    const/16 v2, 0x12d

    invoke-static {v0, v2, v1, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 282
    const-string/jumbo v0, "MP4"

    const-string/jumbo v1, "video/mp4"

    const/16 v2, 0x12d

    invoke-static {v0, v2, v1, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 283
    const-string/jumbo v0, "M4V"

    const-string/jumbo v1, "video/mp4"

    const/16 v2, 0x12e

    invoke-static {v0, v2, v1, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 284
    const-string/jumbo v0, "3GP"

    const-string/jumbo v1, "video/3gpp"

    const/16 v2, 0x12f

    const v3, 0xb984

    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 285
    const-string/jumbo v0, "3GPP"

    const-string/jumbo v1, "video/3gpp"

    const/16 v2, 0x12f

    const v3, 0xb984

    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 286
    const-string/jumbo v0, "3G2"

    const-string/jumbo v1, "video/3gpp2"

    const/16 v2, 0x130

    const v3, 0xb984

    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 287
    const-string/jumbo v0, "3GPP2"

    const-string/jumbo v1, "video/3gpp2"

    const/16 v2, 0x130

    const v3, 0xb984

    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 288
    const-string/jumbo v0, "MKV"

    const-string/jumbo v1, "video/x-matroska"

    const/16 v2, 0x133

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 289
    const-string/jumbo v0, "WEBM"

    const-string/jumbo v1, "video/webm"

    const/16 v2, 0x136

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 290
    const-string/jumbo v0, "TS"

    const-string/jumbo v1, "video/mp2ts"

    const/16 v2, 0x134

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 291
    const-string/jumbo v0, "AVI"

    const-string/jumbo v1, "video/avi"

    const/16 v2, 0x135

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 293
    invoke-static {}, Landroid/media/MediaFile;->isWMVEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 294
    const-string/jumbo v0, "WMV"

    const-string/jumbo v1, "video/x-ms-wmv"

    const/16 v2, 0x131

    const v3, 0xb981

    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 295
    const-string/jumbo v0, "ASF"

    const-string/jumbo v1, "video/x-ms-asf"

    const/16 v2, 0x132

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 299
    :cond_5
    const-string/jumbo v0, "ro.mtk_bsp_package"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    .line 301
    const-string/jumbo v0, "MPO"

    const-string/jumbo v1, "image/mpo"

    const/16 v2, 0x1f3

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 305
    :cond_6
    const-string/jumbo v0, "JPG"

    const-string/jumbo v1, "image/jpeg"

    const/16 v2, 0x191

    const/16 v3, 0x3801

    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 306
    const-string/jumbo v0, "JPEG"

    const-string/jumbo v1, "image/jpeg"

    const/16 v2, 0x191

    const/16 v3, 0x3801

    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 307
    const-string/jumbo v0, "GIF"

    const-string/jumbo v1, "image/gif"

    const/16 v2, 0x192

    const/16 v3, 0x3807

    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 308
    const-string/jumbo v0, "PNG"

    const-string/jumbo v1, "image/png"

    const/16 v2, 0x193

    const/16 v3, 0x380b

    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 309
    const-string/jumbo v0, "BMP"

    const-string/jumbo v1, "image/x-ms-bmp"

    const/16 v2, 0x194

    const/16 v3, 0x3804

    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 310
    const-string/jumbo v0, "WBMP"

    const-string/jumbo v1, "image/vnd.wap.wbmp"

    const/16 v2, 0x195

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 311
    const-string/jumbo v0, "WEBP"

    const-string/jumbo v1, "image/webp"

    const/16 v2, 0x196

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 313
    const-string/jumbo v0, "M3U"

    const-string/jumbo v1, "audio/x-mpegurl"

    const/16 v2, 0x1f5

    const v3, 0xba11

    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 314
    const-string/jumbo v0, "M3U"

    const-string/jumbo v1, "application/x-mpegurl"

    const/16 v2, 0x1f5

    const v3, 0xba11

    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 315
    const-string/jumbo v0, "PLS"

    const-string/jumbo v1, "audio/x-scpls"

    const/16 v2, 0x1f6

    const v3, 0xba14

    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 316
    const-string/jumbo v0, "WPL"

    const-string/jumbo v1, "application/vnd.ms-wpl"

    const/16 v2, 0x1f7

    const v3, 0xba10

    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 317
    const-string/jumbo v0, "M3U8"

    const-string/jumbo v1, "application/vnd.apple.mpegurl"

    const/16 v2, 0x1f8

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 318
    const-string/jumbo v0, "M3U8"

    const-string/jumbo v1, "audio/mpegurl"

    const/16 v2, 0x1f8

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 319
    const-string/jumbo v0, "M3U8"

    const-string/jumbo v1, "audio/x-mpegurl"

    const/16 v2, 0x1f8

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 321
    const-string/jumbo v0, "FL"

    const-string/jumbo v1, "application/x-android-drm-fl"

    const/16 v2, 0x259

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 323
    const-string/jumbo v0, "TXT"

    const-string/jumbo v1, "text/plain"

    const/16 v2, 0x2bc

    const/16 v3, 0x3004

    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 324
    const-string/jumbo v0, "HTM"

    const-string/jumbo v1, "text/html"

    const/16 v2, 0x2bd

    const/16 v3, 0x3005

    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 325
    const-string/jumbo v0, "HTML"

    const-string/jumbo v1, "text/html"

    const/16 v2, 0x2bd

    const/16 v3, 0x3005

    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 326
    const-string/jumbo v0, "PDF"

    const-string/jumbo v1, "application/pdf"

    const/16 v2, 0x2be

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 327
    const-string/jumbo v0, "DOC"

    const-string/jumbo v1, "application/msword"

    const/16 v2, 0x2c0

    const v3, 0xba83

    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 328
    const-string/jumbo v0, "XLS"

    const-string/jumbo v1, "application/vnd.ms-excel"

    const/16 v2, 0x2c1

    const v3, 0xba85

    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 329
    const-string/jumbo v0, "PPT"

    const-string/jumbo v1, "application/vnd.ms-powerpoint"

    const/16 v2, 0x2c2

    const v3, 0xba86

    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 330
    const-string/jumbo v0, "FLAC"

    const-string/jumbo v1, "audio/flac"

    const/16 v2, 0x6e

    const v3, 0xb906

    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 331
    const-string/jumbo v0, "ZIP"

    const-string/jumbo v1, "application/zip"

    const/16 v2, 0x2c3

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 332
    const-string/jumbo v0, "MPG"

    const-string/jumbo v1, "video/mp2p"

    invoke-static {v0, v5, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 333
    const-string/jumbo v0, "MPEG"

    const-string/jumbo v1, "video/mp2p"

    invoke-static {v0, v5, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 336
    const-string/jumbo v0, "ICS"

    const-string/jumbo v1, "text/calendar"

    const/16 v2, 0x31b

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 337
    const-string/jumbo v0, "ICZ"

    const-string/jumbo v1, "text/calendar"

    const/16 v2, 0x31c

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 338
    const-string/jumbo v0, "VCF"

    const-string/jumbo v1, "text/x-vcard"

    const/16 v2, 0x31d

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 339
    const-string/jumbo v0, "VCS"

    const-string/jumbo v1, "text/x-vcalendar"

    const/16 v2, 0x31e

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 340
    const-string/jumbo v0, "APK"

    const-string/jumbo v1, "application/vnd.android.package-archive"

    const/16 v2, 0x31f

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 341
    const-string/jumbo v0, "DOCX"

    const-string/jumbo v1, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    const/16 v2, 0x2c0

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 342
    const-string/jumbo v0, "DOTX"

    const-string/jumbo v1, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    const/16 v2, 0x2c0

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 343
    const-string/jumbo v0, "XLSX"

    const-string/jumbo v1, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    const/16 v2, 0x2c1

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 344
    const-string/jumbo v0, "XLTX"

    const-string/jumbo v1, "application/vnd.openxmlformats-officedocument.spreadsheetml.template"

    const/16 v2, 0x2c1

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 345
    const-string/jumbo v0, "PPTX"

    const-string/jumbo v1, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    const/16 v2, 0x2c2

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 346
    const-string/jumbo v0, "POTX"

    const-string/jumbo v1, "application/vnd.openxmlformats-officedocument.presentationml.template"

    const/16 v2, 0x2c2

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 347
    const-string/jumbo v0, "PPSX"

    const-string/jumbo v1, "application/vnd.openxmlformats-officedocument.presentationml.slideshow"

    const/16 v2, 0x2c2

    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addFileType(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p0, "extension"    # Ljava/lang/String;
    .param p1, "fileType"    # I
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 164
    sget-object v0, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    new-instance v1, Landroid/media/MediaFile$MediaFileType;

    invoke-direct {v1, p1, p2}, Landroid/media/MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    return-void
.end method

.method static addFileType(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .param p0, "extension"    # Ljava/lang/String;
    .param p1, "fileType"    # I
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "mtpFormatCode"    # I

    .prologue
    .line 169
    invoke-static {p0, p1, p2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 170
    sget-object v0, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    return-void
.end method

.method public static getFileTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 394
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 395
    .local v1, "lastSlash":I
    if-ltz v1, :cond_0

    .line 396
    add-int/lit8 v1, v1, 0x1

    .line 397
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 398
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 402
    :cond_0
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 403
    .local v0, "lastDot":I
    if-lez v0, :cond_1

    .line 404
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 406
    :cond_1
    return-object p0
.end method

.method public static getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 379
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 380
    .local v0, "lastDot":I
    if-gez v0, :cond_0

    .line 381
    const/4 v1, 0x0

    return-object v1

    .line 382
    :cond_0
    sget-object v1, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaFile$MediaFileType;

    return-object v1
.end method

.method public static getFileTypeForMimeType(Ljava/lang/String;)I
    .locals 2
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 410
    sget-object v1, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 411
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public static getFormatCode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 420
    if-eqz p1, :cond_0

    .line 421
    sget-object v3, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 422
    .local v2, "value":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 423
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3

    .line 426
    .end local v2    # "value":Ljava/lang/Integer;
    :cond_0
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 427
    .local v1, "lastDot":I
    if-lez v1, :cond_1

    .line 428
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, "extension":Ljava/lang/String;
    sget-object v3, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 430
    .restart local v2    # "value":Ljava/lang/Integer;
    if-eqz v2, :cond_1

    .line 431
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3

    .line 434
    .end local v0    # "extension":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Integer;
    :cond_1
    const/16 v3, 0x3000

    return v3
.end method

.method public static getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 415
    invoke-static {p0}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v0

    .line 416
    .local v0, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getMimeTypeForFormatCode(I)Ljava/lang/String;
    .locals 2
    .param p0, "formatCode"    # I

    .prologue
    .line 438
    sget-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static isAudioFileType(I)Z
    .locals 3
    .param p0, "fileType"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 352
    const/16 v2, 0x65

    if-lt p0, v2, :cond_1

    .line 353
    const/16 v2, 0xc7

    if-gt p0, v2, :cond_1

    .line 352
    :cond_0
    :goto_0
    return v0

    .line 354
    :cond_1
    const/16 v2, 0xc9

    if-lt p0, v2, :cond_2

    .line 355
    const/16 v2, 0xcb

    if-le p0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 354
    goto :goto_0
.end method

.method public static isDrmFileType(I)Z
    .locals 2
    .param p0, "fileType"    # I

    .prologue
    const/16 v1, 0x259

    const/4 v0, 0x0

    .line 374
    if-lt p0, v1, :cond_0

    .line 375
    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    .line 374
    :cond_0
    return v0
.end method

.method public static isImageFileType(I)Z
    .locals 2
    .param p0, "fileType"    # I

    .prologue
    const/4 v0, 0x0

    .line 364
    const/16 v1, 0x191

    if-lt p0, v1, :cond_0

    .line 365
    const/16 v1, 0x1f3

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    .line 364
    :cond_0
    return v0
.end method

.method public static isMimeTypeMedia(Ljava/lang/String;)Z
    .locals 2
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 386
    invoke-static {p0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    .line 387
    .local v0, "fileType":I
    invoke-static {v0}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 388
    invoke-static {v0}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v1

    .line 387
    if-nez v1, :cond_0

    .line 388
    invoke-static {v0}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v1

    .line 387
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isPlayListFileType(I)Z
    .locals 2
    .param p0, "fileType"    # I

    .prologue
    const/4 v0, 0x0

    .line 369
    const/16 v1, 0x1f5

    if-lt p0, v1, :cond_0

    .line 370
    const/16 v1, 0x1f8

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    .line 369
    :cond_0
    return v0
.end method

.method public static isVideoFileType(I)Z
    .locals 2
    .param p0, "fileType"    # I

    .prologue
    const/4 v0, 0x0

    .line 359
    const/16 v1, 0x12d

    if-lt p0, v1, :cond_0

    .line 360
    const/16 v1, 0x18f

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    .line 359
    :cond_0
    return v0
.end method

.method private static isWMAEnabled()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 177
    const-string/jumbo v4, "ro.mtk_wmv_playback_support"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 178
    return v5

    .line 180
    :cond_0
    invoke-static {}, Landroid/media/DecoderCapabilities;->getAudioDecoders()Ljava/util/List;

    move-result-object v2

    .line 181
    .local v2, "decoders":Ljava/util/List;, "Ljava/util/List<Landroid/media/DecoderCapabilities$AudioDecoder;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 182
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 183
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/DecoderCapabilities$AudioDecoder;

    .line 184
    .local v1, "decoder":Landroid/media/DecoderCapabilities$AudioDecoder;
    sget-object v4, Landroid/media/DecoderCapabilities$AudioDecoder;->AUDIO_DECODER_WMA:Landroid/media/DecoderCapabilities$AudioDecoder;

    if-ne v1, v4, :cond_1

    .line 185
    const/4 v4, 0x1

    return v4

    .line 182
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 188
    .end local v1    # "decoder":Landroid/media/DecoderCapabilities$AudioDecoder;
    :cond_2
    return v5
.end method

.method private static isWMVEnabled()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 193
    const-string/jumbo v4, "ro.mtk_wmv_playback_support"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 194
    return v5

    .line 196
    :cond_0
    invoke-static {}, Landroid/media/DecoderCapabilities;->getVideoDecoders()Ljava/util/List;

    move-result-object v2

    .line 197
    .local v2, "decoders":Ljava/util/List;, "Ljava/util/List<Landroid/media/DecoderCapabilities$VideoDecoder;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 198
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 199
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/DecoderCapabilities$VideoDecoder;

    .line 200
    .local v1, "decoder":Landroid/media/DecoderCapabilities$VideoDecoder;
    sget-object v4, Landroid/media/DecoderCapabilities$VideoDecoder;->VIDEO_DECODER_WMV:Landroid/media/DecoderCapabilities$VideoDecoder;

    if-ne v1, v4, :cond_1

    .line 201
    const/4 v4, 0x1

    return v4

    .line 198
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 204
    .end local v1    # "decoder":Landroid/media/DecoderCapabilities$VideoDecoder;
    :cond_2
    return v5
.end method
