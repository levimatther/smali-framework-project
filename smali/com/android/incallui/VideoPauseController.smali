.class Lcom/android/incallui/VideoPauseController;
.super Ljava/lang/Object;
.source "VideoPauseController.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/InCallUiStateNotifierListener;


# static fields
.field private static sVideoPauseController:Lcom/android/incallui/VideoPauseController;


# instance fields
.field private mInCallPresenter:Lcom/android/incallui/InCallPresenter;

.field private mIsInBackground:Z

.field private mPrevCallState:I

.field private mPrimaryCall:Lcom/android/incallui/call/DialerCall;

.field private mWasVideoCall:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/android/incallui/VideoPauseController;->mPrevCallState:I

    .line 49
    iput-boolean v0, p0, Lcom/android/incallui/VideoPauseController;->mWasVideoCall:Z

    .line 55
    iput-boolean v0, p0, Lcom/android/incallui/VideoPauseController;->mIsInBackground:Z

    return-void
.end method

.method private bringToForeground()V
    .locals 3

    const-string v0, "VideoPauseController.bringToForeground"

    .line 314
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 315
    iget-object v1, p0, Lcom/android/incallui/VideoPauseController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 316
    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallPresenter;->bringToForeground(Z)V

    goto :goto_0

    :cond_0
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "InCallPresenter is null. Cannot bring UI to foreground"

    .line 318
    invoke-static {v0, v2, v1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private clear()V
    .locals 1

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcom/android/incallui/VideoPauseController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    .line 120
    iput-object v0, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    const/4 v0, 0x0

    .line 121
    iput v0, p0, Lcom/android/incallui/VideoPauseController;->mPrevCallState:I

    .line 122
    iput-boolean v0, p0, Lcom/android/incallui/VideoPauseController;->mWasVideoCall:Z

    .line 123
    iput-boolean v0, p0, Lcom/android/incallui/VideoPauseController;->mIsInBackground:Z

    return-void
.end method

.method static declared-synchronized getInstance()Lcom/android/incallui/VideoPauseController;
    .locals 2

    const-class v0, Lcom/android/incallui/VideoPauseController;

    monitor-enter v0

    .line 64
    :try_start_0
    sget-object v1, Lcom/android/incallui/VideoPauseController;->sVideoPauseController:Lcom/android/incallui/VideoPauseController;

    if-nez v1, :cond_0

    .line 65
    new-instance v1, Lcom/android/incallui/VideoPauseController;

    invoke-direct {v1}, Lcom/android/incallui/VideoPauseController;-><init>()V

    sput-object v1, Lcom/android/incallui/VideoPauseController;->sVideoPauseController:Lcom/android/incallui/VideoPauseController;

    .line 67
    :cond_0
    sget-object v1, Lcom/android/incallui/VideoPauseController;->sVideoPauseController:Lcom/android/incallui/VideoPauseController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static isIncomingCall(Lcom/android/incallui/call/DialerCall;)Z
    .locals 2

    if-eqz p0, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onPause(Z)V
    .locals 4

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onPause isInBackground "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/incallui/VideoPauseController;->mIsInBackground:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "VideoPauseController.onPause"

    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    iget-boolean v0, p0, Lcom/android/incallui/VideoPauseController;->mIsInBackground:Z

    if-eqz v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, " Ignoring... already paused"

    .line 303
    invoke-static {v3, v0, p1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 307
    iput-boolean v0, p0, Lcom/android/incallui/VideoPauseController;->mIsInBackground:Z

    if-eqz p1, :cond_1

    .line 309
    iget-object p1, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    invoke-direct {p0, p1, v1}, Lcom/android/incallui/VideoPauseController;->sendRequest(Lcom/android/incallui/call/DialerCall;Z)V

    :cond_1
    return-void
.end method

.method private onPrimaryCallChanged(Lcom/android/incallui/call/DialerCall;)V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 187
    iget-object v2, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    iget-boolean v2, p0, Lcom/android/incallui/VideoPauseController;->mIsInBackground:Z

    .line 192
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v0, v4

    const-string v2, "VideoPauseController.onPrimaryCallChanged"

    const-string v4, "new call: %s, old call: %s, mIsInBackground: %b"

    .line 187
    invoke-static {v2, v4, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 197
    invoke-static {p1}, Lcom/android/incallui/VideoPauseController;->videoCanPause(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-boolean v0, p0, Lcom/android/incallui/VideoPauseController;->mIsInBackground:Z

    if-nez v0, :cond_0

    .line 202
    invoke-direct {p0, p1, v3}, Lcom/android/incallui/VideoPauseController;->sendRequest(Lcom/android/incallui/call/DialerCall;Z)V

    goto :goto_0

    .line 203
    :cond_0
    invoke-static {p1}, Lcom/android/incallui/VideoPauseController;->isIncomingCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    invoke-static {v0}, Lcom/android/incallui/VideoPauseController;->videoCanPause(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/VideoPauseController;->sendRequest(Lcom/android/incallui/call/DialerCall;Z)V

    .line 209
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoPauseController;->updatePrimaryCallContext(Lcom/android/incallui/call/DialerCall;)V

    return-void

    .line 195
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private onResume(Z)V
    .locals 4

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onResume isInBackground "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/incallui/VideoPauseController;->mIsInBackground:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "VideoPauseController.onResume"

    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    iget-boolean v0, p0, Lcom/android/incallui/VideoPauseController;->mIsInBackground:Z

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, " Ignoring... already resumed"

    .line 282
    invoke-static {v3, v0, p1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 286
    :cond_0
    iput-boolean v1, p0, Lcom/android/incallui/VideoPauseController;->mIsInBackground:Z

    if-eqz p1, :cond_1

    .line 288
    iget-object p1, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/VideoPauseController;->sendRequest(Lcom/android/incallui/call/DialerCall;Z)V

    :cond_1
    return-void
.end method

.method private sendRequest(Lcom/android/incallui/call/DialerCall;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 336
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/incallui/videotech/VideoTech;->unpause()V

    goto :goto_0

    .line 338
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/incallui/videotech/VideoTech;->pause()V

    :goto_0
    return-void
.end method

.method private updatePrimaryCallContext(Lcom/android/incallui/call/DialerCall;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 242
    iput-object p1, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    const/4 p1, 0x0

    .line 243
    iput p1, p0, Lcom/android/incallui/VideoPauseController;->mPrevCallState:I

    .line 244
    iput-boolean p1, p0, Lcom/android/incallui/VideoPauseController;->mWasVideoCall:Z

    goto :goto_0

    .line 246
    :cond_0
    iput-object p1, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    .line 247
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/VideoPauseController;->mPrevCallState:I

    .line 248
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->isVideoCall()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/incallui/VideoPauseController;->mWasVideoCall:Z

    :goto_0
    return-void
.end method

.method private static videoCanPause(Lcom/android/incallui/call/DialerCall;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private wasDialing()Z
    .locals 1

    .line 88
    iget v0, p0, Lcom/android/incallui/VideoPauseController;->mPrevCallState:I

    invoke-static {v0}, Lcom/android/incallui/call/DialerCall$State;->isDialing(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/call/DialerCall;)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const-string p1, "VideoPauseController.onIncomingCall"

    const-string p2, "oldState: %s, newState: %s, call: %s"

    .line 221
    invoke-static {p1, p2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    iget-object p1, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    invoke-static {p3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 232
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/incallui/VideoPauseController;->onPrimaryCallChanged(Lcom/android/incallui/call/DialerCall;)V

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/call/CallList;)V
    .locals 4

    .line 137
    sget-object p1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, p1, :cond_0

    .line 138
    invoke-virtual {p3}, Lcom/android/incallui/call/CallList;->getIncomingCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p1

    goto :goto_0

    .line 139
    :cond_0
    sget-object p1, Lcom/android/incallui/InCallPresenter$InCallState;->WAITING_FOR_ACCOUNT:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, p1, :cond_1

    .line 140
    invoke-virtual {p3}, Lcom/android/incallui/call/CallList;->getWaitingForAccountCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p1

    goto :goto_0

    .line 141
    :cond_1
    sget-object p1, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, p1, :cond_2

    .line 142
    invoke-virtual {p3}, Lcom/android/incallui/call/CallList;->getPendingOutgoingCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p1

    goto :goto_0

    .line 143
    :cond_2
    sget-object p1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, p1, :cond_3

    .line 144
    invoke-virtual {p3}, Lcom/android/incallui/call/CallList;->getOutgoingCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p1

    goto :goto_0

    .line 146
    :cond_3
    invoke-virtual {p3}, Lcom/android/incallui/call/CallList;->getActiveCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p1

    .line 149
    :goto_0
    iget-object p2, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x1

    xor-int/2addr p2, p3

    .line 150
    invoke-static {p1}, Lcom/android/incallui/VideoPauseController;->videoCanPause(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 155
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 156
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, p3

    const/4 p3, 0x2

    iget-boolean v2, p0, Lcom/android/incallui/VideoPauseController;->mIsInBackground:Z

    .line 157
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, p3

    const-string p3, "VideoPauseController.onStateChange"

    const-string v2, "hasPrimaryCallChanged: %b, videoCanPause: %b, isInBackground: %b"

    .line 152
    invoke-static {p3, v2, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_4

    .line 160
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoPauseController;->onPrimaryCallChanged(Lcom/android/incallui/call/DialerCall;)V

    return-void

    .line 164
    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/VideoPauseController;->wasDialing()Z

    move-result p2

    if-eqz p2, :cond_5

    if-eqz v0, :cond_5

    iget-boolean p2, p0, Lcom/android/incallui/VideoPauseController;->mIsInBackground:Z

    if-eqz p2, :cond_5

    .line 167
    invoke-direct {p0}, Lcom/android/incallui/VideoPauseController;->bringToForeground()V

    goto :goto_1

    .line 168
    :cond_5
    iget-boolean p2, p0, Lcom/android/incallui/VideoPauseController;->mWasVideoCall:Z

    if-nez p2, :cond_6

    if-eqz v0, :cond_6

    iget-boolean p2, p0, Lcom/android/incallui/VideoPauseController;->mIsInBackground:Z

    if-eqz p2, :cond_6

    .line 171
    invoke-direct {p0}, Lcom/android/incallui/VideoPauseController;->bringToForeground()V

    .line 174
    :cond_6
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoPauseController;->updatePrimaryCallContext(Lcom/android/incallui/call/DialerCall;)V

    return-void
.end method

.method public onUiShowing(Z)V
    .locals 4

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " showing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "VideoPauseController.onUiShowing"

    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    if-nez v0, :cond_0

    return-void

    .line 263
    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz p1, :cond_2

    .line 265
    invoke-direct {p0, v1}, Lcom/android/incallui/VideoPauseController;->onResume(Z)V

    goto :goto_0

    .line 267
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/incallui/VideoPauseController;->onPause(Z)V

    :goto_0
    return-void
.end method

.method public setUp(Lcom/android/incallui/InCallPresenter;)V
    .locals 1

    const-string v0, "VideoPauseController.setUp"

    .line 98
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 99
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/InCallPresenter;

    iput-object p1, p0, Lcom/android/incallui/VideoPauseController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    .line 100
    invoke-virtual {p1, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 101
    iget-object p1, p0, Lcom/android/incallui/VideoPauseController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {p1, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 102
    invoke-static {}, Lcom/android/incallui/InCallUiStateNotifier;->getInstance()Lcom/android/incallui/InCallUiStateNotifier;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/incallui/InCallUiStateNotifier;->addListener(Lcom/android/incallui/InCallUiStateNotifierListener;)V

    return-void
.end method

.method public tearDown()V
    .locals 1

    const-string v0, "VideoPauseController.tearDown"

    .line 110
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/android/incallui/InCallUiStateNotifier;->getInstance()Lcom/android/incallui/InCallUiStateNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallUiStateNotifier;->removeListener(Lcom/android/incallui/InCallUiStateNotifierListener;)V

    .line 112
    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 113
    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 114
    invoke-direct {p0}, Lcom/android/incallui/VideoPauseController;->clear()V

    return-void
.end method
