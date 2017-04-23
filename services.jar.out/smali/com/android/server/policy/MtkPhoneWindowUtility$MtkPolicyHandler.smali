.class Lcom/android/server/policy/MtkPhoneWindowUtility$MtkPolicyHandler;
.super Landroid/os/Handler;
.source "MtkPhoneWindowUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/MtkPhoneWindowUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MtkPolicyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/MtkPhoneWindowUtility;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/MtkPhoneWindowUtility;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/MtkPhoneWindowUtility;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/server/policy/MtkPhoneWindowUtility$MtkPolicyHandler;->this$0:Lcom/android/server/policy/MtkPhoneWindowUtility;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/MtkPhoneWindowUtility;Lcom/android/server/policy/MtkPhoneWindowUtility$MtkPolicyHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/MtkPhoneWindowUtility;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/MtkPhoneWindowUtility$MtkPolicyHandler;-><init>(Lcom/android/server/policy/MtkPhoneWindowUtility;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 91
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 90
    :goto_0
    return-void

    .line 94
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/MtkPhoneWindowUtility$MtkPolicyHandler;->this$0:Lcom/android/server/policy/MtkPhoneWindowUtility;

    invoke-static {v0}, Lcom/android/server/policy/MtkPhoneWindowUtility;->-wrap1(Lcom/android/server/policy/MtkPhoneWindowUtility;)V

    goto :goto_0

    .line 99
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/policy/MtkPhoneWindowUtility$MtkPolicyHandler;->this$0:Lcom/android/server/policy/MtkPhoneWindowUtility;

    invoke-static {v0}, Lcom/android/server/policy/MtkPhoneWindowUtility;->-wrap0(Lcom/android/server/policy/MtkPhoneWindowUtility;)V

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
