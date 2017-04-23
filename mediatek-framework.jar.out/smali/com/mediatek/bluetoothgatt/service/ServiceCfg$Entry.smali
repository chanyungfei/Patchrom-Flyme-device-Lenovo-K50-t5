.class public Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;
.super Ljava/lang/Object;
.source "ServiceCfg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetoothgatt/service/ServiceCfg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Entry"
.end annotation


# instance fields
.field mInstanceId:I

.field mPermissions:I

.field mProperties:I

.field mServiceType:I

.field mSupport:Z

.field final mType:I

.field final mUuid:Ljava/util/UUID;

.field mValue:[B

.field final synthetic this$0:Lcom/mediatek/bluetoothgatt/service/ServiceCfg;


# direct methods
.method public constructor <init>(Lcom/mediatek/bluetoothgatt/service/ServiceCfg;IZLjava/util/UUID;II)V
    .locals 2
    .param p1, "this$0"    # Lcom/mediatek/bluetoothgatt/service/ServiceCfg;
    .param p2, "type"    # I
    .param p3, "support"    # Z
    .param p4, "uuid"    # Ljava/util/UUID;
    .param p5, "properties"    # I
    .param p6, "permissions"    # I

    .prologue
    const/4 v1, 0x0

    .line 101
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->this$0:Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-boolean v1, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mSupport:Z

    .line 70
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mServiceType:I

    .line 71
    iput v1, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mInstanceId:I

    .line 72
    iput v1, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mProperties:I

    .line 73
    iput v1, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mPermissions:I

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mValue:[B

    .line 102
    iput p2, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mType:I

    .line 103
    iput-boolean p3, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mSupport:Z

    .line 104
    iput-object p4, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mUuid:Ljava/util/UUID;

    .line 105
    iput p5, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mProperties:I

    .line 106
    iput p6, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mPermissions:I

    .line 101
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/service/ServiceCfg;IZLjava/util/UUID;II[B)V
    .locals 2
    .param p1, "this$0"    # Lcom/mediatek/bluetoothgatt/service/ServiceCfg;
    .param p2, "type"    # I
    .param p3, "support"    # Z
    .param p4, "uuid"    # Ljava/util/UUID;
    .param p5, "properties"    # I
    .param p6, "permissions"    # I
    .param p7, "value"    # [B

    .prologue
    const/4 v1, 0x0

    .line 119
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->this$0:Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-boolean v1, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mSupport:Z

    .line 70
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mServiceType:I

    .line 71
    iput v1, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mInstanceId:I

    .line 72
    iput v1, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mProperties:I

    .line 73
    iput v1, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mPermissions:I

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mValue:[B

    .line 121
    iput p2, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mType:I

    .line 122
    iput-boolean p3, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mSupport:Z

    .line 123
    iput-object p4, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mUuid:Ljava/util/UUID;

    .line 124
    iput p5, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mProperties:I

    .line 125
    iput p6, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mPermissions:I

    .line 126
    iput-object p7, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mValue:[B

    .line 120
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/service/ServiceCfg;ZLjava/util/UUID;II)V
    .locals 2
    .param p1, "this$0"    # Lcom/mediatek/bluetoothgatt/service/ServiceCfg;
    .param p2, "support"    # Z
    .param p3, "uuid"    # Ljava/util/UUID;
    .param p4, "serviceType"    # I
    .param p5, "instanceId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 84
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->this$0:Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-boolean v0, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mSupport:Z

    .line 70
    iput v1, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mServiceType:I

    .line 71
    iput v0, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mInstanceId:I

    .line 72
    iput v0, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mProperties:I

    .line 73
    iput v0, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mPermissions:I

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mValue:[B

    .line 85
    iput v1, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mType:I

    .line 86
    iput-boolean p2, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mSupport:Z

    .line 87
    iput-object p3, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mUuid:Ljava/util/UUID;

    .line 88
    iput p4, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mServiceType:I

    .line 89
    iput p5, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mInstanceId:I

    .line 84
    return-void
.end method


# virtual methods
.method public getProperties()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mProperties:I

    return v0
.end method

.method public getSupport()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mSupport:Z

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mType:I

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public setInitValue(Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;)Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;
    .locals 2
    .param p1, "value"    # Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;

    .prologue
    .line 210
    iget v0, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 211
    :cond_0
    invoke-virtual {p1}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->getValue()[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mValue:[B

    .line 213
    :cond_1
    return-object p0
.end method

.method public setInitValue([B)Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 197
    iget v0, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 198
    :cond_0
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mValue:[B

    .line 200
    :cond_1
    return-object p0
.end method

.method public setInstanceId(I)Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;
    .locals 2
    .param p1, "instanceId"    # I

    .prologue
    .line 160
    iget v0, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 161
    iput p1, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mInstanceId:I

    .line 163
    :cond_0
    return-object p0
.end method

.method public setPermissions(I)Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;
    .locals 0
    .param p1, "permissions"    # I

    .prologue
    .line 186
    iput p1, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mPermissions:I

    .line 187
    return-object p0
.end method

.method public setProperties(I)Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;
    .locals 2
    .param p1, "properties"    # I

    .prologue
    .line 173
    iget v0, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 174
    iput p1, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mProperties:I

    .line 176
    :cond_0
    return-object p0
.end method

.method public setServiceType(I)Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;
    .locals 2
    .param p1, "serviceType"    # I

    .prologue
    .line 147
    iget v0, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 148
    iput p1, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mServiceType:I

    .line 150
    :cond_0
    return-object p0
.end method

.method public setSupport(Z)Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;
    .locals 0
    .param p1, "support"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->mSupport:Z

    .line 137
    return-object p0
.end method
