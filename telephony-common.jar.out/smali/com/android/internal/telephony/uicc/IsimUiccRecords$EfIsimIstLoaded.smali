.class Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;
.super Ljava/lang/Object;
.source "IsimUiccRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IsimUiccRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfIsimIstLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)V

    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    const-string/jumbo v0, "EF_ISIM_IST"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 350
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    .line 351
    .local v0, "data":[B
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->-set3(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Ljava/lang/String;)Ljava/lang/String;

    .line 356
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-instance v2, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable;

    invoke-direct {v2, v0}, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable;-><init>([B)V

    iput-object v2, v1, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimServiceTable:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable;

    .line 357
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IST: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    iget-object v3, v3, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimServiceTable:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    .line 359
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    iget-object v1, v1, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimServiceTable:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable;

    sget-object v2, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->PCSCF_ADDRESS:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable;->isAvailable(Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    iget-object v1, v1, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimServiceTable:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable;

    sget-object v2, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->PCSCF_DISCOVERY:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable;->isAvailable(Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;)Z

    move-result v1

    .line 359
    if-eqz v1, :cond_1

    .line 361
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    iget-object v1, v1, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    .line 362
    new-instance v3, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;)V

    const/16 v4, 0x64

    .line 361
    invoke-virtual {v2, v4, v3}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x6f09

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 363
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    iget v2, v1, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    .line 366
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    iget-object v1, v1, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimServiceTable:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable;

    sget-object v2, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->SM_OVER_IP:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable;->isAvailable(Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 367
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    iget-object v1, v1, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    const/16 v3, 0xca

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x6fe5

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 368
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    iget v2, v1, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    .line 371
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->-wrap1(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)V

    .line 349
    return-void
.end method
