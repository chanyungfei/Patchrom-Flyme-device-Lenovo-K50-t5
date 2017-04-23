.class Landroid/media/ASSTrack;
.super Landroid/media/WebVttTrack;
.source "ASSRenderer.java"


# static fields
.field private static final DEBUG:Z

.field private static final KEY_LOCAL_SETTING:I = 0x66

.field private static final KEY_START_TIME:I = 0x7

.field private static final KEY_STRUCT_TEXT:I = 0x10

.field private static final MEDIA_TIMED_TEXT:I = 0x63

.field private static final TAG:Ljava/lang/String; = "ASSTrack"


# instance fields
.field private final mEventHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 71
    const-string/jumbo v0, "ASSTrack"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/ASSTrack;->DEBUG:Z

    .line 64
    return-void
.end method

.method constructor <init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V
    .locals 1
    .param p1, "renderingWidget"    # Landroid/media/WebVttRenderingWidget;
    .param p2, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Landroid/media/WebVttTrack;-><init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/ASSTrack;->mEventHandler:Landroid/os/Handler;

    .line 74
    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Landroid/media/MediaFormat;)V
    .locals 1
    .param p1, "eventHandler"    # Landroid/os/Handler;
    .param p2, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Landroid/media/WebVttTrack;-><init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V

    .line 81
    iput-object p1, p0, Landroid/media/ASSTrack;->mEventHandler:Landroid/os/Handler;

    .line 79
    return-void
.end method

.method private static parseMs(Ljava/lang/String;)J
    .locals 14
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    .line 240
    const-string/jumbo v8, ":"

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 241
    .local v0, "hours":J
    const-string/jumbo v8, ":"

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 242
    .local v4, "minutes":J
    const-string/jumbo v8, ":"

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v8, v8, v9

    const-string/jumbo v9, "\\."

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 243
    .local v6, "seconds":J
    const-string/jumbo v8, ":"

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v8, v8, v9

    const-string/jumbo v9, "\\."

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 245
    .local v2, "millies":J
    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v0

    const-wide/16 v10, 0x3c

    mul-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    const-wide/16 v10, 0x3c

    mul-long/2addr v10, v4

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    add-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v6

    add-long/2addr v8, v10

    add-long/2addr v8, v2

    return-wide v8
.end method


