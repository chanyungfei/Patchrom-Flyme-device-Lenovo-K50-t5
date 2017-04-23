.class Landroid/media/MPLTrack;
.super Landroid/media/WebVttTrack;
.source "MPLRenderer.java"


# static fields
.field private static final DEBUG:Z

.field private static final KEY_LOCAL_SETTING:I = 0x66

.field private static final KEY_START_TIME:I = 0x7

.field private static final KEY_STRUCT_TEXT:I = 0x10

.field private static final MEDIA_TIMED_TEXT:I = 0x63

.field private static final TAG:Ljava/lang/String; = "MPLTrack"


# instance fields
.field private final mEventHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 73
    const-string/jumbo v0, "MPLTrack"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/MPLTrack;->DEBUG:Z

    .line 65
    return-void
.end method

.method constructor <init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V
    .locals 1
    .param p1, "renderingWidget"    # Landroid/media/WebVttRenderingWidget;
    .param p2, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/media/WebVttTrack;-><init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MPLTrack;->mEventHandler:Landroid/os/Handler;

    .line 77
    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Landroid/media/MediaFormat;)V
    .locals 1
    .param p1, "eventHandler"    # Landroid/os/Handler;
    .param p2, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Landroid/media/WebVttTrack;-><init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V

    .line 84
    iput-object p1, p0, Landroid/media/MPLTrack;->mEventHandler:Landroid/os/Handler;

    .line 82
    return-void
.end method


