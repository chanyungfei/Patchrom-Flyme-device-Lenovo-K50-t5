.class public Lcom/mediatek/geocoding/GeoCodingQuery;
.super Ljava/lang/Object;
.source "GeoCodingQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;
    }
.end annotation


# static fields
.field private static final DBFilePath:Ljava/lang/String; = "/system/etc/geocoding.db"

.field private static final LOG_TAG:Ljava/lang/String; = "GeoCodingQuery"

.field private static final NumberHeadWithIDToByteFilePath:Ljava/lang/String; = "/system/etc/NumberHeadWithIDToByte"

.field private static mInstanceObjectSync:Ljava/lang/Object;

.field private static myInstance:Lcom/mediatek/geocoding/GeoCodingQuery;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbHelper:Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

.field private mIntBuffer:Ljava/nio/IntBuffer;

.field private mIsDBReady:Z

.field private mRandomAccessFile:Ljava/io/RandomAccessFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/geocoding/GeoCodingQuery;->mInstanceObjectSync:Ljava/lang/Object;

    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/geocoding/GeoCodingQuery;->myInstance:Lcom/mediatek/geocoding/GeoCodingQuery;

    .line 59
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDbHelper:Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mIsDBReady:Z

    .line 65
    iput-object v1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mContext:Landroid/content/Context;

    .line 70
    iput-object v1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    .line 71
    iput-object v1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mIntBuffer:Ljava/nio/IntBuffer;

    .line 74
    iput-object p1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mContext:Landroid/content/Context;

    .line 75
    invoke-direct {p0, p1}, Lcom/mediatek/geocoding/GeoCodingQuery;->openDatabase(Landroid/content/Context;)V

    .line 76
    invoke-direct {p0}, Lcom/mediatek/geocoding/GeoCodingQuery;->openNumberHeadWithIDToByteFile()V

    .line 73
    return-void
.end method

.method private binarySearchNumberHead(I)I
    .locals 5
    .param p1, "target"    # I

    .prologue
    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, "low":I
    iget-object v4, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mIntBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v4}, Ljava/nio/IntBuffer;->limit()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 238
    .local v3, "upper":I
    :goto_0
    if-gt v0, v3, :cond_2

    .line 239
    add-int v4, v0, v3

    div-int/lit8 v1, v4, 0x2

    .line 240
    .local v1, "mid":I
    iget-object v4, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mIntBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v4, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    div-int/lit16 v2, v4, 0x3e8

    .line 241
    .local v2, "nNumberHead":I
    if-ge v2, p1, :cond_0

    .line 242
    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    .line 243
    :cond_0
    if-le v2, p1, :cond_1

    .line 244
    add-int/lit8 v3, v1, -0x1

    goto :goto_0

    .line 246
    :cond_1
    return v1

    .line 249
    .end local v1    # "mid":I
    .end local v2    # "nNumberHead":I
    :cond_2
    const/4 v4, -0x1

    return v4
.end method

.method private canQuery()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mIsDBReady:Z

    return v0
.end method

