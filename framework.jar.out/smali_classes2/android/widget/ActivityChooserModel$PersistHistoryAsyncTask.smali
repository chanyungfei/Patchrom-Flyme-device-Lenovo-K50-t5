.class final Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;
.super Landroid/os/AsyncTask;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PersistHistoryAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ActivityChooserModel;


# direct methods
.method private constructor <init>(Landroid/widget/ActivityChooserModel;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ActivityChooserModel;

    .prologue
    .line 1137
    iput-object p1, p0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ActivityChooserModel;Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ActivityChooserModel;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;-><init>(Landroid/widget/ActivityChooserModel;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1141
    invoke-virtual {p0, p1}, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 18
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1142
    const/4 v14, 0x0

    aget-object v5, p1, v14

    check-cast v5, Ljava/util/List;

    .line 1143
    .local v5, "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    const/4 v14, 0x1

    aget-object v6, p1, v14

    check-cast v6, Ljava/lang/String;

    .line 1145
    .local v6, "hostoryFileName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1148
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-static {v14}, Landroid/widget/ActivityChooserModel;->-get2(Landroid/widget/ActivityChooserModel;)Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v6, v15}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1154
    .local v4, "fos":Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v13

    .line 1157
    .local v13, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const/4 v14, 0x0

    :try_start_1
    invoke-interface {v13, v4, v14}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1158
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v14}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1159
    const-string/jumbo v14, "historical-records"

    const/4 v15, 0x0

    invoke-interface {v13, v15, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1161
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    .line 1162
    .local v12, "recordCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v12, :cond_0

    .line 1163
    const/4 v14, 0x0

    invoke-interface {v5, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    .line 1164
    .local v11, "record":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    const-string/jumbo v14, "historical-record"

    const/4 v15, 0x0

    invoke-interface {v13, v15, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1165
    const-string/jumbo v14, "activity"

    .line 1166
    iget-object v15, v11, Landroid/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v15

    .line 1165
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v13, v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1167
    const-string/jumbo v14, "time"

    iget-wide v0, v11, Landroid/widget/ActivityChooserModel$HistoricalRecord;->time:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v13, v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1168
    const-string/jumbo v14, "weight"

    iget v15, v11, Landroid/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v13, v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1169
    const-string/jumbo v14, "historical-record"

    const/4 v15, 0x0

    invoke-interface {v13, v15, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1162
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1149
    .end local v7    # "i":I
    .end local v11    # "record":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    .end local v12    # "recordCount":I
    .end local v13    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .local v4, "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .line 1150
    .local v3, "fnfe":Ljava/io/FileNotFoundException;
    invoke-static {}, Landroid/widget/ActivityChooserModel;->-get1()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Error writing historical recrod file: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1151
    const/4 v14, 0x0

    return-object v14

    .line 1175
    .end local v3    # "fnfe":Ljava/io/FileNotFoundException;
    .local v4, "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "i":I
    .restart local v12    # "recordCount":I
    .restart local v13    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :cond_0
    :try_start_2
    const-string/jumbo v14, "historical-records"

    const/4 v15, 0x0

    invoke-interface {v13, v15, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1176
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1188
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    const/4 v15, 0x1

    invoke-static {v14, v15}, Landroid/widget/ActivityChooserModel;->-set0(Landroid/widget/ActivityChooserModel;Z)Z

    .line 1189
    if-eqz v4, :cond_1

    .line 1191
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1197
    .end local v7    # "i":I
    .end local v12    # "recordCount":I
    :cond_1
    :goto_1
    const/4 v14, 0x0

    return-object v14

    .line 1192
    .restart local v7    # "i":I
    .restart local v12    # "recordCount":I
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    goto :goto_1

    .line 1185
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "i":I
    .end local v12    # "recordCount":I
    :catch_2
    move-exception v9

    .line 1186
    .local v9, "ioe":Ljava/io/IOException;
    :try_start_4
    invoke-static {}, Landroid/widget/ActivityChooserModel;->-get1()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Error writing historical recrod file: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/widget/ActivityChooserModel;->-get3(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1188
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    const/4 v15, 0x1

    invoke-static {v14, v15}, Landroid/widget/ActivityChooserModel;->-set0(Landroid/widget/ActivityChooserModel;Z)Z

    .line 1189
    if-eqz v4, :cond_1

    .line 1191
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 1192
    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 1183
    .end local v2    # "e":Ljava/io/IOException;
    .end local v9    # "ioe":Ljava/io/IOException;
    :catch_4
    move-exception v10

    .line 1184
    .local v10, "ise":Ljava/lang/IllegalStateException;
    :try_start_6
    invoke-static {}, Landroid/widget/ActivityChooserModel;->-get1()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Error writing historical recrod file: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/widget/ActivityChooserModel;->-get3(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1188
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    const/4 v15, 0x1

    invoke-static {v14, v15}, Landroid/widget/ActivityChooserModel;->-set0(Landroid/widget/ActivityChooserModel;Z)Z

    .line 1189
    if-eqz v4, :cond_1

    .line 1191
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_1

    .line 1192
    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 1181
    .end local v2    # "e":Ljava/io/IOException;
    .end local v10    # "ise":Ljava/lang/IllegalStateException;
    :catch_6
    move-exception v8

    .line 1182
    .local v8, "iae":Ljava/lang/IllegalArgumentException;
    :try_start_8
    invoke-static {}, Landroid/widget/ActivityChooserModel;->-get1()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Error writing historical recrod file: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/widget/ActivityChooserModel;->-get3(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1188
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    const/4 v15, 0x1

    invoke-static {v14, v15}, Landroid/widget/ActivityChooserModel;->-set0(Landroid/widget/ActivityChooserModel;Z)Z

    .line 1189
    if-eqz v4, :cond_1

    .line 1191
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto/16 :goto_1

    .line 1192
    :catch_7
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_1

    .line 1187
    .end local v2    # "e":Ljava/io/IOException;
    .end local v8    # "iae":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v14

    .line 1188
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    const/16 v16, 0x1

    invoke-static/range {v15 .. v16}, Landroid/widget/ActivityChooserModel;->-set0(Landroid/widget/ActivityChooserModel;Z)Z

    .line 1189
    if-eqz v4, :cond_2

    .line 1191
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 1187
    :cond_2
    :goto_2
    throw v14

    .line 1192
    :catch_8
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_2
.end method