# virtual methods
.method protected onData(Landroid/media/SubtitleData;)V
    .locals 14
    .param p1, "data"    # Landroid/media/SubtitleData;

    .prologue
    const/4 v8, 0x0

    .line 90
    :try_start_0
    new-instance v0, Landroid/media/TextTrackCue;

    invoke-direct {v0}, Landroid/media/TextTrackCue;-><init>()V

    .line 91
    .local v0, "cue":Landroid/media/TextTrackCue;
    invoke-virtual {p1}, Landroid/media/SubtitleData;->getStartTimeUs()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    iput-wide v10, v0, Landroid/media/TextTrackCue;->mStartTimeMs:J

    .line 92
    invoke-virtual {p1}, Landroid/media/SubtitleData;->getStartTimeUs()J

    move-result-wide v10

    invoke-virtual {p1}, Landroid/media/SubtitleData;->getDurationUs()J

    move-result-wide v12

    add-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    iput-wide v10, v0, Landroid/media/TextTrackCue;->mEndTimeMs:J

    .line 95
    new-instance v6, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/media/SubtitleData;->getData()[B

    move-result-object v9

    const-string/jumbo v10, "UTF-8"

    invoke-direct {v6, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 96
    .local v6, "paragraph":Ljava/lang/String;
    const-string/jumbo v9, "\\r?\\n"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 97
    .local v5, "lines":[Ljava/lang/String;
    array-length v9, v5

    new-array v9, v9, [[Landroid/media/TextTrackCueSpan;

    iput-object v9, v0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 99
    const/4 v2, 0x0

    .line 100
    .local v2, "i":I
    array-length v9, v5

    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-ge v8, v9, :cond_0

    aget-object v4, v5, v8

    .line 101
    .local v4, "line":Ljava/lang/String;
    const/4 v10, 0x1

    new-array v7, v10, [Landroid/media/TextTrackCueSpan;

    .line 102
    new-instance v10, Landroid/media/TextTrackCueSpan;

    const-wide/16 v12, -0x1

    invoke-direct {v10, v4, v12, v13}, Landroid/media/TextTrackCueSpan;-><init>(Ljava/lang/String;J)V

    const/4 v11, 0x0

    aput-object v10, v7, v11

    .line 104
    .local v7, "span":[Landroid/media/TextTrackCueSpan;
    iget-object v10, v0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aput-object v7, v10, v3

    .line 100
    add-int/lit8 v8, v8, 0x1

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 107
    .end local v4    # "line":Ljava/lang/String;
    .end local v7    # "span":[Landroid/media/TextTrackCueSpan;
    :cond_0
    invoke-virtual {p0, v0}, Landroid/media/MPLTrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v0    # "cue":Landroid/media/TextTrackCue;
    .end local v3    # "i":I
    .end local v5    # "lines":[Ljava/lang/String;
    .end local v6    # "paragraph":Ljava/lang/String;
    :goto_1
    return-void

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v8, "MPLTrack"

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
    .locals 25
    .param p1, "data"    # [B
    .param p2, "eos"    # Z
    .param p3, "runID"    # J

    .prologue
    .line 118
    :try_start_0
    new-instance v15, Ljava/io/InputStreamReader;

    new-instance v20, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string/jumbo v21, "UTF-8"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v15, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 119
    .local v15, "r":Ljava/io/Reader;
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 122
    .local v4, "br":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, "header":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 124
    sget-boolean v20, Landroid/media/MPLTrack;->DEBUG:Z

    if-eqz v20, :cond_1

    const-string/jumbo v20, "MPLTrack"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_1
    const-string/jumbo v20, "\\[.*\\]"

    move-object/from16 v0, v20

    invoke-static {v0, v8}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 127
    const-string/jumbo v20, "MPLTrack"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "ignore file header infomation: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 163
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v8    # "header":Ljava/lang/String;
    .end local v15    # "r":Ljava/io/Reader;
    :catch_0
    move-exception v6

    .line 164
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v20, "MPLTrack"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "subtitle data is not UTF-8 encoded: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_2
    :goto_1
    return-void

    .line 131
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "header":Ljava/lang/String;
    .restart local v15    # "r":Ljava/io/Reader;
    :cond_3
    :try_start_1
    const-string/jumbo v20, "^\\[\\d+\\]\\[\\d+\\].*"

    move-object/from16 v0, v20

    invoke-static {v0, v8}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 132
    new-instance v5, Landroid/media/TextTrackCue;

    invoke-direct {v5}, Landroid/media/TextTrackCue;-><init>()V

    .line 133
    .local v5, "cue":Landroid/media/TextTrackCue;
    const-string/jumbo v20, "\\]"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 134
    .local v18, "startEnd":[Ljava/lang/String;
    const/16 v20, 0x0

    aget-object v20, v18, v20

    const-string/jumbo v21, "\\["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    aget-object v20, v20, v21

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 135
    .local v19, "startFrameNo":I
    const/16 v20, 0x1

    aget-object v20, v18, v20

    const-string/jumbo v21, "\\["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    aget-object v20, v20, v21

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 137
    .local v7, "endFrameNo":I
    move/from16 v0, v19

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x1e

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    iput-wide v0, v5, Landroid/media/TextTrackCue;->mStartTimeMs:J

    .line 138
    mul-int/lit16 v0, v7, 0x3e8

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x1e

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    iput-wide v0, v5, Landroid/media/TextTrackCue;->mEndTimeMs:J

    .line 139
    move-wide/from16 v0, p3

    iput-wide v0, v5, Landroid/media/TextTrackCue;->mRunID:J

    .line 140
    sget-boolean v20, Landroid/media/MPLTrack;->DEBUG:Z

    if-eqz v20, :cond_4

    const-string/jumbo v20, "MPLTrack"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Starttime = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-wide v0, v5, Landroid/media/TextTrackCue;->mStartTimeMs:J

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", Endtime = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-wide v0, v5, Landroid/media/TextTrackCue;->mEndTimeMs:J

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_4
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    aget-object v16, v18, v20

    .line 143
    .local v16, "s":Ljava/lang/String;
    sget-boolean v20, Landroid/media/MPLTrack;->DEBUG:Z

    if-eqz v20, :cond_5

    const-string/jumbo v20, "MPLTrack"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Text: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_5
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v14, "paragraph":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    const/4 v9, 0x0

    .line 149
    .local v9, "i":I
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [[Landroid/media/TextTrackCueSpan;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v5, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 150
    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v14, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v0, v5, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    .line 151
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "line$iterator":Ljava/util/Iterator;
    move v10, v9

    .end local v9    # "i":I
    .local v10, "i":I
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 152
    .local v12, "line":Ljava/lang/String;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Landroid/media/TextTrackCueSpan;

    move-object/from16 v17, v0

    .line 153
    new-instance v20, Landroid/media/TextTrackCueSpan;

    const-wide/16 v22, -0x1

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-direct {v0, v12, v1, v2}, Landroid/media/TextTrackCueSpan;-><init>(Ljava/lang/String;J)V

    const/16 v21, 0x0

    aput-object v20, v17, v21

    .line 155
    .local v17, "span":[Landroid/media/TextTrackCueSpan;
    iget-object v0, v5, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v12, v20, v10

    .line 156
    iget-object v0, v5, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    move-object/from16 v20, v0

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "i":I
    .restart local v9    # "i":I
    aput-object v17, v20, v10

    move v10, v9

    .end local v9    # "i":I
    .restart local v10    # "i":I
    goto :goto_2

    .line 159
    .end local v12    # "line":Ljava/lang/String;
    .end local v17    # "span":[Landroid/media/TextTrackCueSpan;
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/MPLTrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 165
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v5    # "cue":Landroid/media/TextTrackCue;
    .end local v7    # "endFrameNo":I
    .end local v8    # "header":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v13    # "line$iterator":Ljava/util/Iterator;
    .end local v14    # "paragraph":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "r":Ljava/io/Reader;
    .end local v16    # "s":Ljava/lang/String;
    .end local v18    # "startEnd":[Ljava/lang/String;
    .end local v19    # "startFrameNo":I
    :catch_1
    move-exception v11

    .line 167
    .local v11, "ioe":Ljava/io/IOException;
    const-string/jumbo v20, "MPLTrack"

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
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
    .line 173
    .local p1, "activeCues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    invoke-virtual {p0}, Landroid/media/MPLTrack;->getRenderingWidget()Landroid/media/WebVttRenderingWidget;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 174
    invoke-super {p0, p1}, Landroid/media/WebVttTrack;->updateView(Ljava/util/Vector;)V

    .line 175
    return-void

    .line 178
    :cond_0
    iget-object v9, p0, Landroid/media/MPLTrack;->mEventHandler:Landroid/os/Handler;

    if-nez v9, :cond_1

    .line 179
    return-void

    .line 182
    :cond_1
    const/4 v0, 0x0

    .line 184
    .local v0, "_":I
    invoke-virtual {p1}, Ljava/util/Vector;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 185
    sget-boolean v9, Landroid/media/MPLTrack;->DEBUG:Z

    if-eqz v9, :cond_2

    const-string/jumbo v9, "MPLTrack"

    const-string/jumbo v10, "activeCues is Empty"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_2
    iget-object v9, p0, Landroid/media/MPLTrack;->mEventHandler:Landroid/os/Handler;

    const/16 v10, 0x63

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 187
    .local v5, "msg":Landroid/os/Message;
    iget-object v9, p0, Landroid/media/MPLTrack;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v9, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 190
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

    .line 191
    check-cast v8, Landroid/media/TextTrackCue;

    .line 193
    .local v8, "ttc":Landroid/media/TextTrackCue;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 194
    .local v6, "parcel":Landroid/os/Parcel;
    const/16 v9, 0x66

    invoke-virtual {v6, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    const/4 v9, 0x7

    invoke-virtual {v6, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget-wide v10, v2, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    long-to-int v9, v10

    invoke-virtual {v6, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    const/16 v9, 0x10

    invoke-virtual {v6, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .local v7, "sb":Ljava/lang/StringBuilder;
    iget-object v10, v8, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    const/4 v9, 0x0

    array-length v11, v10

    :goto_1
    if-ge v9, v11, :cond_4

    aget-object v4, v10, v9

    .line 201
    .local v4, "line":Ljava/lang/String;
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0xa

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 204
    .end local v4    # "line":Ljava/lang/String;
    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 205
    .local v1, "buf":[B
    array-length v9, v1

    invoke-virtual {v6, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 208
    iget-object v9, p0, Landroid/media/MPLTrack;->mEventHandler:Landroid/os/Handler;

    const/16 v10, 0x63

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 209
    .restart local v5    # "msg":Landroid/os/Message;
    iget-object v9, p0, Landroid/media/MPLTrack;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v9, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 211
    .end local v1    # "buf":[B
    .end local v2    # "cue":Landroid/media/SubtitleTrack$Cue;
    .end local v5    # "msg":Landroid/os/Message;
    .end local v6    # "parcel":Landroid/os/Parcel;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "ttc":Landroid/media/TextTrackCue;
    :cond_5
    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    .line 172
    return-void
.end method