.method private closeDatabase()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 204
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDbHelper:Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDbHelper:Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

    invoke-virtual {v1}, Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :cond_0
    :goto_0
    iput-object v3, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDbHelper:Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

    .line 212
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mIsDBReady:Z

    .line 202
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v1, "GeoCodingQuery"

    const-string/jumbo v2, "Failed to close GeoCoding database!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mediatek/geocoding/GeoCodingQuery;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    sget-object v1, Lcom/mediatek/geocoding/GeoCodingQuery;->mInstanceObjectSync:Ljava/lang/Object;

    monitor-enter v1

    .line 89
    :try_start_0
    sget-object v0, Lcom/mediatek/geocoding/GeoCodingQuery;->myInstance:Lcom/mediatek/geocoding/GeoCodingQuery;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/mediatek/geocoding/GeoCodingQuery;

    invoke-direct {v0, p0}, Lcom/mediatek/geocoding/GeoCodingQuery;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/geocoding/GeoCodingQuery;->myInstance:Lcom/mediatek/geocoding/GeoCodingQuery;

    .line 91
    const-string/jumbo v0, "GeoCodingQuery"

    const-string/jumbo v2, "getInstance(): myInstance is created"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 94
    sget-object v0, Lcom/mediatek/geocoding/GeoCodingQuery;->myInstance:Lcom/mediatek/geocoding/GeoCodingQuery;

    return-object v0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private openDatabase(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 187
    :try_start_0
    const-string/jumbo v1, "GeoCodingQuery"

    const-string/jumbo v2, "Open GeoCoding database."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/system/etc/geocoding.db"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    new-instance v1, Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;-><init>(Lcom/mediatek/geocoding/GeoCodingQuery;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDbHelper:Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

    .line 190
    iget-object v1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDbHelper:Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

    invoke-virtual {v1}, Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 191
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mIsDBReady:Z

    .line 185
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/geocoding/GeoCodingQuery;->closeDatabase()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/sql/SQLException;
    const-string/jumbo v1, "GeoCodingQuery"

    const-string/jumbo v2, "Failed to open GeoCoding database!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-direct {p0}, Lcom/mediatek/geocoding/GeoCodingQuery;->closeDatabase()V

    goto :goto_0
.end method

.method private openNumberHeadWithIDToByteFile()V
    .locals 9

    .prologue
    .line 217
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "/system/etc/NumberHeadWithIDToByte"

    const-string/jumbo v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    .line 218
    iget-object v0, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    .line 219
    .local v4, "nCount":J
    iget-object v0, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v8

    .line 220
    .local v8, "mappedByteBuffer":Ljava/nio/MappedByteBuffer;
    invoke-virtual {v8}, Ljava/nio/MappedByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mIntBuffer:Ljava/nio/IntBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .end local v4    # "nCount":J
    .end local v8    # "mappedByteBuffer":Ljava/nio/MappedByteBuffer;
    :cond_0
    :goto_0
    return-void

    .line 221
    :catch_0
    move-exception v6

    .line 222
    .local v6, "e":Ljava/io/IOException;
    const-string/jumbo v0, "GeoCodingQuery"

    const-string/jumbo v1, "Failed to open NumberHead file!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 225
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 227
    :catch_1
    move-exception v7

    .line 228
    .local v7, "e1":Ljava/io/IOException;
    const-string/jumbo v0, "GeoCodingQuery"

    const-string/jumbo v1, "Failed to close NumberHead file!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public queryByNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 110
    const-string/jumbo v10, ""

    .line 114
    .local v10, "returnValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDbHelper:Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

    if-nez v13, :cond_0

    .line 115
    const-string/jumbo v13, "GeoCodingQuery"

    const-string/jumbo v14, "Database is not opened !"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-object v10

    .line 119
    :cond_0
    const-string/jumbo v13, "GeoCodingQuery"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "number = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string/jumbo v13, " "

    const-string/jumbo v14, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 122
    .local v9, "queryNumber":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v8

    .line 111
    .local v8, "numberTotalLength":I
    const/16 v13, 0xb

    .line 123
    if-ge v8, v13, :cond_1

    .line 124
    const-string/jumbo v13, "GeoCodingQuery"

    const-string/jumbo v14, "The length of dial number is less than 11 !"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-object v10

    .line 128
    :cond_1
    const-string/jumbo v13, "+"

    invoke-virtual {v9, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    const-string/jumbo v13, "00"

    invoke-virtual {v9, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 130
    :cond_2
    const-string/jumbo v13, "+86"

    invoke-virtual {v9, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string/jumbo v13, "0086"

    invoke-virtual {v9, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 153
    :cond_3
    add-int/lit8 v12, v8, -0xb

    .line 154
    .local v12, "startIndex":I
    add-int/lit8 v5, v8, -0x4

    .line 155
    .local v5, "endIndex":I
    invoke-virtual {v9, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 156
    const-string/jumbo v13, "GeoCodingQuery"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Query number = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v6, 0x0

    .line 157
    .local v6, "i":I
    :goto_0
    const/4 v13, 0x7

    .line 159
    if-ge v6, v13, :cond_a

    .line 161
    invoke-virtual {v9, v6}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x30

    if-lt v13, v14, :cond_4

    invoke-virtual {v9, v6}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x39

    if-le v13, v14, :cond_9

    .line 162
    :cond_4
    return-object v10

    .line 131
    .end local v5    # "endIndex":I
    .end local v6    # "i":I
    .end local v12    # "startIndex":I
    :cond_5
    const-string/jumbo v13, "GeoCodingQuery"

    const-string/jumbo v14, "The dial number is a international number and didn\'t start with +86!"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-object v10

    .line 136
    :cond_6
    const/4 v2, 0x0

    .line 137
    .local v2, "countryIso":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/geocoding/GeoCodingQuery;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "country_detector"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/CountryDetector;

    .line 138
    .local v4, "detector":Landroid/location/CountryDetector;
    if-eqz v4, :cond_7

    .line 139
    invoke-virtual {v4}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v1

    .line 140
    .local v1, "country":Landroid/location/Country;
    if-eqz v1, :cond_7

    .line 141
    invoke-virtual {v1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v2

    .line 144
    .end local v1    # "country":Landroid/location/Country;
    .end local v2    # "countryIso":Ljava/lang/String;
    :cond_7
    if-nez v2, :cond_8

    .line 145
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/geocoding/GeoCodingQuery;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget-object v13, v13, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v13}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 147
    :cond_8
    const-string/jumbo v13, "cn"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 148
    const-string/jumbo v13, "GeoCodingQuery"

    const-string/jumbo v14, "The dial number is not at CN!"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-object v10

    .line 159
    .end local v4    # "detector":Landroid/location/CountryDetector;
    .restart local v5    # "endIndex":I
    .restart local v6    # "i":I
    .restart local v12    # "startIndex":I
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 166
    :cond_a
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/geocoding/GeoCodingQuery;->binarySearchNumberHead(I)I

    move-result v7

    .line 167
    .local v7, "index":I
    const/4 v13, -0x1

    if-eq v13, v7, :cond_d

    .line 168
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Select city_name from city where _id = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/geocoding/GeoCodingQuery;->mIntBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v14, v7}, Ljava/nio/IntBuffer;->get(I)I

    move-result v14

    rem-int/lit16 v14, v14, 0x3e8

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 169
    .local v11, "sqlCmd":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v14, 0x0

    invoke-virtual {v13, v11, v14}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 171
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_b

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v13

    if-lez v13, :cond_b

    .line 172
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 173
    const/4 v13, 0x0

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 176
    :cond_b
    if-eqz v3, :cond_c

    .line 177
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 182
    .end local v3    # "cursor":Landroid/database/Cursor;
    .end local v11    # "sqlCmd":Ljava/lang/String;
    :cond_c
    :goto_1
    return-object v10

    .line 180
    :cond_d
    const-string/jumbo v13, "GeoCodingQuery"

    const-string/jumbo v14, "The query number is not found in \'NumberHeadWithIDToByte\' database!"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
