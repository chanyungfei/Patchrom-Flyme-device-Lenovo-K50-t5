.class public Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "DcSwitchStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;,
        Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;,
        Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;,
        Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;,
        Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$PreDetachCheckState;,
        Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;,
        Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x43000

.field private static final CMD_RETRY_ATTACH:I = 0x43002

.field private static final DBG:Z = true

.field public static final DCSTATE_ATTACHED:Ljava/lang/String; = "attached"

.field public static final DCSTATE_ATTACHING:Ljava/lang/String; = "attaching"

.field public static final DCSTATE_DETACHING:Ljava/lang/String; = "detaching"

.field public static final DCSTATE_EMERGENCY:Ljava/lang/String; = "emergency"

.field public static final DCSTATE_IDLE:Ljava/lang/String; = "idle"

.field public static final DCSTATE_PREDETACH_CHECK:Ljava/lang/String; = "predetachcheck"

.field private static final EVENT_CONNECTED:I = 0x43000

.field private static final EVENT_DATA_ALLOWED:I = 0x43001

.field private static final EVENT_DATA_DISALLOWED:I = 0x43003

.field private static final LOG_TAG:Ljava/lang/String; = "DcSwitchSM"

.field private static final SIM_ID_NONE:I = -0x1

.field private static final VDBG:Z


# instance fields
.field private mAc:Lcom/android/internal/util/AsyncChannel;

.field private mAttachedState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;

.field private mAttachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;

.field private mDefaultState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;

.field private mDetachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;

.field private mEmergencyState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;

.field private mId:I

.field private mIdleState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

.field private mIsAttached:Z

.field private mNeedAttach:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPreDetachCheckState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$PreDetachCheckState;

.field private mPreEmergencyState:Lcom/android/internal/util/IState;

