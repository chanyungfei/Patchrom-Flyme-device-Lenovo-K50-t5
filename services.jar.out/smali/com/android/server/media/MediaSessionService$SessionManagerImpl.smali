.class Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
.super Landroid/media/session/ISessionManager$Stub;
.source "MediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SessionManagerImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;,
        Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;,
        Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;
    }
.end annotation


# static fields
.field private static final EXTRA_WAKELOCK_ACQUIRED:Ljava/lang/String; = "android.media.AudioService.WAKELOCK_ACQUIRED"

.field private static final WAKELOCK_RELEASE_ON_FINISHED:I = 0x7bc


# instance fields
.field mKeyEventDone:Landroid/content/BroadcastReceiver;

.field private mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

.field private final mSendHookKeyEvent:Ljava/lang/Runnable;

.field private mVoiceButtonDown:Z

.field private mVoiceButtonHandled:Z

.field final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V
    .locals 0
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z
    .param p3, "session"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/media/MediaSessionService;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/media/MediaSessionService;

    .prologue
    const/4 v0, 0x0

    .line 650
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {p0}, Landroid/media/session/ISessionManager$Stub;-><init>()V

    .line 655
    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    .line 656
    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    .line 1018
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mSendHookKeyEvent:Ljava/lang/Runnable;

    .line 1190
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-get5(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    .line 1270
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    .line 650
    return-void
.end method

.method private delaySendHookKeyEvent()V
    .locals 4

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-get5(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mSendHookKeyEvent:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/media/MediaSessionService$MessageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1010
    return-void
.end method

.method private dispatchAdjustVolumeLocked(IIILcom/android/server/media/MediaSessionRecord;)V
    .locals 15
    .param p1, "suggestedStream"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "session"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 895
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 896
    if-nez p4, :cond_4

    const/4 v12, 0x0

    .line 897
    :goto_0
    const-string/jumbo v1, "MediaSessionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Adjusting session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ". flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 898
    const-string/jumbo v3, ", suggestedStream="

    .line 897
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    :cond_0
    const/4 v14, 0x0

    .line 902
    .local v14, "preferSuggestedStream":Z
    invoke-direct/range {p0 .. p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isValidLocalStreamType(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 903
    const/4 v1, 0x0

    move/from16 v0, p1

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    .line 902
    if-eqz v1, :cond_1

    .line 904
    const/4 v14, 0x1

    .line 906
    :cond_1
    if-eqz p4, :cond_2

    if-eqz v14, :cond_7

    .line 907
    :cond_2
    move/from16 v0, p3

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_3

    .line 908
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 915
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 916
    .local v5, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-get2(Lcom/android/server/media/MediaSessionService;)Landroid/media/IAudioService;

    move-result-object v1

    .line 917
    const-string/jumbo v6, "MediaSessionService"

    move/from16 v2, p2

    move/from16 v3, p1

    move/from16 v4, p3

    .line 916
    invoke-interface/range {v1 .. v6}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 894
    .end local v5    # "packageName":Ljava/lang/String;
    :goto_1
    return-void

    .line 896
    .end local v14    # "preferSuggestedStream":Z
    :cond_4
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/media/MediaSessionRecord;->toString()Ljava/lang/String;

    move-result-object v12

    .local v12, "description":Ljava/lang/String;
    goto/16 :goto_0

    .line 909
    .end local v12    # "description":Ljava/lang/String;
    .restart local v14    # "preferSuggestedStream":Z
    :cond_5
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->-get0()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 910
    const-string/jumbo v1, "MediaSessionService"

    const-string/jumbo v2, "No active session to adjust, skipping media only volume event"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    :cond_6
    return-void

    .line 918
    :catch_0
    move-exception v13

    .line 919
    .local v13, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionService"

    const-string/jumbo v2, "Error adjusting default volume."

    invoke-static {v1, v2, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 922
    .end local v13    # "e":Landroid/os/RemoteException;
    :cond_7
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 923
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    const/4 v11, 0x1

    move-object/from16 v6, p4

    move/from16 v7, p2

    move/from16 v8, p3

    .line 922
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/media/MediaSessionRecord;->adjustVolume(IILjava/lang/String;IZ)V

    goto :goto_1
.end method

.method private dispatchMediaKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V
    .locals 21
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z
    .param p3, "session"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 1034
    if-eqz p3, :cond_6

    .line 1037
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x57

    if-eq v2, v3, :cond_0

    .line 1038
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x58

    if-ne v2, v3, :cond_2

    .line 1040
    :cond_0
    const/16 v18, -0x1

    .line 1042
    .local v18, "sessionState":I
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/media/MediaSessionRecord;->getControllerBinder()Landroid/media/session/ISessionController;

    move-result-object v2

    invoke-interface {v2}, Landroid/media/session/ISessionController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->getState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    .line 1048
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/media/MediaSessionRecord;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "MediaSessionHelper-com.lenovo.music"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1049
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/media/MediaSessionRecord;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "MediaSessionHelper-com.lenovo.fm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 1050
    :goto_1
    if-eqz v17, :cond_2

    const/4 v2, 0x3

    move/from16 v0, v18

    if-eq v0, v2, :cond_2

    .line 1051
    const-string/jumbo v2, "MediaSessionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "session state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",so drop next or previous keyevent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    return-void

    .line 1043
    :catch_0
    move-exception v16

    .line 1044
    .local v16, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "MediaSessionService"

    const-string/jumbo v3, "exception occured"

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1048
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_1
    const/16 v17, 0x1

    .local v17, "isMusicOrFm":Z
    goto :goto_1

    .line 1056
    .end local v17    # "isMusicOrFm":Z
    .end local v18    # "sessionState":I
    :cond_2
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->-get0()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1057
    const-string/jumbo v2, "MediaSessionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Sending media key to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/media/MediaSessionRecord;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    :cond_3
    if-eqz p2, :cond_4

    .line 1060
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->aquireWakeLockLocked()V

    .line 1065
    :cond_4
    if-eqz p2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->-get0(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;)I

    move-result v2

    .line 1066
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    .line 1064
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->sendMediaButton(Landroid/view/KeyEvent;ILandroid/os/ResultReceiver;)V

    .line 1033
    :goto_3
    return-void

    .line 1065
    :cond_5
    const/4 v2, -0x1

    goto :goto_2

    .line 1069
    :cond_6
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v20

    .line 1070
    .local v20, "userId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->-get15(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/media/MediaSessionService$UserRecord;

    .line 1071
    .local v19, "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    invoke-static/range {v19 .. v19}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get0(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/app/PendingIntent;

    move-result-object v2

    if-nez v2, :cond_7

    .line 1072
    invoke-static/range {v19 .. v19}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get1(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 1073
    :cond_7
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->-get0()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1074
    const-string/jumbo v2, "MediaSessionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Sending media key to last known PendingIntent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1075
    invoke-static/range {v19 .. v19}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get0(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 1074
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1075
    const-string/jumbo v4, " or restored Intent "

    .line 1074
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1076
    invoke-static/range {v19 .. v19}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get1(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/content/ComponentName;

    move-result-object v4

    .line 1074
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    :cond_8
    if-eqz p2, :cond_9

    .line 1079
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->aquireWakeLockLocked()V

    .line 1081
    :cond_9
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1082
    .local v5, "mediaButtonIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, p1

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1084
    :try_start_1
    invoke-static/range {v19 .. v19}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get0(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/app/PendingIntent;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 1085
    invoke-static/range {v19 .. v19}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get0(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/app/PendingIntent;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v3}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1086
    if-eqz p2, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->-get0(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;)I

    move-result v4

    .line 1087
    :goto_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    const/4 v7, 0x0

    .line 1085
    invoke-virtual/range {v2 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 1093
    :catch_1
    move-exception v15

    .line 1094
    .local v15, "e":Landroid/app/PendingIntent$CanceledException;
    const-string/jumbo v2, "MediaSessionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error sending key event to media button receiver "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1095
    invoke-static/range {v19 .. v19}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get0(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 1094
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1086
    .end local v15    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_a
    const/4 v4, -0x1

    goto :goto_4

    .line 1089
    :cond_b
    :try_start_2
    invoke-static/range {v19 .. v19}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get1(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1090
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1091
    new-instance v3, Landroid/os/UserHandle;

    move/from16 v0, v20

    invoke-direct {v3, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 1090
    invoke-virtual {v2, v5, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    .line 1098
    .end local v5    # "mediaButtonIntent":Landroid/content/Intent;
    :cond_c
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->-get0()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1099
    const-string/jumbo v2, "MediaSessionService"

    const-string/jumbo v3, "Sending media key ordered broadcast"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    :cond_d
    if-eqz p2, :cond_e

    .line 1102
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->-get10(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1105
    :cond_e
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MEDIA_BUTTON"

    const/4 v3, 0x0

    invoke-direct {v7, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1106
    .local v7, "keyIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, p1

    invoke-virtual {v7, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1107
    if-eqz p2, :cond_f

    .line 1108
    const-string/jumbo v2, "android.media.AudioService.WAKELOCK_ACQUIRED"

    .line 1109
    const/16 v3, 0x7bc

    .line 1108
    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1111
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 1112
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->-get5(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v11

    const/4 v9, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 1111
    invoke-virtual/range {v6 .. v14}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_3
.end method

.method private handleVoiceKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V
    .locals 12
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z
    .param p3, "session"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    const/16 v11, 0x114

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 929
    if-eqz p3, :cond_0

    const/high16 v6, 0x10000

    invoke-virtual {p3, v6}, Lcom/android/server/media/MediaSessionRecord;->hasFlag(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 931
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V

    .line 932
    return-void

    .line 934
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 935
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v6

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_2

    const/4 v2, 0x1

    .line 936
    .local v2, "isLongPress":Z
    :goto_0
    if-nez v0, :cond_6

    .line 937
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_3

    .line 938
    iput-boolean v10, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    .line 939
    iput-boolean v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    .line 941
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->removeSendHookKeyEvent()V

    .line 928
    :cond_1
    :goto_1
    return-void

    .line 935
    .end local v2    # "isLongPress":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "isLongPress":Z
    goto :goto_0

    .line 943
    :cond_3
    iget-boolean v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    if-nez v6, :cond_1

    if-eqz v2, :cond_1

    .line 944
    iput-boolean v10, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    .line 950
    const/4 v5, -0x1

    .line 951
    .local v5, "sessionState":I
    if-eqz p3, :cond_4

    .line 953
    :try_start_0
    invoke-virtual {p3}, Lcom/android/server/media/MediaSessionRecord;->getControllerBinder()Landroid/media/session/ISessionController;

    move-result-object v6

    invoke-interface {v6}, Landroid/media/session/ISessionController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/session/PlaybackState;->getState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 957
    :goto_2
    const-string/jumbo v6, "MediaSessionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "session state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :cond_4
    if-eqz p3, :cond_5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    .line 960
    invoke-virtual {p3}, Lcom/android/server/media/MediaSessionRecord;->getTag()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "MediaSessionHelper-com.lenovo.music"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 961
    const-string/jumbo v6, "MediaSessionService"

    const-string/jumbo v7, "dispatch music favorite event"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    new-instance v3, Landroid/view/KeyEvent;

    invoke-direct {v3, v9, v11}, Landroid/view/KeyEvent;-><init>(II)V

    .line 963
    .local v3, "keyEvent_D":Landroid/view/KeyEvent;
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService;->-get11(Lcom/android/server/media/MediaSessionService;)Z

    move-result v6

    invoke-direct {p0, v3, v6, p3}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V

    .line 964
    new-instance v4, Landroid/view/KeyEvent;

    invoke-direct {v4, v10, v11}, Landroid/view/KeyEvent;-><init>(II)V

    .line 965
    .local v4, "keyEvent_U":Landroid/view/KeyEvent;
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService;->-get11(Lcom/android/server/media/MediaSessionService;)Z

    move-result v6

    invoke-direct {p0, v4, v6, p3}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V

    goto :goto_1

    .line 954
    .end local v3    # "keyEvent_D":Landroid/view/KeyEvent;
    .end local v4    # "keyEvent_U":Landroid/view/KeyEvent;
    :catch_0
    move-exception v1

    .line 955
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "MediaSessionService"

    const-string/jumbo v7, "exception occured"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 968
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-direct {p0, p2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->startLeVoice(Z)V

    goto :goto_1

    .line 972
    .end local v5    # "sessionState":I
    :cond_6
    if-ne v0, v10, :cond_1

    .line 973
    iget-boolean v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    if-eqz v6, :cond_1

    .line 974
    iput-boolean v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    .line 975
    iget-boolean v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    if-nez v6, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 983
    invoke-direct {p0, p2, p3}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->sendHookKeyEvent(ZLcom/android/server/media/MediaSessionRecord;)V

    goto/16 :goto_1
.end method

.method private isUserSetupComplete()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1180
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1181
    const-string/jumbo v2, "user_setup_complete"

    const/4 v3, -0x2

    .line 1180
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isValidLocalStreamType(I)Z
    .locals 2
    .param p1, "streamType"    # I

    .prologue
    const/4 v0, 0x0

    .line 1186
    if-ltz p1, :cond_0

    .line 1187
    const/4 v1, 0x5

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    .line 1186
    :cond_0
    return v0
.end method

.method private isVoiceKey(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 1176
    const/16 v0, 0x4f

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeSendHookKeyEvent()V
    .locals 2

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-get5(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mSendHookKeyEvent:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionService$MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1014
    return-void
.end method

.method private sendHookKeyEvent(ZLcom/android/server/media/MediaSessionRecord;)V
    .locals 3
    .param p1, "needWakeLock"    # Z
    .param p2, "session"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    const/4 v2, 0x0

    .line 992
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-get7(Lcom/android/server/media/MediaSessionService;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/media/MediaSessionService;->-set1(Lcom/android/server/media/MediaSessionService;I)I

    .line 993
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0, p2}, Lcom/android/server/media/MediaSessionService;->-set4(Lcom/android/server/media/MediaSessionService;Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord;

    .line 994
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionService;->-set2(Lcom/android/server/media/MediaSessionService;Z)Z

    .line 995
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-get7(Lcom/android/server/media/MediaSessionService;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 996
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    const/16 v1, 0x55

    invoke-static {v0, v1}, Lcom/android/server/media/MediaSessionService;->-set0(Lcom/android/server/media/MediaSessionService;I)I

    .line 997
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->delaySendHookKeyEvent()V

    .line 991
    :goto_0
    return-void

    .line 998
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-get7(Lcom/android/server/media/MediaSessionService;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 999
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    const/16 v1, 0x57

    invoke-static {v0, v1}, Lcom/android/server/media/MediaSessionService;->-set0(Lcom/android/server/media/MediaSessionService;I)I

    .line 1000
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->delaySendHookKeyEvent()V

    goto :goto_0

    .line 1001
    :cond_1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-get7(Lcom/android/server/media/MediaSessionService;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1002
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    const/16 v1, 0x58

    invoke-static {v0, v1}, Lcom/android/server/media/MediaSessionService;->-set0(Lcom/android/server/media/MediaSessionService;I)I

    .line 1003
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->delaySendHookKeyEvent()V

    .line 1004
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0, v2}, Lcom/android/server/media/MediaSessionService;->-set1(Lcom/android/server/media/MediaSessionService;I)I

    goto :goto_0

    .line 1006
    :cond_2
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0, v2}, Lcom/android/server/media/MediaSessionService;->-set1(Lcom/android/server/media/MediaSessionService;I)I

    .line 1007
    const-string/jumbo v0, "MediaSessionService"

    const-string/jumbo v1, "Invalid key..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startLeVoice(Z)V
    .locals 7
    .param p1, "needWakeLock"    # Z

    .prologue
    .line 1119
    const-string/jumbo v0, "android.intent.action.VOICE_COMMAND"

    .line 1121
    .local v0, "action":Ljava/lang/String;
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1122
    .local v3, "levoiceIntent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1123
    const-string/jumbo v5, "com.lenovo.menu_assistant"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1124
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1118
    .end local v3    # "levoiceIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1125
    :catch_0
    move-exception v1

    .line 1126
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "MediaSessionService"

    const-string/jumbo v6, "can\'t start levoice"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    :try_start_1
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1129
    .local v4, "otherVoiceIntent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1130
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1131
    .end local v4    # "otherVoiceIntent":Landroid/content/Intent;
    :catch_1
    move-exception v2

    .line 1132
    .local v2, "e1":Ljava/lang/Exception;
    const-string/jumbo v5, "MediaSessionService"

    const-string/jumbo v6, "can\'t start voice input"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startVoiceInput(Z)V
    .locals 7
    .param p1, "needWakeLock"    # Z

    .prologue
    .line 1139
    const/4 v3, 0x0

    .line 1145
    .local v3, "voiceIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v4}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 1146
    .local v2, "pm":Landroid/os/PowerManager;
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-get8(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-get8(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    .line 1147
    :goto_0
    if-nez v1, :cond_4

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1148
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "voiceIntent":Landroid/content/Intent;
    const-string/jumbo v4, "android.speech.action.WEB_SEARCH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1149
    .local v3, "voiceIntent":Landroid/content/Intent;
    const-string/jumbo v4, "MediaSessionService"

    const-string/jumbo v5, "voice-based interactions: about to use ACTION_WEB_SEARCH"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    :goto_1
    if-eqz p1, :cond_0

    .line 1158
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-get10(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1161
    :cond_0
    if-eqz v3, :cond_1

    .line 1162
    const/high16 v4, 0x10800000

    :try_start_0
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1164
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v4}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1169
    :cond_1
    if-eqz p1, :cond_2

    .line 1170
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-get10(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1138
    :cond_2
    :goto_2
    return-void

    .line 1146
    .local v3, "voiceIntent":Landroid/content/Intent;
    :cond_3
    const/4 v1, 0x0

    .local v1, "isLocked":Z
    goto :goto_0

    .line 1151
    .end local v1    # "isLocked":Z
    :cond_4
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "voiceIntent":Landroid/content/Intent;
    const-string/jumbo v4, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1152
    .local v3, "voiceIntent":Landroid/content/Intent;
    const-string/jumbo v5, "android.speech.extras.EXTRA_SECURE"

    .line 1153
    if-eqz v1, :cond_5

    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-get8(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v4

    .line 1152
    :goto_3
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1154
    const-string/jumbo v4, "MediaSessionService"

    const-string/jumbo v5, "voice-based interactions: about to use ACTION_VOICE_SEARCH_HANDS_FREE"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1153
    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    .line 1166
    :catch_0
    move-exception v0

    .line 1167
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :try_start_1
    const-string/jumbo v4, "MediaSessionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No activity for search: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1169
    if-eqz p1, :cond_2

    .line 1170
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-get10(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_2

    .line 1168
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v4

    .line 1169
    if-eqz p1, :cond_6

    .line 1170
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->-get10(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1168
    :cond_6
    throw v4
.end method

.method private verifySessionsRequest(Landroid/content/ComponentName;III)I
    .locals 8
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "pid"    # I
    .param p4, "uid"    # I

    .prologue
    const/4 v3, 0x1

    .line 876
    const/4 v6, 0x0

    .line 877
    .local v6, "packageName":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 880
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 881
    .local v6, "packageName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0, v6, p4}, Lcom/android/server/media/MediaSessionService;->-wrap4(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;I)V

    .line 886
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_0
    const-string/jumbo v5, "getSessions"

    move v0, p3

    move v1, p4

    move v2, p2

    move v4, v3

    .line 885
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 889
    .local v7, "resolvedUserId":I
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0, p1, p3, p4, v7}, Lcom/android/server/media/MediaSessionService;->-wrap3(Lcom/android/server/media/MediaSessionService;Landroid/content/ComponentName;III)V

    .line 890
    return v7
.end method


# virtual methods
.method public addSessionsListener(Landroid/media/session/IActiveSessionsListener;Landroid/content/ComponentName;I)V
    .locals 12
    .param p1, "listener"    # Landroid/media/session/IActiveSessionsListener;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 704
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 705
    .local v5, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 706
    .local v6, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 709
    .local v10, "token":J
    :try_start_0
    invoke-direct {p0, p2, p3, v5, v6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->verifySessionsRequest(Landroid/content/ComponentName;III)I

    move-result v4

    .line 710
    .local v4, "resolvedUserId":I
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-get9(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 711
    :try_start_1
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1, p1}, Lcom/android/server/media/MediaSessionService;->-wrap1(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;)I

    move-result v8

    .line 712
    .local v8, "index":I
    const/4 v1, -0x1

    if-eq v8, v1, :cond_0

    .line 713
    const-string/jumbo v1, "MediaSessionService"

    const-string/jumbo v2, "ActiveSessionsListener is already added, ignoring"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 727
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 714
    return-void

    .line 716
    :cond_0
    :try_start_3
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;-><init>(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;Landroid/content/ComponentName;III)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 719
    .local v0, "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_start_4
    invoke-interface {p1}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 724
    :try_start_5
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-get14(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 727
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 703
    return-void

    .line 720
    :catch_0
    move-exception v7

    .line 721
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_7
    const-string/jumbo v1, "MediaSessionService"

    const-string/jumbo v2, "ActiveSessionsListener is dead, ignoring it"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 727
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 722
    return-void

    .line 710
    .end local v0    # "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    .end local v7    # "e":Landroid/os/RemoteException;
    .end local v8    # "index":I
    :catchall_0
    move-exception v1

    :try_start_9
    monitor-exit v9

    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 726
    .end local v4    # "resolvedUserId":I
    :catchall_1
    move-exception v1

    .line 727
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 726
    throw v1
.end method

.method public createSession(Ljava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;I)Landroid/media/session/ISession;
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/media/session/ISessionCallback;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 661
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 662
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 663
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 665
    .local v10, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2, p1, v1}, Lcom/android/server/media/MediaSessionService;->-wrap4(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;I)V

    .line 667
    const-string/jumbo v5, "createSession"

    const/4 v3, 0x0

    const/4 v4, 0x1

    move/from16 v2, p4

    move-object v6, p1

    .line 666
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 668
    .local v5, "resolvedUserId":I
    if-nez p2, :cond_0

    .line 669
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Controller callback cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 673
    .end local v5    # "resolvedUserId":I
    :catchall_0
    move-exception v2

    .line 674
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 673
    throw v2

    .line 671
    .restart local v5    # "resolvedUserId":I
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    move v3, v0

    move v4, v1

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService;->-wrap0(Lcom/android/server/media/MediaSessionService;IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->getSessionBinder()Landroid/media/session/ISession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 674
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 671
    return-object v2
.end method

.method public dispatchAdjustVolume(III)V
    .locals 8
    .param p1, "suggestedStream"    # I
    .param p2, "delta"    # I
    .param p3, "flags"    # I

    .prologue
    .line 810
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 811
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 812
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 814
    .local v2, "token":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->-get9(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 815
    :try_start_1
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->-get12(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v5

    .line 816
    iget-object v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v7}, Lcom/android/server/media/MediaSessionService;->-get4(Lcom/android/server/media/MediaSessionService;)I

    move-result v7

    .line 815
    invoke-virtual {v5, v7}, Lcom/android/server/media/MediaSessionStack;->getDefaultVolumeSession(I)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v1

    .line 817
    .local v1, "session":Lcom/android/server/media/MediaSessionRecord;
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchAdjustVolumeLocked(IIILcom/android/server/media/MediaSessionRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 820
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 809
    return-void

    .line 814
    .end local v1    # "session":Lcom/android/server/media/MediaSessionRecord;
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 819
    :catchall_1
    move-exception v5

    .line 820
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 819
    throw v5
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 10
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .prologue
    .line 759
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-static {v7}, Landroid/view/KeyEvent;->isMediaKey(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 764
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 765
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 766
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 768
    .local v2, "token":J
    :try_start_0
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->-get0()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 769
    const-string/jumbo v7, "MediaSessionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "dispatchMediaKeyEvent, pid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", event="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_0
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isUserSetupComplete()Z

    move-result v7

    if-nez v7, :cond_2

    .line 775
    const-string/jumbo v7, "MediaSessionService"

    const-string/jumbo v8, "Not dispatching media key event because user setup is in progress."

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 804
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 777
    return-void

    .line 760
    .end local v0    # "pid":I
    .end local v2    # "token":J
    .end local v4    # "uid":I
    :cond_1
    const-string/jumbo v7, "MediaSessionService"

    const-string/jumbo v8, "Attempted to dispatch null or non-media key event."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    return-void

    .line 780
    .restart local v0    # "pid":I
    .restart local v2    # "token":J
    .restart local v4    # "uid":I
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isUserSetupComplete()Z

    move-result v7

    if-nez v7, :cond_3

    .line 783
    const-string/jumbo v7, "MediaSessionService"

    const-string/jumbo v8, "Not dispatching media key event because user setup is in progress."

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 804
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 785
    return-void

    .line 788
    :cond_3
    :try_start_2
    iget-object v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v7}, Lcom/android/server/media/MediaSessionService;->-get9(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 791
    :try_start_3
    iget-object v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v7}, Lcom/android/server/media/MediaSessionService;->-get15(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/media/MediaSessionService$UserRecord;

    .line 792
    .local v5, "ur":Lcom/android/server/media/MediaSessionService$UserRecord;
    if-eqz v5, :cond_4

    .line 793
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get0(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/app/PendingIntent;

    move-result-object v7

    if-nez v7, :cond_6

    .line 794
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get1(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/content/ComponentName;

    move-result-object v7

    if-nez v7, :cond_5

    const/4 v6, 0x1

    .line 795
    .local v6, "useNotPlayingSessions":Z
    :goto_0
    iget-object v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v7}, Lcom/android/server/media/MediaSessionService;->-get12(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v7

    .line 796
    iget-object v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v9}, Lcom/android/server/media/MediaSessionService;->-get4(Lcom/android/server/media/MediaSessionService;)I

    move-result v9

    .line 795
    invoke-virtual {v7, v9, v6}, Lcom/android/server/media/MediaSessionStack;->getDefaultMediaButtonSession(IZ)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v1

    .line 797
    .local v1, "session":Lcom/android/server/media/MediaSessionRecord;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isVoiceKey(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 798
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->handleVoiceKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 804
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 758
    return-void

    .line 792
    .end local v1    # "session":Lcom/android/server/media/MediaSessionRecord;
    .end local v6    # "useNotPlayingSessions":Z
    :cond_4
    const/4 v6, 0x1

    .restart local v6    # "useNotPlayingSessions":Z
    goto :goto_0

    .line 794
    .end local v6    # "useNotPlayingSessions":Z
    :cond_5
    const/4 v6, 0x0

    .restart local v6    # "useNotPlayingSessions":Z
    goto :goto_0

    .line 793
    .end local v6    # "useNotPlayingSessions":Z
    :cond_6
    const/4 v6, 0x0

    .restart local v6    # "useNotPlayingSessions":Z
    goto :goto_0

    .line 800
    .restart local v1    # "session":Lcom/android/server/media/MediaSessionRecord;
    :cond_7
    :try_start_5
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 788
    .end local v1    # "session":Lcom/android/server/media/MediaSessionRecord;
    .end local v5    # "ur":Lcom/android/server/media/MediaSessionService$UserRecord;
    .end local v6    # "useNotPlayingSessions":Z
    :catchall_0
    move-exception v7

    :try_start_6
    monitor-exit v8

    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 803
    :catchall_1
    move-exception v7

    .line 804
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 803
    throw v7
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 844
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v3}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 846
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Permission Denial: can\'t dump MediaSessionService from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 847
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 846
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 848
    const-string/jumbo v4, ", uid="

    .line 846
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 848
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 846
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 849
    return-void

    .line 852
    :cond_0
    const-string/jumbo v3, "MEDIA SESSION SERVICE (dumpsys media_session)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 853
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 855
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-get9(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 856
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->-get14(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " sessions listeners."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 857
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-get1(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 858
    .local v0, "count":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " Sessions:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 859
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 860
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-get1(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionRecord;

    const-string/jumbo v5, ""

    invoke-virtual {v3, p2, v5}, Lcom/android/server/media/MediaSessionRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 861
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 859
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 863
    :cond_1
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-get12(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v3

    const-string/jumbo v5, ""

    invoke-virtual {v3, p2, v5}, Lcom/android/server/media/MediaSessionStack;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 865
    const-string/jumbo v3, "User Records:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 866
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-get15(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 867
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 868
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-get15(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->-get15(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionService$UserRecord;

    .line 869
    .local v2, "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    const-string/jumbo v3, ""

    invoke-virtual {v2, p2, v3}, Lcom/android/server/media/MediaSessionService$UserRecord;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 867
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2    # "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    :cond_2
    monitor-exit v4

    .line 843
    return-void

    .line 855
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getSessions(Landroid/content/ComponentName;I)Ljava/util/List;
    .locals 11
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 680
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 681
    .local v2, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 682
    .local v8, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 685
    .local v6, "token":J
    :try_start_0
    invoke-direct {p0, p1, p2, v2, v8}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->verifySessionsRequest(Landroid/content/ComponentName;III)I

    move-result v4

    .line 686
    .local v4, "resolvedUserId":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 687
    .local v0, "binders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    iget-object v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v9}, Lcom/android/server/media/MediaSessionService;->-get9(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 688
    :try_start_1
    iget-object v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v9}, Lcom/android/server/media/MediaSessionService;->-get12(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/android/server/media/MediaSessionStack;->getActiveSessions(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 690
    .local v3, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 691
    .local v5, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 692
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v9}, Lcom/android/server/media/MediaSessionRecord;->getControllerBinder()Landroid/media/session/ISessionController;

    move-result-object v9

    invoke-interface {v9}, Landroid/media/session/ISessionController;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 691
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 697
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 695
    return-object v0

    .line 687
    .end local v1    # "i":I
    .end local v3    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    .end local v5    # "size":I
    :catchall_0
    move-exception v9

    :try_start_3
    monitor-exit v10

    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 696
    .end local v0    # "binders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .end local v4    # "resolvedUserId":I
    :catchall_1
    move-exception v9

    .line 697
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 696
    throw v9
.end method

.method public isGlobalPriorityActive()Z
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-get12(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionStack;->isGlobalPriorityActive()Z

    move-result v0

    return v0
.end method

.method public removeSessionsListener(Landroid/media/session/IActiveSessionsListener;)V
    .locals 6
    .param p1, "listener"    # Landroid/media/session/IActiveSessionsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 734
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-get9(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 735
    :try_start_0
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3, p1}, Lcom/android/server/media/MediaSessionService;->-wrap1(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;)I

    move-result v1

    .line 736
    .local v1, "index":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 737
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-get14(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 739
    .local v2, "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_start_1
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->-get1(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)Landroid/media/session/IActiveSessionsListener;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v2, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :cond_0
    :goto_0
    monitor-exit v4

    .line 733
    return-void

    .line 734
    .end local v1    # "index":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 740
    .restart local v1    # "index":I
    .restart local v2    # "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public setRemoteVolumeController(Landroid/media/IRemoteVolumeController;)V
    .locals 6
    .param p1, "rvc"    # Landroid/media/IRemoteVolumeController;

    .prologue
    .line 826
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 827
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 828
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 830
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    const-string/jumbo v5, "listen for volume changes"

    invoke-static {v4, v5, v0, v1}, Lcom/android/server/media/MediaSessionService;->-wrap5(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;II)V

    .line 831
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4, p1}, Lcom/android/server/media/MediaSessionService;->-set3(Lcom/android/server/media/MediaSessionService;Landroid/media/IRemoteVolumeController;)Landroid/media/IRemoteVolumeController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 833
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 825
    return-void

    .line 832
    :catchall_0
    move-exception v4

    .line 833
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 832
    throw v4
.end method
