.class Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;
.super Ljava/lang/Object;
.source "CameraDeviceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RequestLastFrameNumbersHolder"
.end annotation


# instance fields
.field private final mLastRegularFrameNumber:J

.field private final mLastReprocessFrameNumber:J

.field private final mRequestId:I


# direct methods
.method public constructor <init>(IJ)V
    .locals 2
    .param p1, "requestId"    # I
    .param p2, "lastRegularFrameNumber"    # J

    .prologue
    .line 1285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1286
    iput-wide p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mLastRegularFrameNumber:J

    .line 1287
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mLastReprocessFrameNumber:J

    .line 1288
    iput p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mRequestId:I

    .line 1285
    return-void
.end method

.method public constructor <init>(Ljava/util/List;IJ)V
    .locals 11
    .param p2, "requestId"    # I
    .param p3, "lastFrameNumber"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;IJ)V"
        }
    .end annotation

    .prologue
    .line 1245
    .local p1, "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1247
    const-wide/16 v4, -0x1

    .line 1248
    .local v4, "lastRegularFrameNumber":J
    const-wide/16 v6, -0x1

    .line 1249
    .local v6, "lastReprocessFrameNumber":J
    move-wide v0, p3

    .line 1251
    .local v0, "frameNumber":J
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    int-to-long v8, v8

    cmp-long v8, p3, v8

    if-gez v8, :cond_0

    .line 1252
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "lastFrameNumber: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1253
    const-string/jumbo v10, " should be at least "

    .line 1252
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1253
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    .line 1252
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1253
    const-string/jumbo v10, " for the number of "

    .line 1252
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1254
    const-string/jumbo v10, " requests in the list: "

    .line 1252
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1254
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    .line 1252
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1258
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 1259
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CaptureRequest;

    .line 1260
    .local v3, "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1261
    const-wide/16 v8, -0x1

    .line 1260
    cmp-long v8, v6, v8

    if-nez v8, :cond_3

    .line 1262
    move-wide v6, v0

    .line 1268
    :cond_1
    :goto_1
    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-eqz v8, :cond_4

    .line 1269
    const-wide/16 v8, -0x1

    cmp-long v8, v4, v8

    if-eqz v8, :cond_4

    .line 1276
    .end local v3    # "request":Landroid/hardware/camera2/CaptureRequest;
    :cond_2
    iput-wide v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mLastRegularFrameNumber:J

    .line 1277
    iput-wide v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mLastReprocessFrameNumber:J

    .line 1278
    iput p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mRequestId:I

    .line 1246
    return-void

    .line 1263
    .restart local v3    # "request":Landroid/hardware/camera2/CaptureRequest;
    :cond_3
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1264
    const-wide/16 v8, -0x1

    .line 1263
    cmp-long v8, v4, v8

    if-nez v8, :cond_1

    .line 1265
    move-wide v4, v0

    goto :goto_1

    .line 1273
    :cond_4
    const-wide/16 v8, 0x1

    sub-long/2addr v0, v8

    .line 1258
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method


# virtual methods
.method public getLastFrameNumber()J
    .locals 4

    .prologue
    .line 1311
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mLastRegularFrameNumber:J

    iget-wide v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mLastReprocessFrameNumber:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastRegularFrameNumber()J
    .locals 2

    .prologue
    .line 1296
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mLastRegularFrameNumber:J

    return-wide v0
.end method

.method public getLastReprocessFrameNumber()J
    .locals 2

    .prologue
    .line 1304
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mLastReprocessFrameNumber:J

    return-wide v0
.end method

.method public getRequestId()I
    .locals 1

    .prologue
    .line 1318
    iget v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mRequestId:I

    return v0
.end method
