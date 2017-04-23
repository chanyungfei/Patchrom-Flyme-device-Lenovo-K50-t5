.class Lcom/android/internal/telephony/uicc/SIMRecords$RebootClickListener;
.super Ljava/lang/Object;
.source "SIMRecords.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/SIMRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RebootClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/SIMRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/SIMRecords;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/SIMRecords;

    .prologue
    .line 4008
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$RebootClickListener;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/SIMRecords;Lcom/android/internal/telephony/uicc/SIMRecords$RebootClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/SIMRecords;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords$RebootClickListener;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 4013
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$RebootClickListener;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    const-string/jumbo v2, "Unlock Phone onClick"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4014
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$RebootClickListener;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    iget-object v1, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    .line 4015
    const-string/jumbo v2, "power"

    .line 4014
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 4016
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v1, "Unlock state changed"

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 4012
    return-void
.end method
