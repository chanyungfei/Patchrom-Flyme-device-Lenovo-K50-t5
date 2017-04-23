.class public Lcom/android/internal/telephony/cat/BipCmdMessage$SetupEventListSettings;
.super Ljava/lang/Object;
.source "BipCmdMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/BipCmdMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetupEventListSettings"
.end annotation


# instance fields
.field public eventList:[I

.field final synthetic this$0:Lcom/android/internal/telephony/cat/BipCmdMessage;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cat/BipCmdMessage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/cat/BipCmdMessage;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipCmdMessage$SetupEventListSettings;->this$0:Lcom/android/internal/telephony/cat/BipCmdMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
