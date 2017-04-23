.class Landroid/media/TXTTrack;
.super Landroid/media/WebVttTrack;
.source "TXTRenderer.java"


# static fields
.field private static final KEY_LOCAL_SETTING:I = 0x66

.field private static final KEY_START_TIME:I = 0x7

.field private static final KEY_STRUCT_TEXT:I = 0x10

.field private static final MEDIA_TIMED_TEXT:I = 0x63

.field private static final TAG:Ljava/lang/String; = "TXTTrack"


# instance fields
.field private final mEventHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V
    .locals 1
    .param p1, "renderingWidget"    # Landroid/media/WebVttRenderingWidget;
    .param p2, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Landroid/media/WebVttTrack;-><init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/TXTTrack;->mEventHandler:Landroid/os/Handler;

    .line 73
    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Landroid/media/MediaFormat;)V
    .locals 1
    .param p1, "eventHandler"    # Landroid/os/Handler;
    .param p2, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Landroid/media/WebVttTrack;-><init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V

    .line 80
    iput-object p1, p0, Landroid/media/TXTTrack;->mEventHandler:Landroid/os/Handler;

    .line 78
    return-void
.end method

.method private static parseMs(Ljava/lang/String;)J
    .locals 14
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    .line 222
    const-string/jumbo v8, ":"

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 223
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

    .line 224
    .local v4, "minutes":J
    const-string/jumbo v8, ":"

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v8, v8, v9

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 225
    .local v6, "seconds":J
    const-string/jumbo v8, ":"

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v8, v8, v9

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 227
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

    .line 86
    :try_start_0
    new-instance v0, Landroid/media/TextTrackCue;

    invoke-direct {v0}, Landroid/media/TextTrackCue;-><init>()V

    .line 87
    .local v0, "cue":Landroid/media/TextTrackCue;
    invoke-virtual {p1}, Landroid/media/SubtitleData;->getStartTimeUs()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    iput-wide v10, v0, Landroid/media/TextTrackCue;->mStartTimeMs:J

    .line 88
    invoke-virtual {p1}, Landroid/media/SubtitleData;->getStartTimeUs()J

    move-result-wide v10

    invoke-virtual {p1}, Landroid/media/SubtitleData;->getDurationUs()J

    move-result-wide v12

    add-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    iput-wide v10, v0, Landroid/media/TextTrackCue;->mEndTimeMs:J

    .line 91
    new-instance v6, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/media/SubtitleData;->getData()[B

    move-result-object v9

    const-string/jumbo v10, "UTF-8"

    invoke-direct {v6, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 92
    .local v6, "paragraph":Ljava/lang/String;
    const-string/jumbo v9, "\\r?\\n"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 93
    .local v5, "lines":[Ljava/lang/String;
    array-length v9, v5

    new-array v9, v9, [[Landroid/media/TextTrackCueSpan;

    iput-object v9, v0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 95
    const/4 v2, 0x0

    .line 96
    .local v2, "i":I
    array-length v9, v5

    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-ge v8, v9, :cond_0

    aget-object v4, v5, v8

    .line 97
    .local v4, "line":Ljava/lang/String;
    const/4 v10, 0x1

    new-array v7, v10, [Landroid/media/TextTrackCueSpan;

    .line 98
    new-instance v10, Landroid/media/TextTrackCueSpan;

    const-wide/16 v12, -0x1

    invoke-direct {v10, v4, v12, v13}, Landroid/media/TextTrackCueSpan;-><init>(Ljava/lang/String;J)V

    const/4 v11, 0x0

    aput-object v10, v7, v11

    .line 100
    .local v7, "span":[Landroid/media/TextTrackCueSpan;
    iget-object v10, v0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aput-object v7, v10, v3

    .line 96
    add-int/lit8 v8, v8, 0x1

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 103
    .end local v4    # "line":Ljava/lang/String;
    .end local v7    # "span":[Landroid/media/TextTrackCueSpan;
    :cond_0
    invoke-virtual {p0, v0}, Landroid/media/TXTTrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v0    # "cue":Landroid/media/TextTrackCue;
    .end local v3    # "i":I
    .end local v5    # "lines":[Ljava/lang/String;
    .end local v6    # "paragraph":Ljava/lang/String;
    :goto_1
    return-void

    .line 104
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v8, "TXTTrack"

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
    .locals 38
    .param p1, "data"    # [B
    .param p2, "eos"    # Z
    .param p3, "runID"    # J

    .prologue
    .line 112
    :try_start_0
    new-instance v25, Ljava/io/InputStreamReader;

    new-instance v32, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string/jumbo v33, "UTF-8"

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 113
    .local v25, "r":Ljava/io/Reader;
    new-instance v4, Ljava/io/BufferedReader;

    move-object/from16 v0, v25

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 116
    .local v4, "br":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v29

    .line 117
    .local v29, "tmpLineContent":Ljava/lang/String;
    if-nez v29, :cond_0

    .line 118
    return-void

    .line 121
    :cond_0
    const/16 v21, 0x1

    .line 122
    .local v21, "neverRead":Z
    const-wide/16 v30, 0x0

    .line 123
    .local v30, "startEndGap":J
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    .local v20, "lineContent":Ljava/lang/String;
    if-eqz v20, :cond_2

    if-eqz v29, :cond_2

    .line 124
    new-instance v5, Landroid/media/TextTrackCue;

    invoke-direct {v5}, Landroid/media/TextTrackCue;-><init>()V

    .line 125
    .local v5, "cue":Landroid/media/TextTrackCue;
    const-string/jumbo v32, ":"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    aget-object v32, v32, v33

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 126
    .local v14, "hours":J
    const-string/jumbo v32, ":"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x1

    aget-object v32, v32, v33

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    .line 127
    .local v22, "minutes":J
    const-string/jumbo v32, ":"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x2

    aget-object v32, v32, v33

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v26

    .line 128
    .local v26, "seconds":J
    const-wide/16 v32, 0x3c

    mul-long v32, v32, v14

    const-wide/16 v34, 0x3c

    mul-long v32, v32, v34

    const-wide/16 v34, 0x3e8

    mul-long v32, v32, v34

    const-wide/16 v34, 0x3c

    mul-long v34, v34, v22

    const-wide/16 v36, 0x3e8

    mul-long v34, v34, v36

    add-long v32, v32, v34

    const-wide/16 v34, 0x3e8

    mul-long v34, v34, v26

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    iput-wide v0, v5, Landroid/media/TextTrackCue;->mStartTimeMs:J

    .line 130
    const-string/jumbo v32, ":"

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    aget-object v32, v32, v33

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 131
    .local v8, "endHours":J
    const-string/jumbo v32, ":"

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x1

    aget-object v32, v32, v33

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 132
    .local v10, "endMinutes":J
    const-string/jumbo v32, ":"

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x2

    aget-object v32, v32, v33

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 133
    .local v12, "endSeconds":J
    const-wide/16 v32, 0x3c

    mul-long v32, v32, v8

    const-wide/16 v34, 0x3c

    mul-long v32, v32, v34

    const-wide/16 v34, 0x3e8

    mul-long v32, v32, v34

    const-wide/16 v34, 0x3c

    mul-long v34, v34, v10

    const-wide/16 v36, 0x3e8

    mul-long v34, v34, v36

    add-long v32, v32, v34

    const-wide/16 v34, 0x3e8

    mul-long v34, v34, v12

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    iput-wide v0, v5, Landroid/media/TextTrackCue;->mEndTimeMs:J

    .line 135
    iget-wide v0, v5, Landroid/media/TextTrackCue;->mEndTimeMs:J

    move-wide/from16 v32, v0

    iget-wide v0, v5, Landroid/media/TextTrackCue;->mStartTimeMs:J

    move-wide/from16 v34, v0

    sub-long v30, v32, v34

    .line 137
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v24, "paragraph":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v32, ":"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x3

    aget-object v32, v32, v33

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    const/4 v7, 0x0

    .line 141
    .local v7, "i":I
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v32

    move/from16 v0, v32

    new-array v0, v0, [[Landroid/media/TextTrackCueSpan;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iput-object v0, v5, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 142
    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v32

    check-cast v32, [Ljava/lang/String;

    move-object/from16 v0, v32

    iput-object v0, v5, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    .line 143
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "line$iterator":Ljava/util/Iterator;
    move/from16 v16, v7

    .end local v7    # "i":I
    .local v16, "i":I
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 144
    .local v18, "line":Ljava/lang/String;
    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Landroid/media/TextTrackCueSpan;

    move-object/from16 v28, v0

    .line 145
    new-instance v32, Landroid/media/TextTrackCueSpan;

    const-wide/16 v34, -0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    move-wide/from16 v2, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/media/TextTrackCueSpan;-><init>(Ljava/lang/String;J)V

    const/16 v33, 0x0

    aput-object v32, v28, v33

    .line 147
    .local v28, "span":[Landroid/media/TextTrackCueSpan;
    iget-object v0, v5, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    move-object/from16 v32, v0

    aput-object v18, v32, v16

    .line 148
    iget-object v0, v5, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    move-object/from16 v32, v0

    add-int/lit8 v7, v16, 0x1

    .end local v16    # "i":I
    .restart local v7    # "i":I
    aput-object v28, v32, v16

    move/from16 v16, v7

    .end local v7    # "i":I
    .restart local v16    # "i":I
    goto :goto_1

    .line 150
    .end local v18    # "line":Ljava/lang/String;
    .end local v28    # "span":[Landroid/media/TextTrackCueSpan;
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/TXTTrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z

    .line 151
    move-object/from16 v29, v20

    goto/16 :goto_0

    .line 155
    .end local v5    # "cue":Landroid/media/TextTrackCue;
    .end local v8    # "endHours":J
    .end local v10    # "endMinutes":J
    .end local v12    # "endSeconds":J
    .end local v14    # "hours":J
    .end local v16    # "i":I
    .end local v19    # "line$iterator":Ljava/util/Iterator;
    .end local v22    # "minutes":J
    .end local v24    # "paragraph":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "seconds":J
    :cond_2
    new-instance v5, Landroid/media/TextTrackCue;

    invoke-direct {v5}, Landroid/media/TextTrackCue;-><init>()V

    .line 156
    .restart local v5    # "cue":Landroid/media/TextTrackCue;
    const-string/jumbo v32, ":"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    aget-object v32, v32, v33

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 157
    .restart local v14    # "hours":J
    const-string/jumbo v32, ":"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x1

    aget-object v32, v32, v33

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    .line 158
    .restart local v22    # "minutes":J
    const-string/jumbo v32, ":"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x2

    aget-object v32, v32, v33

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v26

    .line 159
    .restart local v26    # "seconds":J
    const-wide/16 v32, 0x3c

    mul-long v32, v32, v14

    const-wide/16 v34, 0x3c

    mul-long v32, v32, v34

    const-wide/16 v34, 0x3e8

    mul-long v32, v32, v34

    const-wide/16 v34, 0x3c

    mul-long v34, v34, v22

    const-wide/16 v36, 0x3e8

    mul-long v34, v34, v36

    add-long v32, v32, v34

    const-wide/16 v34, 0x3e8

    mul-long v34, v34, v26

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    iput-wide v0, v5, Landroid/media/TextTrackCue;->mStartTimeMs:J

    .line 160
    iget-wide v0, v5, Landroid/media/TextTrackCue;->mStartTimeMs:J

    move-wide/from16 v32, v0

    add-long v32, v32, v30

    move-wide/from16 v0, v32

    iput-wide v0, v5, Landroid/media/TextTrackCue;->mEndTimeMs:J

    .line 162
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .restart local v24    # "paragraph":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v32, ":"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x3

    aget-object v32, v32, v33

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    const/4 v7, 0x0

    .line 166
    .restart local v7    # "i":I
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v32

    move/from16 v0, v32

    new-array v0, v0, [[Landroid/media/TextTrackCueSpan;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iput-object v0, v5, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 167
    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v32

    check-cast v32, [Ljava/lang/String;

    move-object/from16 v0, v32

    iput-object v0, v5, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    .line 168
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19    # "line$iterator":Ljava/util/Iterator;
    move/from16 v16, v7

    .end local v7    # "i":I
    .restart local v16    # "i":I
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 169
    .restart local v18    # "line":Ljava/lang/String;
    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Landroid/media/TextTrackCueSpan;

    move-object/from16 v28, v0

    .line 170
    new-instance v32, Landroid/media/TextTrackCueSpan;

    const-wide/16 v34, -0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    move-wide/from16 v2, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/media/TextTrackCueSpan;-><init>(Ljava/lang/String;J)V

    const/16 v33, 0x0

    aput-object v32, v28, v33

    .line 172
    .restart local v28    # "span":[Landroid/media/TextTrackCueSpan;
    iget-object v0, v5, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    move-object/from16 v32, v0

    aput-object v18, v32, v16

    .line 173
    iget-object v0, v5, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    move-object/from16 v32, v0

    add-int/lit8 v7, v16, 0x1

    .end local v16    # "i":I
    .restart local v7    # "i":I
    aput-object v28, v32, v16

    move/from16 v16, v7

    .end local v7    # "i":I
    .restart local v16    # "i":I
    goto :goto_2

    .line 175
    .end local v18    # "line":Ljava/lang/String;
    .end local v28    # "span":[Landroid/media/TextTrackCueSpan;
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/TXTTrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v5    # "cue":Landroid/media/TextTrackCue;
    .end local v14    # "hours":J
    .end local v16    # "i":I
    .end local v19    # "line$iterator":Ljava/util/Iterator;
    .end local v20    # "lineContent":Ljava/lang/String;
    .end local v21    # "neverRead":Z
    .end local v22    # "minutes":J
    .end local v24    # "paragraph":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "r":Ljava/io/Reader;
    .end local v26    # "seconds":J
    .end local v29    # "tmpLineContent":Ljava/lang/String;
    .end local v30    # "startEndGap":J
    :goto_3
    return-void

    .line 179
    :catch_0
    move-exception v17

    .line 181
    .local v17, "ioe":Ljava/io/IOException;
    const-string/jumbo v32, "TXTTrack"

    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 177
    .end local v17    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 178
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v32, "TXTTrack"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "subtitle data is not UTF-8 encoded: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

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
    .line 187
    .local p1, "activeCues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    invoke-virtual {p0}, Landroid/media/TXTTrack;->getRenderingWidget()Landroid/media/WebVttRenderingWidget;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 188
    invoke-super {p0, p1}, Landroid/media/WebVttTrack;->updateView(Ljava/util/Vector;)V

    .line 189
    return-void

    .line 192
    :cond_0
    iget-object v9, p0, Landroid/media/TXTTrack;->mEventHandler:Landroid/os/Handler;

    if-nez v9, :cond_1

    .line 193
    return-void

    .line 196
    :cond_1
    const/4 v0, 0x0

    .line 197
    .local v0, "_":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "cue$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/SubtitleTrack$Cue;

    .local v2, "cue":Landroid/media/SubtitleTrack$Cue;
    move-object v8, v2

    .line 198
    check-cast v8, Landroid/media/TextTrackCue;

    .line 200
    .local v8, "ttc":Landroid/media/TextTrackCue;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 201
    .local v6, "parcel":Landroid/os/Parcel;
    const/16 v9, 0x66

    invoke-virtual {v6, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    const/4 v9, 0x7

    invoke-virtual {v6, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    iget-wide v10, v2, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    long-to-int v9, v10

    invoke-virtual {v6, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    const/16 v9, 0x10

    invoke-virtual {v6, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .local v7, "sb":Ljava/lang/StringBuilder;
    iget-object v10, v8, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    const/4 v9, 0x0

    array-length v11, v10

    :goto_1
    if-ge v9, v11, :cond_2

    aget-object v4, v10, v9

    .line 208
    .local v4, "line":Ljava/lang/String;
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0xa

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 211
    .end local v4    # "line":Ljava/lang/String;
    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 212
    .local v1, "buf":[B
    array-length v9, v1

    invoke-virtual {v6, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 215
    iget-object v9, p0, Landroid/media/TXTTrack;->mEventHandler:Landroid/os/Handler;

    const/16 v10, 0x63

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 216
    .local v5, "msg":Landroid/os/Message;
    iget-object v9, p0, Landroid/media/TXTTrack;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v9, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 218
    .end local v1    # "buf":[B
    .end local v2    # "cue":Landroid/media/SubtitleTrack$Cue;
    .end local v5    # "msg":Landroid/os/Message;
    .end local v6    # "parcel":Landroid/os/Parcel;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "ttc":Landroid/media/TextTrackCue;
    :cond_3
    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    .line 186
    return-void
.end method
