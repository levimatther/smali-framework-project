.class public Lcom/android/incallui/OrientationModeHandler;
.super Ljava/lang/Object;
.source "OrientationModeHandler.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallDetailsListener;
.implements Lcom/android/incallui/InCallPresenter$InCallUiListener;
.implements Lcom/android/incallui/PrimaryCallTracker$PrimaryCallChangeListener;
.implements Lcom/android/incallui/InCallPresenter$InCallEventListener;


# static fields
.field private static sOrientationModeHandler:Lcom/android/incallui/OrientationModeHandler;


# instance fields
.field private mOrientationMode:I

.field private mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

.field private mVideoState:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 60
    iput v0, p0, Lcom/android/incallui/OrientationModeHandler;->mOrientationMode:I

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/android/incallui/OrientationModeHandler;->mVideoState:I

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/OrientationModeHandler;
    .locals 2

    const-class v0, Lcom/android/incallui/OrientationModeHandler;

    monitor-enter v0

    .line 69
    :try_start_0
    sget-object v1, Lcom/android/incallui/OrientationModeHandler;->sOrientationModeHandler:Lcom/android/incallui/OrientationModeHandler;

    if-nez v1, :cond_0

    .line 70
    new-instance v1, Lcom/android/incallui/OrientationModeHandler;

    invoke-direct {v1}, Lcom/android/incallui/OrientationModeHandler;-><init>()V

    sput-object v1, Lcom/android/incallui/OrientationModeHandler;->sOrientationModeHandler:Lcom/android/incallui/OrientationModeHandler;

    .line 72
    :cond_0
    sget-object v1, Lcom/android/incallui/OrientationModeHandler;->sOrientationModeHandler:Lcom/android/incallui/OrientationModeHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static isVideoOrUpgrade(Lcom/android/incallui/call/DialerCall;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 235
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->hasSentVideoUpgradeRequest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->hasReceivedVideoUpgradeRequest()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private mayBeUpdateOrientationMode(Lcom/android/incallui/call/DialerCall;Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    const-string v1, "OrientationMode"

    .line 162
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v0

    .line 168
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mayBeUpdateOrientationMode : orientationMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mOrientationMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/incallui/OrientationModeHandler;->mOrientationMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p1, "mayBeUpdateOrientationMode : InCallActivity is null"

    .line 171
    invoke-static {p0, p1}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 175
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getVideoState()I

    move-result v1

    .line 176
    iget v2, p0, Lcom/android/incallui/OrientationModeHandler;->mVideoState:I

    if-eq v1, v2, :cond_2

    .line 177
    iput v1, p0, Lcom/android/incallui/OrientationModeHandler;->mVideoState:I

    .line 178
    invoke-virtual {p0, p1}, Lcom/android/incallui/OrientationModeHandler;->getOrientation(Lcom/android/incallui/call/DialerCall;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/OrientationModeHandler;->onScreenOrientationChanged(Lcom/android/incallui/call/DialerCall;I)V

    goto :goto_1

    .line 179
    :cond_2
    iget v1, p0, Lcom/android/incallui/OrientationModeHandler;->mOrientationMode:I

    if-eq p2, v1, :cond_3

    if-eq p2, v0, :cond_3

    .line 184
    iput p2, p0, Lcom/android/incallui/OrientationModeHandler;->mOrientationMode:I

    .line 185
    invoke-static {p2}, Lcom/android/incallui/QtiCallUtils;->toScreenOrientation(I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/OrientationModeHandler;->onScreenOrientationChanged(Lcom/android/incallui/call/DialerCall;I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private onScreenOrientationChanged(Lcom/android/incallui/call/DialerCall;I)V
    .locals 2

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScreenOrientationChanged: Call : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " screen orientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/android/incallui/OrientationModeHandler;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/incallui/PrimaryCallTracker;->isPrimaryCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Can\'t set requested orientation on a non-primary call"

    .line 200
    invoke-static {p0, p1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 203
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/incallui/InCallPresenter;->setInCallAllowsOrientationChange(I)Z

    return-void
.end method


# virtual methods
.method public getOrientation(Lcom/android/incallui/call/DialerCall;)I
    .locals 1

    .line 220
    invoke-static {p1}, Lcom/android/incallui/OrientationModeHandler;->isVideoOrUpgrade(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getActualState()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    .line 225
    iget p1, p0, Lcom/android/incallui/OrientationModeHandler;->mOrientationMode:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0xa

    goto :goto_0

    .line 227
    :cond_0
    invoke-static {p1}, Lcom/android/incallui/QtiCallUtils;->toScreenOrientation(I)I

    move-result p1

    :goto_0
    return p1

    :cond_1
    const/4 p1, 0x5

    return p1
.end method

.method public isOrientationDynamic()Z
    .locals 3

    .line 254
    iget-object v0, p0, Lcom/android/incallui/OrientationModeHandler;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 257
    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/PrimaryCallTracker;->getPrimaryCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 261
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/incallui/OrientationModeHandler;->mOrientationMode:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public onDetailsChanged(Lcom/android/incallui/call/DialerCall;Landroid/telecom/Call$Details;)V
    .locals 2

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDetailsChanged: - call: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "details: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string p1, "onDetailsChanged: details is null"

    .line 125
    invoke-static {p0, p1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/OrientationModeHandler;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/incallui/PrimaryCallTracker;->isPrimaryCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "onDetailsChanged: call is non-primary call"

    .line 129
    invoke-static {p0, p1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 132
    :cond_1
    invoke-virtual {p2}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/OrientationModeHandler;->mayBeUpdateOrientationMode(Lcom/android/incallui/call/DialerCall;Landroid/os/Bundle;)V

    return-void
.end method

.method public onFullscreenModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPrimaryCallChanged(Lcom/android/incallui/call/DialerCall;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 246
    iput p1, p0, Lcom/android/incallui/OrientationModeHandler;->mOrientationMode:I

    return-void

    .line 250
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/OrientationModeHandler;->mayBeUpdateOrientationMode(Lcom/android/incallui/call/DialerCall;Landroid/os/Bundle;)V

    return-void
.end method

.method public onSendStaticImageStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onSessionModificationStateChange(Lcom/android/incallui/call/DialerCall;)V
    .locals 1

    const-string v0, "onSessionModificationStateChange"

    .line 268
    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "Call is null"

    .line 271
    invoke-static {p0, p1}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/OrientationModeHandler;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/incallui/PrimaryCallTracker;->isPrimaryCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/videotech/VideoTech;->getSessionModificationState()I

    move-result v0

    if-nez v0, :cond_2

    .line 278
    invoke-virtual {p0, p1}, Lcom/android/incallui/OrientationModeHandler;->getOrientation(Lcom/android/incallui/call/DialerCall;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/OrientationModeHandler;->onScreenOrientationChanged(Lcom/android/incallui/call/DialerCall;I)V

    goto :goto_0

    :cond_1
    const-string p1, "Primary Call Tracker is null or call is not a primary call"

    .line 281
    invoke-static {p0, p1}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onUiShowing(Z)V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/android/incallui/OrientationModeHandler;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    const-string v1, "onUiShowing showing: "

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " PrimaryCallTracker is null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 146
    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/PrimaryCallTracker;->getPrimaryCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " call = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    .line 153
    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/OrientationModeHandler;->mayBeUpdateOrientationMode(Lcom/android/incallui/call/DialerCall;Landroid/os/Bundle;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setUp()V
    .locals 2

    .line 86
    new-instance v0, Lcom/android/incallui/PrimaryCallTracker;

    invoke-direct {v0}, Lcom/android/incallui/PrimaryCallTracker;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/OrientationModeHandler;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    .line 87
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/OrientationModeHandler;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 88
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/OrientationModeHandler;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 89
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 90
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addInCallUiListener(Lcom/android/incallui/InCallPresenter$InCallUiListener;)V

    .line 91
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addInCallEventListener(Lcom/android/incallui/InCallPresenter$InCallEventListener;)V

    .line 92
    iget-object v0, p0, Lcom/android/incallui/OrientationModeHandler;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/incallui/PrimaryCallTracker;->addListener(Lcom/android/incallui/PrimaryCallTracker$PrimaryCallChangeListener;)V

    return-void
.end method

.method public tearDown()V
    .locals 2

    .line 101
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/OrientationModeHandler;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 102
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/OrientationModeHandler;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 103
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 104
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeInCallUiListener(Lcom/android/incallui/InCallPresenter$InCallUiListener;)Z

    .line 105
    iget-object v0, p0, Lcom/android/incallui/OrientationModeHandler;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0, p0}, Lcom/android/incallui/PrimaryCallTracker;->removeListener(Lcom/android/incallui/PrimaryCallTracker$PrimaryCallChangeListener;)V

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/android/incallui/OrientationModeHandler;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    .line 109
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeInCallEventListener(Lcom/android/incallui/InCallPresenter$InCallEventListener;)V

    const/4 v0, -0x1

    .line 112
    iput v0, p0, Lcom/android/incallui/OrientationModeHandler;->mOrientationMode:I

    return-void
.end method
