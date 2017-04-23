.class Landroid/media/SSATrack;
.super Landroid/media/WebVttTrack;
.source "SSARenderer.java"


# static fields
.field private static final DEBUG:Z

.field private static final KEY_LOCAL_SETTING:I = 0x66

.field private static final KEY_START_TIME:I = 0x7

.field private static final KEY_STRUCT_TEXT:I = 0x10

.field private static final MEDIA_TIMED_TEXT:I = 0x63

.field private static final TAG:Ljava/lang/String; = "SSATrack"


# instance fields
.field private final mEventHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 71
    const-string/jumbo v0, "SSATrack"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/SSATrack;->DEBUG:Z

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

    iput-object v0, p0, Landroid/media/SSATrack;->mEventHandler:Landroid/os/Handler;

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
    iput-object p1, p0, Landroid/media/SSATrack;->mEventHandler:Landroid/os/Handler;

    .line 79
    return-void
.end method

.method private static parseMs(Ljava/lang/String;)J
    .locals 14
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    .line 217
    sget-boolean v8, Landroid/media/SSATrack;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string/jumbo v8, "SSATrack"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "parseMs in String is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    const-string/jumbo v8, ":"

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 219
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

    .line 220
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

    .line 221
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

    .line 222
    .local v2, "millies":J
    sget-boolean v8, Landroid/media/SSATrack;->DEBUG:Z

    if-eqz v8, :cond_1

    const-string/jumbo v8, "SSATrack"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "hours: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " minutes: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " seconds: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " millies: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_1
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
    invoke-virtual {p0, v0}, Landroid/media/SSATrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z
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
    const-string/jumbo v8, "SSATrack"

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
    .locals 24
    .param p1, "data"    # [B
    .param p2, "eos"    # Z
    .param p3, "runID"    # J

    .prologue
    .line 113
    :try_start_0
    new-instance v19, Ljava/io/InputStreamReader;

    new-instance v21, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string/jumbo v22, "UTF-8"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 114
    .local v19, "r":Ljava/io/Reader;
    new-instance v4, Ljava/io/BufferedReader;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 117
    .local v4, "br":Ljava/io/BufferedReader;
    const/4 v11, 0x0

    .line 118
    .local v11, "hasEvents":Z
    const/4 v10, 0x0

    .line 119
    .local v10, "foundDialogue":Z
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .local v9, "eventStart":Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 121
    const-string/jumbo v21, "[Events]"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 122
    const/4 v11, 0x1

    .line 126
    :cond_1
    const/4 v15, 0x0

    .line 127
    .local v15, "k":I
    :cond_2
    :goto_0
    if-nez v10, :cond_3

    .line 128
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 129
    .local v7, "dialogueStart":Ljava/lang/String;
    if-nez v7, :cond_4

    .line 130
    add-int/lit8 v15, v15, 0x1

    .line 131
    const/16 v21, 0x5

    move/from16 v0, v21

    if-le v15, v0, :cond_2

    .line 140
    .end local v7    # "dialogueStart":Ljava/lang/String;
    :cond_3
    if-eqz v10, :cond_6

    .line 141
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "dialogueStart":Ljava/lang/String;
    if-eqz v7, :cond_6

    .line 142
    new-instance v5, Landroid/media/TextTrackCue;

    invoke-direct {v5}, Landroid/media/TextTrackCue;-><init>()V

    .line 144
    .local v5, "cue":Landroid/media/TextTrackCue;
    const-string/jumbo v21, ","

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 145
    .local v6, "diaContent":[Ljava/lang/String;
    const/16 v21, 0x1

    aget-object v21, v6, v21

    invoke-static/range {v21 .. v21}, Landroid/media/SSATrack;->parseMs(Ljava/lang/String;)J

    move-result-wide v22

    move-wide/from16 v0, v22

    iput-wide v0, v5, Landroid/media/TextTrackCue;->mStartTimeMs:J

    .line 146
    const/16 v21, 0x2

    aget-object v21, v6, v21

    invoke-static/range {v21 .. v21}, Landroid/media/SSATrack;->parseMs(Ljava/lang/String;)J

    move-result-wide v22

    move-wide/from16 v0, v22

    iput-wide v0, v5, Landroid/media/TextTrackCue;->mEndTimeMs:J

    .line 147
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v18, "paragraph":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v21, 0x9

    aget-object v21, v6, v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    const/4 v12, 0x0

    .line 151
    .local v12, "i":I
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [[Landroid/media/TextTrackCueSpan;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-object v0, v5, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 152
    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v0, v5, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    .line 153
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "line$iterator":Ljava/util/Iterator;
    move v13, v12

    .end local v12    # "i":I
    .local v13, "i":I
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 154
    .local v16, "line":Ljava/lang/String;
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Landroid/media/TextTrackCueSpan;

    move-object/from16 v20, v0

    .line 155
    new-instance v21, Landroid/media/TextTrackCueSpan;

    const-wide/16 v22, -0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    move-wide/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/media/TextTrackCueSpan;-><init>(Ljava/lang/String;J)V

    const/16 v22, 0x0

    aput-object v21, v20, v22

    .line 157
    .local v20, "span":[Landroid/media/TextTrackCueSpan;
    iget-object v0, v5, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v16, v21, v13

    .line 158
    iget-object v0, v5, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    move-object/from16 v21, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "i":I
    .restart local v12    # "i":I
    aput-object v20, v21, v13

    move v13, v12

    .end local v12    # "i":I
    .restart local v13    # "i":I
    goto :goto_2

    .line 135
    .end local v5    # "cue":Landroid/media/TextTrackCue;
    .end local v6    # "diaContent":[Ljava/lang/String;
    .end local v13    # "i":I
    .end local v16    # "line":Ljava/lang/String;
    .end local v17    # "line$iterator":Ljava/util/Iterator;
    .end local v18    # "paragraph":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "span":[Landroid/media/TextTrackCueSpan;
    :cond_4
    const-string/jumbo v21, "Dialogue:"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 136
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 161
    .restart local v5    # "cue":Landroid/media/TextTrackCue;
    .restart local v6    # "diaContent":[Ljava/lang/String;
    .restart local v13    # "i":I
    .restart local v17    # "line$iterator":Ljava/util/Iterator;
    .restart local v18    # "paragraph":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/SSATrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 165
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v5    # "cue":Landroid/media/TextTrackCue;
    .end local v6    # "diaContent":[Ljava/lang/String;
    .end local v7    # "dialogueStart":Ljava/lang/String;
    .end local v9    # "eventStart":Ljava/lang/String;
    .end local v10    # "foundDialogue":Z
    .end local v11    # "hasEvents":Z
    .end local v13    # "i":I
    .end local v15    # "k":I
    .end local v17    # "line$iterator":Ljava/util/Iterator;
    .end local v18    # "paragraph":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "r":Ljava/io/Reader;
    :catch_0
    move-exception v8

    .line 166
    .local v8, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v21, "SSATrack"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "subtitle data is not UTF-8 encoded: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v8    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_6
    :goto_3
    return-void

    .line 167
    :catch_1
    move-exception v14

    .line 169
    .local v14, "ioe":Ljava/io/IOException;
    const-string/jumbo v21, "SSATrack"

    invoke-virtual {v14}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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
    .line 175
    .local p1, "activeCues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    invoke-virtual {p0}, Landroid/media/SSATrack;->getRenderingWidget()Landroid/media/WebVttRenderingWidget;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 176
    invoke-super {p0, p1}, Landroid/media/WebVttTrack;->updateView(Ljava/util/Vector;)V

    .line 177
    return-void

    .line 180
    :cond_0
    iget-object v9, p0, Landroid/media/SSATrack;->mEventHandler:Landroid/os/Handler;

    if-nez v9, :cond_1

    .line 181
    return-void

    .line 184
    :cond_1
    const/4 v0, 0x0

    .line 186
    .local v0, "_":I
    invoke-virtual {p1}, Ljava/util/Vector;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 187
    sget-boolean v9, Landroid/media/SSATrack;->DEBUG:Z

    if-eqz v9, :cond_2

    const-string/jumbo v9, "SSATrack"

    const-string/jumbo v10, "activeCues is Empty"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_2
    iget-object v9, p0, Landroid/media/SSATrack;->mEventHandler:Landroid/os/Handler;

    const/16 v10, 0x63

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 189
    .local v5, "msg":Landroid/os/Message;
    iget-object v9, p0, Landroid/media/SSATrack;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v9, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 192
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

    .line 193
    check-cast v8, Landroid/media/TextTrackCue;

    .line 195
    .local v8, "ttc":Landroid/media/TextTrackCue;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 196
    .local v6, "parcel":Landroid/os/Parcel;
    const/16 v9, 0x66

    invoke-virtual {v6, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    const/4 v9, 0x7

    invoke-virtual {v6, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget-wide v10, v2, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    long-to-int v9, v10

    invoke-virtual {v6, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    const/16 v9, 0x10

    invoke-virtual {v6, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .local v7, "sb":Ljava/lang/StringBuilder;
    iget-object v10, v8, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    const/4 v9, 0x0

    array-length v11, v10

    :goto_1
    if-ge v9, v11, :cond_4

    aget-object v4, v10, v9

    .line 203
    .local v4, "line":Ljava/lang/String;
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0xa

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 206
    .end local v4    # "line":Ljava/lang/String;
    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 207
    .local v1, "buf":[B
    array-length v9, v1

    invoke-virtual {v6, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 210
    iget-object v9, p0, Landroid/media/SSATrack;->mEventHandler:Landroid/os/Handler;

    const/16 v10, 0x63

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 211
    .restart local v5    # "msg":Landroid/os/Message;
    iget-object v9, p0, Landroid/media/SSATrack;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v9, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 213
    .end local v1    # "buf":[B
    .end local v2    # "cue":Landroid/media/SubtitleTrack$Cue;
    .end local v5    # "msg":Landroid/os/Message;
    .end local v6    # "parcel":Landroid/os/Parcel;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "ttc":Landroid/media/TextTrackCue;
    :cond_5
    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    .line 174
    return-void
.end method
