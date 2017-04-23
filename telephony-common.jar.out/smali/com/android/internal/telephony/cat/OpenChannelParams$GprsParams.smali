.class public Lcom/android/internal/telephony/cat/OpenChannelParams$GprsParams;
.super Ljava/lang/Object;
.source "BipCommandParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/OpenChannelParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GprsParams"
.end annotation


# instance fields
.field public accessPointName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/cat/OpenChannelParams;

.field public userLogin:Ljava/lang/String;

.field public userPwd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/OpenChannelParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/telephony/cat/OpenChannelParams;
    .param p2, "apn"    # Ljava/lang/String;
    .param p3, "login"    # Ljava/lang/String;
    .param p4, "pwd"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 61
    iput-object p1, p0, Lcom/android/internal/telephony/cat/OpenChannelParams$GprsParams;->this$0:Lcom/android/internal/telephony/cat/OpenChannelParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelParams$GprsParams;->accessPointName:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelParams$GprsParams;->userLogin:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelParams$GprsParams;->userPwd:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/android/internal/telephony/cat/OpenChannelParams$GprsParams;->accessPointName:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/android/internal/telephony/cat/OpenChannelParams$GprsParams;->userLogin:Ljava/lang/String;

    .line 64
    iput-object p4, p0, Lcom/android/internal/telephony/cat/OpenChannelParams$GprsParams;->userPwd:Ljava/lang/String;

    .line 61
    return-void
.end method
