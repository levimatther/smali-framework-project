.class public Lcom/android/incallui/AnswerScreenPresenter;
.super Ljava/lang/Object;
.source "AnswerScreenPresenter.java"

# interfaces
.implements Lcom/android/incallui/answer/protocol/AnswerScreenDelegate;
.implements Lcom/android/incallui/call/DialerCall$CannedTextResponsesLoadedListener;
.implements Lcom/android/incallui/InCallPresenter$InCallDetailsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/AnswerScreenPresenter$AnswerOnDisconnected;
    }
.end annotation


# static fields
.field private static final ACCEPT_REJECT_CALL_TIME_OUT_IN_MILLIS:I = 0x1388


# instance fields
.field private actionPerformedTimeMillis:J

.field private final answerScreen:Lcom/android/incallui/answer/protocol/AnswerScreen;

.field private final call:Lcom/android/incallui/call/DialerCall;

.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/incallui/answer/protocol/AnswerScreen;Lcom/android/incallui/call/DialerCall;)V
    .locals 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AnswerScreenPresenter.constructor"

    const/4 v2, 0x0

    .line 51
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/incallui/AnswerScreenPresenter;->context:Landroid/content/Context;

    .line 53
    invoke-static {p2}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/answer/protocol/AnswerScreen;

    iput-object v0, p0, Lcom/android/incallui/AnswerScreenPresenter;->answerScreen:Lcom/android/incallui/answer/protocol/AnswerScreen;

    .line 54
    invoke-static {p3}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/call/DialerCall;

    iput-object v0, p0, Lcom/android/incallui/AnswerScreenPresenter;->call:Lcom/android/incallui/call/DialerCall;

    .line 55
    invoke-direct {p0, p3}, Lcom/android/incallui/AnswerScreenPresenter;->isSmsResponseAllowed(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p3}, Lcom/android/incallui/call/DialerCall;->getCannedSmsResponses()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/incallui/answer/protocol/AnswerScreen;->setTextResponses(Ljava/util/List;)V

    .line 58
    :cond_0
    invoke-virtual {p3, p0}, Lcom/android/incallui/call/DialerCall;->addCannedTextResponsesLoadedListener(Lcom/android/incallui/call/DialerCall$CannedTextResponsesLoadedListener;)V

    .line 59
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/android/incallui/InCallPresenter;->addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 61
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/incallui/InCallPresenter;->getPseudoScreenState()Lcom/android/incallui/answerproximitysensor/PseudoScreenState;

    move-result-object p2

    .line 62
    invoke-static {p1, p3}, Lcom/android/incallui/answerproximitysensor/AnswerProximitySensor;->shouldUse(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    new-instance v0, Lcom/android/incallui/answerproximitysensor/AnswerProximitySensor;

    invoke-direct {v0, p1, p3, p2}, Lcom/android/incallui/answerproximitysensor/AnswerProximitySensor;-><init>(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;Lcom/android/incallui/answerproximitysensor/PseudoScreenState;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 65
    invoke-virtual {p2, p1}, Lcom/android/incallui/answerproximitysensor/PseudoScreenState;->setOn(Z)V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/AnswerScreenPresenter;)Lcom/android/incallui/call/DialerCall;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/incallui/AnswerScreenPresenter;->call:Lcom/android/incallui/call/DialerCall;

    return-object p0
.end method

.method private addTimeoutCheck()V
    .locals 3

    .line 248
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/incallui/AnswerScreenPresenter;->actionPerformedTimeMillis:J

    .line 249
    iget-object v0, p0, Lcom/android/incallui/AnswerScreenPresenter;->answerScreen:Lcom/android/incallui/answer/protocol/AnswerScreen;

    invoke-interface {v0}, Lcom/android/incallui/answer/protocol/AnswerScreen;->getAnswerScreenFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    new-instance v0, Lcom/android/incallui/-$$Lambda$AnswerScreenPresenter$-XoIl2UkBj1p8jbff3Km0TmDrvw;

    invoke-direct {v0, p0}, Lcom/android/incallui/-$$Lambda$AnswerScreenPresenter$-XoIl2UkBj1p8jbff3Km0TmDrvw;-><init>(Lcom/android/incallui/AnswerScreenPresenter;)V

    const-wide/16 v1, 0x1388

    invoke-static {v0, v1, v2}, Lcom/android/dialer/common/concurrent/ThreadUtil;->postDelayedOnUiThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private isSmsResponseAllowed(Lcom/android/incallui/call/DialerCall;)Z
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/android/incallui/AnswerScreenPresenter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/os/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    .line 244
    invoke-virtual {p1, v0}, Lcom/android/incallui/call/DialerCall;->can(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public isActionTimeout()Z
    .locals 4

    .line 71
    iget-wide v0, p0, Lcom/android/incallui/AnswerScreenPresenter;->actionPerformedTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 72
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/incallui/AnswerScreenPresenter;->actionPerformedTimeMillis:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$addTimeoutCheck$0$AnswerScreenPresenter()V
    .locals 3

    .line 252
    iget-object v0, p0, Lcom/android/incallui/AnswerScreenPresenter;->answerScreen:Lcom/android/incallui/answer/protocol/AnswerScreen;

    invoke-interface {v0}, Lcom/android/incallui/answer/protocol/AnswerScreen;->getAnswerScreenFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "AnswerScreenPresenter.addTimeoutCheck"

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "accept/reject call timed out, do nothing"

    .line 253
    invoke-static {v2, v1, v0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "accept/reject call timed out"

    .line 258
    invoke-static {v2, v1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->refreshUi()V

    return-void
.end method

.method public onAnswer(Z)V
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/android/incallui/AnswerScreenPresenter;->answerScreen:Lcom/android/incallui/answer/protocol/AnswerScreen;

    invoke-interface {v0}, Lcom/android/incallui/answer/protocol/AnswerScreen;->isVideoUpgradeRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/android/incallui/AnswerScreenPresenter;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VIDEO_CALL_REQUEST_ACCEPTED_AS_AUDIO:Lcom/android/dialer/logging/DialerImpression$Type;

    iget-object v1, p0, Lcom/android/incallui/AnswerScreenPresenter;->call:Lcom/android/incallui/call/DialerCall;

    .line 101
    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->getUniqueCallId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/AnswerScreenPresenter;->call:Lcom/android/incallui/call/DialerCall;

    .line 102
    invoke-virtual {v2}, Lcom/android/incallui/call/DialerCall;->getTimeAddedMs()J

    move-result-wide v2

    .line 99
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/android/dialer/logging/LoggingBindings;->logCallImpression(Lcom/android/dialer/logging/DialerImpression$Type;Ljava/lang/String;J)V

    .line 103
    iget-object p1, p0, Lcom/android/incallui/AnswerScreenPresenter;->call:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/incallui/videotech/VideoTech;->acceptVideoRequestAsAudio()V

    goto :goto_0

    .line 105
    :cond_0
    iget-object p1, p0, Lcom/android/incallui/AnswerScreenPresenter;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VIDEO_CALL_REQUEST_ACCEPTED:Lcom/android/dialer/logging/DialerImpression$Type;

    iget-object v1, p0, Lcom/android/incallui/AnswerScreenPresenter;->call:Lcom/android/incallui/call/DialerCall;

    .line 108
    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->getUniqueCallId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/AnswerScreenPresenter;->call:Lcom/android/incallui/call/DialerCall;

    .line 109
    invoke-virtual {v2}, Lcom/android/incallui/call/DialerCall;->getTimeAddedMs()J

    move-result-wide v2

    .line 106
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/android/dialer/logging/LoggingBindings;->logCallImpression(Lcom/android/dialer/logging/DialerImpression$Type;Ljava/lang/String;J)V

    .line 110
    invoke-static {}, Lcom/android/incallui/InCallLowBatteryListener;->getInstance()Lcom/android/incallui/InCallLowBatteryListener;

    move-result-object p1

    iget-object v0, p0, Lcom/android/incallui/AnswerScreenPresenter;->call:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {p1, v0}, Lcom/android/incallui/InCallLowBatteryListener;->onChangeToVideoCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 111
    iget-object p1, p0, Lcom/android/incallui/AnswerScreenPresenter;->call:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/incallui/videotech/VideoTech;->acceptVideoRequest()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 116
    iget-object p1, p0, Lcom/android/incallui/AnswerScreenPresenter;->call:Lcom/android/incallui/call/DialerCall;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/incallui/call/DialerCall;->answer(I)V

    goto :goto_0

    .line 118
    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallLowBatteryListener;->getInstance()Lcom/android/incallui/InCallLowBatteryListener;

    move-result-object p1

    iget-object v0, p0, Lcom/android/incallui/AnswerScreenPresenter;->call:Lcom/android/incallui/call/DialerCall;

    .line 119
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getVideoState()I

    move-result v1

    .line 118
    invoke-virtual {p1, v0, v1}, Lcom/android/incallui/InCallLowBatteryListener;->onAnswerIncomingCall(Lcom/android/incallui/call/DialerCall;I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 120
    iget-object p1, p0, Lcom/android/incallui/AnswerScreenPresenter;->call:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->answer()V

    .line 124
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/incallui/AnswerScreenPresenter;->addTimeoutCheck()V

    return-void
.end method

.method public onAnswerAndReleaseButtonDisabled()V
    .locals 1

    .line 158
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->getActiveCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->increaseSecondCallWithoutAnswerAndReleasedButtonTimes()V

    :cond_0
    return-void
.end method

.method public onAnswerAndReleaseButtonEnabled()V
    .locals 1

    .line 166
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->getActiveCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->increaseAnswerAndReleaseButtonDisplayedTimes()V

    :cond_0
    return-void
.end method

.method public onAnswerAndReleaseCall()V
    .locals 4

    const-string v0, "AnswerScreenPresenter.onAnswerAndReleaseCall"

    .line 144
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 145
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/call/CallList;->getActiveCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "activeCall == null"

    .line 147
    invoke-static {v0, v3, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    invoke-virtual {p0, v1}, Lcom/android/incallui/AnswerScreenPresenter;->onAnswer(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 150
    invoke-virtual {v1, v0}, Lcom/android/incallui/call/DialerCall;->setReleasedByAnsweringSecondCall(Z)V

    .line 151
    new-instance v0, Lcom/android/incallui/AnswerScreenPresenter$AnswerOnDisconnected;

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/AnswerScreenPresenter$AnswerOnDisconnected;-><init>(Lcom/android/incallui/AnswerScreenPresenter;Lcom/android/incallui/call/DialerCall;)V

    invoke-virtual {v1, v0}, Lcom/android/incallui/call/DialerCall;->addListener(Lcom/android/incallui/call/DialerCallListener;)V

    .line 152
    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->disconnect()V

    .line 154
    :goto_0
    invoke-direct {p0}, Lcom/android/incallui/AnswerScreenPresenter;->addTimeoutCheck()V

    return-void
.end method

.method public onAnswerScreenUnready()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/incallui/AnswerScreenPresenter;->call:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0, p0}, Lcom/android/incallui/call/DialerCall;->removeCannedTextResponsesLoadedListener(Lcom/android/incallui/call/DialerCall$CannedTextResponsesLoadedListener;)V

    .line 79
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    return-void
.end method

.method public onCannedTextResponsesLoaded(Lcom/android/incallui/call/DialerCall;)V
    .locals 1

    .line 174
    invoke-direct {p0, p1}, Lcom/android/incallui/AnswerScreenPresenter;->isSmsResponseAllowed(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/incallui/AnswerScreenPresenter;->answerScreen:Lcom/android/incallui/answer/protocol/AnswerScreen;

    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getCannedSmsResponses()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/incallui/answer/protocol/AnswerScreen;->setTextResponses(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onDetailsChanged(Lcom/android/incallui/call/DialerCall;Landroid/telecom/Call$Details;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string p2, "AnswerScreenPresenter.onDetailsChanged"

    const-string v1, "call: %s, details: %s"

    .line 190
    invoke-static {p2, v1, v0}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 193
    iget-object p2, p0, Lcom/android/incallui/AnswerScreenPresenter;->call:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 194
    iget-object p1, p0, Lcom/android/incallui/AnswerScreenPresenter;->answerScreen:Lcom/android/incallui/answer/protocol/AnswerScreen;

    invoke-interface {p1}, Lcom/android/incallui/answer/protocol/AnswerScreen;->updateAnswerScreenUi()V

    :cond_0
    return-void
.end method

.method public onDismissDialog()V
    .locals 1

    .line 84
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->onDismissDialog()V

    return-void
.end method

.method public onReject()V
    .locals 5

    .line 129
    iget-object v0, p0, Lcom/android/incallui/AnswerScreenPresenter;->answerScreen:Lcom/android/incallui/answer/protocol/AnswerScreen;

    invoke-interface {v0}, Lcom/android/incallui/answer/protocol/AnswerScreen;->isVideoUpgradeRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/incallui/AnswerScreenPresenter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->VIDEO_CALL_REQUEST_DECLINED:Lcom/android/dialer/logging/DialerImpression$Type;

    iget-object v2, p0, Lcom/android/incallui/AnswerScreenPresenter;->call:Lcom/android/incallui/call/DialerCall;

    .line 133
    invoke-virtual {v2}, Lcom/android/incallui/call/DialerCall;->getUniqueCallId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/AnswerScreenPresenter;->call:Lcom/android/incallui/call/DialerCall;

    .line 134
    invoke-virtual {v3}, Lcom/android/incallui/call/DialerCall;->getTimeAddedMs()J

    move-result-wide v3

    .line 131
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/dialer/logging/LoggingBindings;->logCallImpression(Lcom/android/dialer/logging/DialerImpression$Type;Ljava/lang/String;J)V

    .line 135
    iget-object v0, p0, Lcom/android/incallui/AnswerScreenPresenter;->call:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/videotech/VideoTech;->declineVideoRequest()V

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/AnswerScreenPresenter;->call:Lcom/android/incallui/call/DialerCall;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/call/DialerCall;->reject(ZLjava/lang/String;)V

    .line 139
    :goto_0
    invoke-direct {p0}, Lcom/android/incallui/AnswerScreenPresenter;->addTimeoutCheck()V

    return-void
.end method

.method public onRejectCallWithMessage(Ljava/lang/String;)V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/android/incallui/AnswerScreenPresenter;->call:Lcom/android/incallui/call/DialerCall;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/incallui/call/DialerCall;->reject(ZLjava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/incallui/AnswerScreenPresenter;->onDismissDialog()V

    .line 91
    invoke-direct {p0}, Lcom/android/incallui/AnswerScreenPresenter;->addTimeoutCheck()V

    return-void
.end method

.method public updateWindowBackgroundColor(F)V
    .locals 0

    .line 181
    iget-object p1, p0, Lcom/android/incallui/AnswerScreenPresenter;->answerScreen:Lcom/android/incallui/answer/protocol/AnswerScreen;

    invoke-interface {p1}, Lcom/android/incallui/answer/protocol/AnswerScreen;->getAnswerScreenFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/InCallActivity;

    return-void
.end method