# virtual methods
.method protected onData(Landroid/media/SubtitleData;)V
    .locals 14
    .param p1, "data"    # Landroid/media/SubtitleData;

    .prologue
    const/4 v8, 0x0

    .line 87
    :try_start_0
    new-instance v0, Landroid/media/TextTrackCue;

    invoke-direct {v0}, Landroid/media/TextTrackCue;-><init>()V

    .line 88
    .local v0, "cue":Landroid/media/TextTrackCue;
    invoke-virtual {p1}, Landroid/media/SubtitleData;->getStartTimeUs()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    iput-wide v10, v0, Landroid/media/TextTrackCue;->mStartTimeMs:J

    .line 89
    invoke-virtual {p1}, Landroid/media/SubtitleData;->getStartTimeUs()J

    move-result-wide v10

    invoke-virtual {p1}, Landroid/media/SubtitleData;->getDurationUs()J

    move-result-wide v12

    add-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    iput-wide v10, v0, Landroid/media/TextTrackCue;->mEndTimeMs:J

    .line 92
    new-instance v6, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/media/SubtitleData;->getData()[B

    move-result-object v9

    const-string/jumbo v10, "UTF-8"

    invoke-direct {v6, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 93
    .local v6, "paragraph":Ljava/lang/String;
    const-string/jumbo v9, "\\r?\\n"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 94
    .local v5, "lines":[Ljava/lang/String;
    array-length v9, v5

    new-array v9, v9, [[Landroid/media/TextTrackCueSpan;

    iput-object v9, v0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 96
    const/4 v2, 0x0

    .line 97
    .local v2, "i":I
    array-length v9, v5

    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-ge v8, v9, :cond_0

    aget-object v4, v5, v8

    .line 98
    .local v4, "line":Ljava/lang/String;
    const/4 v10, 0x1

    new-array v7, v10, [Landroid/media/TextTrackCueSpan;

    .line 99
    new-instance v10, Landroid/media/TextTrackCueSpan;

    const-wide/16 v12, -0x1

    invoke-direct {v10, v4, v12, v13}, Landroid/media/TextTrackCueSpan;-><init>(Ljava/lang/String;J)V

    const/4 v11, 0x0

    aput-object v10, v7, v11

    .line 101
    .local v7, "span":[Landroid/media/TextTrackCueSpan;
    iget-object v10, v0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aput-object v7, v10, v3

    .line 97
    add-int/lit8 v8, v8, 0x1

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 104
    .end local v4    # "line":Ljava/lang/String;
    .end local v7    # "span":[Landroid/media/TextTrackCueSpan;
    :cond_0
    invoke-virtual {p0, v0}, Landroid/media/ASSTrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v0    # "cue":Landroid/media/TextTrackCue;
    .end local v3    # "i":I
    .end local v5    # "lines":[Ljava/lang/String;
    .end local v6    # "paragraph":Ljava/lang/String;
    :goto_1
    return-void

    .line 105
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v8, "ASSTrack"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "subtitle data is not UTF-8 encoded: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onData([BZJ)V
    .locals 26
    .param p1, "data"    # [B
    .param p2, "eos"    # Z
    .param p3, "runID"    # J

    .prologue
    .line 113
    :try_start_0
    new-instance v21, Ljava/io/InputStreamReader;

    new-instance v23, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string/jumbo v24, "UTF-8"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 114
    .local v21, "r":Ljava/io/Reader;
    new-instance v4, Ljava/io/BufferedReader;

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 117
    .local v4, "br":Ljava/io/BufferedReader;
    const-string/jumbo v7, ""

    .line 118
    .local v7, "dialogueStart":Ljava/lang/String;
    const/4 v11, 0x0

    .line 119
    .local v11, "hasEvents":Z
    const/4 v10, 0x0

    .line 120
    .local v10, "foundDialogue":Z
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .local v9, "eventStart":Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 122
    const-string/jumbo v23, "[Events]"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 123
    const/4 v11, 0x1

    .line 127
    :cond_1
    const/16 v17, 0x0

    .line 128
    .local v17, "k":I
    :cond_2
    :goto_0
    if-nez v10, :cond_4

    .line 129
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 130
    if-nez v7, :cond_3

    .line 131
    add-int/lit8 v17, v17, 0x1

    .line 132
    const/16 v23, 0x5

    move/from16 v0, v17

    move/from16 v1, v23

    if-le v0, v1, :cond_2

    .line 133
    return-void

    .line 136
    :cond_3
    const-string/jumbo v23, "Dialogue:"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 137
    const/4 v10, 0x1

    goto :goto_0

    .line 141
    :cond_4
    if-eqz v10, :cond_8

    .line 142
    sget-boolean v23, Landroid/media/ASSTrack;->DEBUG:Z

    if-eqz v23, :cond_5

    const-string/jumbo v23, "ASSTrack"

    const-string/jumbo v24, "Dialogue is founded"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_5
    new-instance v5, Landroid/media/TextTrackCue;

    invoke-direct {v5}, Landroid/media/TextTrackCue;-><init>()V

    .line 146
    .local v5, "cue":Landroid/media/TextTrackCue;
    const-string/jumbo v23, ","

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 147
    .local v6, "diaContent":[Ljava/lang/String;
    const/16 v23, 0x1

    aget-object v23, v6, v23

    invoke-static/range {v23 .. v23}, Landroid/media/ASSTrack;->parseMs(Ljava/lang/String;)J

    move-result-wide v24

    move-wide/from16 v0, v24

    iput-wide v0, v5, Landroid/media/TextTrackCue;->mStartTimeMs:J

    .line 148
    const/16 v23, 0x2

    aget-object v23, v6, v23

    invoke-static/range {v23 .. v23}, Landroid/media/ASSTrack;->parseMs(Ljava/lang/String;)J

    move-result-wide v24

    move-wide/from16 v0, v24

    iput-wide v0, v5, Landroid/media/TextTrackCue;->mEndTimeMs:J

    .line 149
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v20, "paragraph":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v23, 0x9

    aget-object v23, v6, v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    const/4 v12, 0x0

    .line 153
    .local v12, "i":I
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [[Landroid/media/TextTrackCueSpan;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-object v0, v5, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 154
    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v0, v5, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    .line 155
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "line$iterator":Ljava/util/Iterator;
    move v13, v12

    .end local v12    # "i":I
    .local v13, "i":I
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_6

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 156
    .local v18, "line":Ljava/lang/String;
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Landroid/media/TextTrackCueSpan;

    move-object/from16 v22, v0

    .line 157
    new-instance v23, Landroid/media/TextTrackCueSpan;

    const-wide/16 v24, -0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    move-wide/from16 v2, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/media/TextTrackCueSpan;-><init>(Ljava/lang/String;J)V

    const/16 v24, 0x0

    aput-object v23, v22, v24

    .line 159
    .local v22, "span":[Landroid/media/TextTrackCueSpan;
    iget-object v0, v5, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v18, v23, v13

    .line 160
    iget-object v0, v5, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    move-object/from16 v23, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "i":I
    .restart local v12    # "i":I
    aput-object v22, v23, v13

    move v13, v12

    .end local v12    # "i":I
    .restart local v13    # "i":I
    goto :goto_1

    .line 163
    .end local v18    # "line":Ljava/lang/String;
    .end local v22    # "span":[Landroid/media/TextTrackCueSpan;
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/ASSTrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z

    .line 164
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    .line 166
    new-instance v5, Landroid/media/TextTrackCue;

    .end local v5    # "cue":Landroid/media/TextTrackCue;
    invoke-direct {v5}, Landroid/media/TextTrackCue;-><init>()V

    .line 168
    .restart local v5    # "cue":Landroid/media/TextTrackCue;
    const-string/jumbo v23, ","

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 169
    const/16 v23, 0x1

    aget-object v23, v6, v23

    invoke-static/range {v23 .. v23}, Landroid/media/ASSTrack;->parseMs(Ljava/lang/String;)J

    move-result-wide v24

    move-wide/from16 v0, v24

    iput-wide v0, v5, Landroid/media/TextTrackCue;->mStartTimeMs:J

    .line 170
    const/16 v23, 0x2

    aget-object v23, v6, v23

    invoke-static/range {v23 .. v23}, Landroid/media/ASSTrack;->parseMs(Ljava/lang/String;)J

    move-result-wide v24

    move-wide/from16 v0, v24

    iput-wide v0, v5, Landroid/media/TextTrackCue;->mEndTimeMs:J

    .line 171
    new-instance v20, Ljava/util/ArrayList;

    .end local v20    # "paragraph":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .restart local v20    # "paragraph":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v23, 0x9

    aget-object v23, v6, v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    const/4 v15, 0x0

    .line 175
    .local v15, "j":I
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [[Landroid/media/TextTrackCueSpan;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-object v0, v5, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 176
    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v0, v5, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    .line 177
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    move/from16 v16, v15

    .end local v15    # "j":I
    .local v16, "j":I
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_7

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 178
    .restart local v18    # "line":Ljava/lang/String;
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Landroid/media/TextTrackCueSpan;

    move-object/from16 v22, v0

    .line 179
    new-instance v23, Landroid/media/TextTrackCueSpan;

    const-wide/16 v24, -0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    move-wide/from16 v2, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/media/TextTrackCueSpan;-><init>(Ljava/lang/String;J)V

    const/16 v24, 0x0

    aput-object v23, v22, v24

    .line 181
    .restart local v22    # "span":[Landroid/media/TextTrackCueSpan;
    iget-object v0, v5, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v18, v23, v16

    .line 182
    iget-object v0, v5, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    move-object/from16 v23, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "j":I
    .restart local v15    # "j":I
    aput-object v22, v23, v16

    move/from16 v16, v15

    .end local v15    # "j":I
    .restart local v16    # "j":I
    goto :goto_2

    .line 185
    .end local v18    # "line":Ljava/lang/String;
    .end local v22    # "span":[Landroid/media/TextTrackCueSpan;
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/ASSTrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v5    # "cue":Landroid/media/TextTrackCue;
    .end local v6    # "diaContent":[Ljava/lang/String;
    .end local v7    # "dialogueStart":Ljava/lang/String;
    .end local v9    # "eventStart":Ljava/lang/String;
    .end local v10    # "foundDialogue":Z
    .end local v11    # "hasEvents":Z
    .end local v13    # "i":I
    .end local v16    # "j":I
    .end local v17    # "k":I
    .end local v19    # "line$iterator":Ljava/util/Iterator;
    .end local v20    # "paragraph":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "r":Ljava/io/Reader;
    :cond_8
    :goto_3
    return-void

    .line 190
    :catch_0
    move-exception v14

    .line 192
    .local v14, "ioe":Ljava/io/IOException;
    const-string/jumbo v23, "ASSTrack"

    invoke-virtual {v14}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 188
    .end local v14    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v8

    .line 189
    .local v8, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v23, "ASSTrack"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "subtitle data is not UTF-8 encoded: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public updateView(Ljava/util/Vector;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, "activeCues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    invoke-virtual {p0}, Landroid/media/ASSTrack;->getRenderingWidget()Landroid/media/WebVttRenderingWidget;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 199
    invoke-super {p0, p1}, Landroid/media/WebVttTrack;->updateView(Ljava/util/Vector;)V

    .line 200
    return-void

    .line 203
    :cond_0
    iget-object v9, p0, Landroid/media/ASSTrack;->mEventHandler:Landroid/os/Handler;

    if-nez v9, :cond_1

    .line 204
    return-void

    .line 207
    :cond_1
    const/4 v0, 0x0

    .line 209
    .local v0, "_":I
    invoke-virtual {p1}, Ljava/util/Vector;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 210
    sget-boolean v9, Landroid/media/ASSTrack;->DEBUG:Z

    if-eqz v9, :cond_2

    const-string/jumbo v9, "ASSTrack"

    const-string/jumbo v10, "activeCues is Empty"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_2
    iget-object v9, p0, Landroid/media/ASSTrack;->mEventHandler:Landroid/os/Handler;

    const/16 v10, 0x63

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 212
    .local v5, "msg":Landroid/os/Message;
    iget-object v9, p0, Landroid/media/ASSTrack;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v9, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 215
    .end local v5    # "msg":Landroid/os/Message;
    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "cue$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/SubtitleTrack$Cue;

    .local v2, "cue":Landroid/media/SubtitleTrack$Cue;
    move-object v8, v2

    .line 216
    check-cast v8, Landroid/media/TextTrackCue;

    .line 218
    .local v8, "ttc":Landroid/media/TextTrackCue;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 219
    .local v6, "parcel":Landroid/os/Parcel;
    const/16 v9, 0x66

    invoke-virtual {v6, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    const/4 v9, 0x7

    invoke-virtual {v6, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    iget-wide v10, v2, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    long-to-int v9, v10

    invoke-virtual {v6, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    const/16 v9, 0x10

    invoke-virtual {v6, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .local v7, "sb":Ljava/lang/StringBuilder;
    iget-object v10, v8, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    const/4 v9, 0x0

    array-length v11, v10

    :goto_1
    if-ge v9, v11, :cond_4

    aget-object v4, v10, v9

    .line 226
    .local v4, "line":Ljava/lang/String;
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0xa

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 225
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 229
    .end local v4    # "line":Ljava/lang/String;
    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 230
    .local v1, "buf":[B
    array-length v9, v1

    invoke-virtual {v6, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 233
    iget-object v9, p0, Landroid/media/ASSTrack;->mEventHandler:Landroid/os/Handler;

    const/16 v10, 0x63

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 234
    .restart local v5    # "msg":Landroid/os/Message;
    iget-object v9, p0, Landroid/media/ASSTrack;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v9, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 236
    .end local v1    # "buf":[B
    .end local v2    # "cue":Landroid/media/SubtitleTrack$Cue;
    .end local v5    # "msg":Landroid/os/Message;
    .end local v6    # "parcel":Landroid/os/Parcel;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "ttc":Landroid/media/TextTrackCue;
    :cond_5
    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    .line 197
    return-void
.end method
