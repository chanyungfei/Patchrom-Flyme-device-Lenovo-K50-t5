.class Lcom/android/internal/telephony/cat/CallSetupParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field mCallMsg:Lcom/android/internal/telephony/cat/TextMessage;

.field mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/TextMessage;)V
    .locals 0
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "confirmMsg"    # Lcom/android/internal/telephony/cat/TextMessage;
    .param p3, "callMsg"    # Lcom/android/internal/telephony/cat/TextMessage;

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 147
    iput-object p2, p0, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 148
    iput-object p3, p0, Lcom/android/internal/telephony/cat/CallSetupParams;->mCallMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 145
    return-void
.end method


# virtual methods
.method setIcon(Landroid/graphics/Bitmap;)Z
    .locals 3
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 153
    if-nez p1, :cond_0

    .line 154
    return v1

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object p1, v0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    .line 158
    return v2

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CallSetupParams;->mCallMsg:Lcom/android/internal/telephony/cat/TextMessage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CallSetupParams;->mCallMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CallSetupParams;->mCallMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object p1, v0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    .line 161
    return v2

    .line 163
    :cond_2
    return v1
.end method