.field private mReason:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/AsyncChannel;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAc:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAttachedState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$PreDetachCheckState;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPreDetachCheckState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$PreDetachCheckState;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/IState;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPreEmergencyState:Lcom/android/internal/util/IState;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAttachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDetachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mEmergencyState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mId:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mIdleState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mIsAttached:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mNeedAttach:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAc:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mIsAttached:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mNeedAttach:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)Lcom/android/internal/util/IState;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPreEmergencyState:Lcom/android/internal/util/IState;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Landroid/os/AsyncResult;)Z
    .locals 1
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->isRadioUnavailableException(Landroid/os/AsyncResult;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)Z
    .locals 1
    .param p1, "apnRequest"    # Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->isRequestEIMS(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->getActivePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/IState;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->convertState(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;ZLandroid/os/Message;)V
    .locals 0
    .param p1, "allowed"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->setDataAllowed(ZLandroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->setPsActiveSim()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 58
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mIdleState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

    .line 59
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mEmergencyState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;

    .line 60
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAttachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;

    .line 61
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAttachedState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;

    .line 62
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDetachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;

    .line 63
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$PreDetachCheckState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$PreDetachCheckState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$PreDetachCheckState;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPreDetachCheckState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$PreDetachCheckState;

    .line 64
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mNeedAttach:Z

    .line 72
    iput-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mIsAttached:Z

    .line 73
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mReason:Ljava/lang/String;

    .line 88
    const-string/jumbo v0, "DcSwitchState constructor E"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 89
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 90
    iput p3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mId:I

    .line 91
    iput-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mIsAttached:Z

    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mIdleState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mEmergencyState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAttachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAttachedState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPreDetachCheckState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$PreDetachCheckState;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 99
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDetachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mIdleState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 101
    const-string/jumbo v0, "DcSwitchState constructor X"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method private convertState(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # Ljava/lang/Object;

    .prologue
    .line 709
    const-string/jumbo v0, ""

    .line 710
    .local v0, "ret":Ljava/lang/String;
    instance-of v1, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

    if-eqz v1, :cond_1

    .line 711
    const-string/jumbo v0, "idle"

    .line 721
    :cond_0
    :goto_0
    return-object v0

    .line 712
    :cond_1
    instance-of v1, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;

    if-eqz v1, :cond_2

    .line 713
    const-string/jumbo v0, "attaching"

    goto :goto_0

    .line 714
    :cond_2
    instance-of v1, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;

    if-eqz v1, :cond_3

    .line 715
    const-string/jumbo v0, "attached"

    goto :goto_0

    .line 716
    :cond_3
    instance-of v1, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$PreDetachCheckState;

    if-eqz v1, :cond_4

    .line 717
    const-string/jumbo v0, "predetachcheck"

    goto :goto_0

    .line 718
    :cond_4
    instance-of v1, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;

    if-eqz v1, :cond_0

    .line 719
    const-string/jumbo v0, "detaching"

    goto :goto_0
.end method

.method private getActivePhone()Lcom/android/internal/telephony/PhoneBase;
    .locals 2

    .prologue
    .line 745
    const/4 v0, 0x0

    .line 746
    .local v0, "psPhone":Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 747
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isActiveSvlteMode(I)Z

    move-result v1

    .line 746
    if-eqz v1, :cond_0

    .line 748
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getPsPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    .line 752
    .local v0, "psPhone":Lcom/android/internal/telephony/PhoneBase;
    :goto_0
    return-object v0

    .line 750
    .local v0, "psPhone":Lcom/android/internal/telephony/PhoneBase;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .end local v0    # "psPhone":Lcom/android/internal/telephony/PhoneBase;
    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .local v0, "psPhone":Lcom/android/internal/telephony/PhoneBase;
    goto :goto_0
.end method

.method private isRadioUnavailableException(Landroid/os/AsyncResult;)Z
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 772
    const/4 v1, 0x0

    .line 773
    .local v1, "isRadioUnavailable":Z
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_0

    .line 774
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    .line 775
    .local v0, "e":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    .line 776
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    .line 775
    if-ne v2, v3, :cond_0

    .line 777
    const-string/jumbo v2, "DetachingState: EVENT_DATA_DISALLOWED, exception is RADIO_NOT_AVAILABLE"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 778
    const/4 v1, 0x1

    .line 781
    .end local v0    # "e":Lcom/android/internal/telephony/CommandException;
    :cond_0
    return v1
.end method

.method private isRequestEIMS(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)Z
    .locals 5
    .param p1, "apnRequest"    # Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .prologue
    .line 757
    const/4 v0, 0x0

    .line 758
    .local v0, "bRet":Z
    iget-object v3, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v3, v3, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 759
    const/16 v4, 0xa

    .line 758
    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    .line 760
    .local v1, "bhasEIMSCap":Z
    iget-object v3, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v3, v3, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Ljava/lang/String;

    move-result-object v2

    .line 761
    .local v2, "specifier":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "bHasEIMSCap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", specifier: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 763
    if-eqz v1, :cond_0

    .line 764
    const/4 v0, 0x1

    .line 766
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isRequestEIMSWithoutSIM ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 767
    return v0
.end method

.method private setDataAllowed(ZLandroid/os/Message;)V
    .locals 2
    .param p1, "allowed"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 734
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mId:I

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isActiveSvlteMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 735
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getIratDataSwitchHelper()Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->setDataAllowed(ZLandroid/os/Message;)V

    .line 733
    :goto_0
    return-void

    .line 738
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .line 740
    .local v0, "phone":Lcom/android/internal/telephony/PhoneBase;
    iget-object v1, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    goto :goto_0
.end method

.method private setPsActiveSim()V
    .locals 3

    .prologue
    .line 727
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getRilDcArbitrator()Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

    move-result-object v0

    .line 729
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mId:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    .line 728
    invoke-interface {v0, v1, v2}, Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;->requestSetPsActiveSlot(ILandroid/os/Message;)V

    .line 725
    :cond_0
    return-void
.end method


# virtual methods
.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 705
    const-string/jumbo v0, "DcSwitchSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    return-void
.end method
