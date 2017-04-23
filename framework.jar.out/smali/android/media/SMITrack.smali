.class Landroid/media/SMITrack;
.super Landroid/media/WebVttTrack;
.source "SMIRenderer.java"


# static fields
.field private static final KEY_LOCAL_SETTING:I = 0x66

.field private static final KEY_START_TIME:I = 0x7

.field private static final KEY_STRUCT_TEXT:I = 0x10

.field private static final MEDIA_TIMED_TEXT:I = 0x63

.field private static final TAG:Ljava/lang/String; = "SMITrack"


# instance fields
.field private final mEventHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V
    .locals 1
    .param p1, "renderingWidget"    # Landroid/media/WebVttRenderingWidget;
    .param p2, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Landroid/media/WebVttTrack;-><init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/SMITrack;->mEventHandler:Landroid/os/Handler;

    .line 76
    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Landroid/media/MediaFormat;)V
    .locals 1
    .param p1, "eventHandler"    # Landroid/os/Handler;
    .param p2, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Landroid/media/WebVttTrack;-><init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V

    .line 83
    iput-object p1, p0, Landroid/media/SMITrack;->mEventHandler:Landroid/os/Handler;

    .line 81
    return-void
.end method


# virtual methods
.method protected onData(Landroid/media/SubtitleData;)V
    .locals 14
    .param p1, "data"    # Landroid/media/SubtitleData;

    .prologue
    const/4 v8, 0x0

    .line 89
    :try_start_0
    new-instance v0, Landroid/media/TextTrackCue;

    invoke-direct {v0}, Landroid/media/TextTrackCue;-><init>()V

    .line 90
    .local v0, "cue":Landroid/media/TextTrackCue;
    invoke-virtual {p1}, Landroid/media/SubtitleData;->getStartTimeUs()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    iput-wide v10, v0, Landroid/media/TextTrackCue;->mStartTimeMs:J

    .line 91
    invoke-virtual {p1}, Landroid/media/SubtitleData;->getStartTimeUs()J

    move-result-wide v10

    invoke-virtual {p1}, Landroid/media/SubtitleData;->getDurationUs()J

    move-result-wide v12

    add-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    iput-wide v10, v0, Landroid/media/TextTrackCue;->mEndTimeMs:J

    .line 94
    new-instance v6, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/media/SubtitleData;->getData()[B

    move-result-object v9

    const-string/jumbo v10, "UTF-8"

    invoke-direct {v6, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 95
    .local v6, "paragraph":Ljava/lang/String;
    const-string/jumbo v9, "\\r?\\n"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 96
    .local v5, "lines":[Ljava/lang/String;
    array-length v9, v5

    new-array v9, v9, [[Landroid/media/TextTrackCueSpan;

    iput-object v9, v0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 98
    const/4 v2, 0x0

    .line 99
    .local v2, "i":I
    array-length v9, v5

    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-ge v8, v9, :cond_0

    aget-object v4, v5, v8

    .line 100
    .local v4, "line":Ljava/lang/String;
    const/4 v10, 0x1

    new-array v7, v10, [Landroid/media/TextTrackCueSpan;

    .line 101
    new-instance v10, Landroid/media/TextTrackCueSpan;

    const-wide/16 v12, -0x1

    invoke-direct {v10, v4, v12, v13}, Landroid/media/TextTrackCueSpan;-><init>(Ljava/lang/String;J)V

    const/4 v11, 0x0

    aput-object v10, v7, v11

    .line 103
    .local v7, "span":[Landroid/media/TextTrackCueSpan;
    iget-object v10, v0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aput-object v7, v10, v3

    .line 99
    add-int/lit8 v8, v8, 0x1

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 106
    .end local v4    # "line":Ljava/lang/String;
    .end local v7    # "span":[Landroid/media/TextTrackCueSpan;
    :cond_0
    invoke-virtual {p0, v0}, Landroid/media/SMITrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v0    # "cue":Landroid/media/TextTrackCue;
    .end local v3    # "i":I
    .end local v5    # "lines":[Ljava/lang/String;
    .end local v6    # "paragraph":Ljava/lang/String;
    :goto_1
    return-void

    .line 107
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v8, "SMITrack"

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
    .locals 34
    .param p1, "data"    # [B
    .param p2, "eos"    # Z
    .param p3, "runID"    # J

    .prologue
    .line 114
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v17, "paragraph":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v26, ""

    .line 116
    .local v26, "stringData":Ljava/lang/String;
    const/16 v24, 0x0

    .line 117
    .local v24, "startFlag":Z
    const/16 v25, 0x0

    .line 118
    .local v25, "started":Z
    const/16 v28, 0x0

    .line 119
    .local v28, "tmpStartFlag":Z
    const/16 v29, 0x0

    .line 120
    .local v29, "tmpStarted":Z
    const-string/jumbo v20, ""

    .line 121
    .local v20, "smiTemp":Ljava/lang/String;
    const-string/jumbo v31, "<SYNC Start=(.*?)><P Class=(.*?)>"

    .line 122
    const/16 v32, 0x2

    .line 121
    invoke-static/range {v31 .. v32}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v18

    .line 123
    .local v18, "patternstart":Ljava/util/regex/Pattern;
    const/4 v14, 0x0

    .line 124
    .local v14, "matcher":Ljava/util/regex/Matcher;
    const-string/jumbo v31, "><P Class=(.*?)>"

    const/16 v32, 0x2

    invoke-static/range {v31 .. v32}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v27

    .line 126
    .local v27, "time":Ljava/util/regex/Pattern;
    const-string/jumbo v31, "<SYNC Start=//d+><P Class=//w+>?"

    const/16 v32, 0x2

    .line 125
    invoke-static/range {v31 .. v32}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v21

    .line 127
    .local v21, "spaceP":Ljava/util/regex/Pattern;
    const/16 v22, 0x0

    .line 130
    .local v22, "spacematcher":Ljava/util/regex/Matcher;
    :try_start_0
    new-instance v19, Ljava/io/InputStreamReader;

    new-instance v31, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string/jumbo v32, "UTF-8"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 131
    .local v19, "r":Ljava/io/Reader;
    new-instance v4, Ljava/io/BufferedReader;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 132
    .local v4, "br":Ljava/io/BufferedReader;
    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    .line 133
    .local v30, "tmpTS":Ljava/lang/Integer;
    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 136
    .end local v14    # "matcher":Ljava/util/regex/Matcher;
    .end local v22    # "spacematcher":Ljava/util/regex/Matcher;
    .local v16, "nowTS":Ljava/lang/Integer;
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_4

    .line 137
    const/4 v7, 0x0

    .line 138
    .local v7, "findFirstContent":Z
    const/4 v8, 0x0

    .line 139
    .local v8, "findFirstTS":Z
    new-instance v5, Landroid/media/TextTrackCue;

    invoke-direct {v5}, Landroid/media/TextTrackCue;-><init>()V

    .line 140
    .local v5, "cue":Landroid/media/TextTrackCue;
    if-nez v29, :cond_1

    .line 142
    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 143
    .local v14, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v31

    if-eqz v31, :cond_1

    .line 144
    const/16 v29, 0x1

    .line 145
    const/16 v28, 0x1

    .line 148
    .end local v14    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    if-eqz v28, :cond_0

    .line 149
    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 150
    .restart local v14    # "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v31

    if-eqz v31, :cond_8

    .line 151
    const-string/jumbo v31, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_2

    .line 153
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    const-string/jumbo v31, "SMITrack"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "first subtitle:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string/jumbo v20, ""

    .line 156
    const/4 v7, 0x1

    .line 159
    :cond_2
    const-string/jumbo v31, "="

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v31

    add-int/lit8 v31, v31, 0x1

    const-string/jumbo v32, ">"

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v32

    .line 158
    move-object/from16 v0, v26

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    .line 160
    const/4 v8, 0x1

    .line 161
    const-string/jumbo v31, "SMITrack"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "first timestamp:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v22

    .line 163
    .local v22, "spacematcher":Ljava/util/regex/Matcher;
    invoke-virtual/range {v22 .. v22}, Ljava/util/regex/Matcher;->find()Z

    move-result v31

    if-eqz v31, :cond_3

    .line 164
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "  "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 169
    .end local v22    # "spacematcher":Ljava/util/regex/Matcher;
    :cond_3
    :goto_0
    if-eqz v7, :cond_0

    if-eqz v7, :cond_0

    .line 175
    .end local v5    # "cue":Landroid/media/TextTrackCue;
    .end local v7    # "findFirstContent":Z
    .end local v8    # "findFirstTS":Z
    .end local v14    # "matcher":Ljava/util/regex/Matcher;
    :cond_4
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_c

    .line 176
    new-instance v5, Landroid/media/TextTrackCue;

    invoke-direct {v5}, Landroid/media/TextTrackCue;-><init>()V

    .line 177
    .restart local v5    # "cue":Landroid/media/TextTrackCue;
    if-nez v25, :cond_5

    .line 179
    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 180
    .restart local v14    # "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v31

    if-eqz v31, :cond_5

    .line 181
    const/16 v25, 0x1

    .line 182
    const/16 v24, 0x1

    .line 186
    .end local v14    # "matcher":Ljava/util/regex/Matcher;
    :cond_5
    const/4 v15, 0x0

    .line 187
    .local v15, "needInsertSmi":Z
    if-eqz v24, :cond_7

    .line 189
    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 190
    .restart local v14    # "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v31

    if-eqz v31, :cond_9

    .line 191
    const-string/jumbo v31, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_6

    .line 192
    const/4 v15, 0x1

    .line 195
    :cond_6
    const-string/jumbo v31, "="

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v31

    add-int/lit8 v31, v31, 0x1

    const-string/jumbo v32, ">"

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v32

    .line 194
    move-object/from16 v0, v26

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 196
    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v22

    .line 197
    .restart local v22    # "spacematcher":Ljava/util/regex/Matcher;
    invoke-virtual/range {v22 .. v22}, Ljava/util/regex/Matcher;->find()Z

    move-result v31

    if-eqz v31, :cond_7

    .line 198
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "  "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 205
    .end local v14    # "matcher":Ljava/util/regex/Matcher;
    .end local v22    # "spacematcher":Ljava/util/regex/Matcher;
    :cond_7
    :goto_2
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    iput-wide v0, v5, Landroid/media/TextTrackCue;->mStartTimeMs:J

    .line 206
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    iput-wide v0, v5, Landroid/media/TextTrackCue;->mEndTimeMs:J

    .line 207
    move-object/from16 v30, v16

    .line 208
    const/4 v9, 0x0

    .line 209
    .local v9, "i":I
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v31

    new-array v0, v0, [[Landroid/media/TextTrackCueSpan;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iput-object v0, v5, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 210
    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v31

    check-cast v31, [Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v0, v5, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    .line 211
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "line$iterator":Ljava/util/Iterator;
    move v10, v9

    .end local v9    # "i":I
    .local v10, "i":I
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 212
    .local v12, "line":Ljava/lang/String;
    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Landroid/media/TextTrackCueSpan;

    move-object/from16 v23, v0

    .line 213
    new-instance v31, Landroid/media/TextTrackCueSpan;

    const-wide/16 v32, -0x1

    move-object/from16 v0, v31

    move-wide/from16 v1, v32

    invoke-direct {v0, v12, v1, v2}, Landroid/media/TextTrackCueSpan;-><init>(Ljava/lang/String;J)V

    const/16 v32, 0x0

    aput-object v31, v23, v32

    .line 215
    .local v23, "span":[Landroid/media/TextTrackCueSpan;
    iget-object v0, v5, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    move-object/from16 v31, v0

    aput-object v12, v31, v10

    .line 216
    iget-object v0, v5, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    move-object/from16 v31, v0

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "i":I
    .restart local v9    # "i":I
    aput-object v23, v31, v10

    move v10, v9

    .end local v9    # "i":I
    .restart local v10    # "i":I
    goto :goto_3

    .line 167
    .end local v10    # "i":I
    .end local v12    # "line":Ljava/lang/String;
    .end local v13    # "line$iterator":Ljava/util/Iterator;
    .end local v15    # "needInsertSmi":Z
    .end local v23    # "span":[Landroid/media/TextTrackCueSpan;
    .restart local v7    # "findFirstContent":Z
    .restart local v8    # "findFirstTS":Z
    .restart local v14    # "matcher":Ljava/util/regex/Matcher;
    :cond_8
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static/range {v26 .. v26}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_0

    .line 201
    .end local v7    # "findFirstContent":Z
    .end local v8    # "findFirstTS":Z
    .restart local v15    # "needInsertSmi":Z
    :cond_9
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static/range {v26 .. v26}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_2

    .line 219
    .end local v14    # "matcher":Ljava/util/regex/Matcher;
    .restart local v10    # "i":I
    .restart local v13    # "line$iterator":Ljava/util/Iterator;
    :cond_a
    if-eqz v15, :cond_b

    .line 220
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 221
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    const-string/jumbo v20, ""

    .line 225
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/SMITrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 245
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v5    # "cue":Landroid/media/TextTrackCue;
    .end local v10    # "i":I
    .end local v13    # "line$iterator":Ljava/util/Iterator;
    .end local v15    # "needInsertSmi":Z
    .end local v16    # "nowTS":Ljava/lang/Integer;
    .end local v19    # "r":Ljava/io/Reader;
    .end local v30    # "tmpTS":Ljava/lang/Integer;
    :catch_0
    move-exception v6

    .line 246
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v31, "SMITrack"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "subtitle data is not UTF-8 encoded: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_4
    return-void

    .line 229
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "nowTS":Ljava/lang/Integer;
    .restart local v19    # "r":Ljava/io/Reader;
    .restart local v30    # "tmpTS":Ljava/lang/Integer;
    :cond_c
    :try_start_1
    new-instance v5, Landroid/media/TextTrackCue;

    invoke-direct {v5}, Landroid/media/TextTrackCue;-><init>()V

    .line 230
    .restart local v5    # "cue":Landroid/media/TextTrackCue;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    iput-wide v0, v5, Landroid/media/TextTrackCue;->mStartTimeMs:J

    .line 231
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    iput-wide v0, v5, Landroid/media/TextTrackCue;->mEndTimeMs:J

    .line 232
    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    .line 233
    const/4 v9, 0x0

    .line 234
    .restart local v9    # "i":I
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v31

    new-array v0, v0, [[Landroid/media/TextTrackCueSpan;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iput-object v0, v5, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 235
    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v31

    check-cast v31, [Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v0, v5, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    .line 236
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "line$iterator":Ljava/util/Iterator;
    move v10, v9

    .end local v9    # "i":I
    .restart local v10    # "i":I
    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 237
    .restart local v12    # "line":Ljava/lang/String;
    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Landroid/media/TextTrackCueSpan;

    move-object/from16 v23, v0

    .line 238
    new-instance v31, Landroid/media/TextTrackCueSpan;

    const-wide/16 v32, -0x1

    move-object/from16 v0, v31

    move-wide/from16 v1, v32

    invoke-direct {v0, v12, v1, v2}, Landroid/media/TextTrackCueSpan;-><init>(Ljava/lang/String;J)V

    const/16 v32, 0x0

    aput-object v31, v23, v32

    .line 240
    .restart local v23    # "span":[Landroid/media/TextTrackCueSpan;
    iget-object v0, v5, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    move-object/from16 v31, v0

    aput-object v12, v31, v10

    .line 241
    iget-object v0, v5, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    move-object/from16 v31, v0

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "i":I
    .restart local v9    # "i":I
    aput-object v23, v31, v10

    move v10, v9

    .end local v9    # "i":I
    .restart local v10    # "i":I
    goto :goto_5

    .line 243
    .end local v12    # "line":Ljava/lang/String;
    .end local v23    # "span":[Landroid/media/TextTrackCueSpan;
    :cond_d
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 244
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/SMITrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    .line 247
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v5    # "cue":Landroid/media/TextTrackCue;
    .end local v10    # "i":I
    .end local v13    # "line$iterator":Ljava/util/Iterator;
    .end local v16    # "nowTS":Ljava/lang/Integer;
    .end local v19    # "r":Ljava/io/Reader;
    .end local v30    # "tmpTS":Ljava/lang/Integer;
    :catch_1
    move-exception v11

    .line 249
    .local v11, "ioe":Ljava/io/IOException;
    const-string/jumbo v31, "SMITrack"

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4
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
    .line 255
    .local p1, "activeCues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    invoke-virtual {p0}, Landroid/media/SMITrack;->getRenderingWidget()Landroid/media/WebVttRenderingWidget;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 256
    invoke-super {p0, p1}, Landroid/media/WebVttTrack;->updateView(Ljava/util/Vector;)V

    .line 257
    return-void

    .line 260
    :cond_0
    iget-object v9, p0, Landroid/media/SMITrack;->mEventHandler:Landroid/os/Handler;

    if-nez v9, :cond_1

    .line 261
    return-void

    .line 264
    :cond_1
    const/4 v0, 0x0

    .line 265
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

    .line 266
    check-cast v8, Landroid/media/TextTrackCue;

    .line 268
    .local v8, "ttc":Landroid/media/TextTrackCue;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 269
    .local v6, "parcel":Landroid/os/Parcel;
    const/16 v9, 0x66

    invoke-virtual {v6, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    const/4 v9, 0x7

    invoke-virtual {v6, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    iget-wide v10, v2, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    long-to-int v9, v10

    invoke-virtual {v6, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    const/16 v9, 0x10

    invoke-virtual {v6, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .local v7, "sb":Ljava/lang/StringBuilder;
    iget-object v10, v8, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    const/4 v9, 0x0

    array-length v11, v10

    :goto_1
    if-ge v9, v11, :cond_2

    aget-object v4, v10, v9

    .line 276
    .local v4, "line":Ljava/lang/String;
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0xa

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 275
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 279
    .end local v4    # "line":Ljava/lang/String;
    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 280
    .local v1, "buf":[B
    array-length v9, v1

    invoke-virtual {v6, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 283
    iget-object v9, p0, Landroid/media/SMITrack;->mEventHandler:Landroid/os/Handler;

    const/16 v10, 0x63

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 284
    .local v5, "msg":Landroid/os/Message;
    iget-object v9, p0, Landroid/media/SMITrack;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v9, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 286
    .end local v1    # "buf":[B
    .end local v2    # "cue":Landroid/media/SubtitleTrack$Cue;
    .end local v5    # "msg":Landroid/os/Message;
    .end local v6    # "parcel":Landroid/os/Parcel;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "ttc":Landroid/media/TextTrackCue;
    :cond_3
    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    .line 254
    return-void
.end method
