.class public Lcom/android/incallui/RttCallPresenter;
.super Ljava/lang/Object;
.source "RttCallPresenter.java"

# interfaces
.implements Lcom/android/incallui/rtt/protocol/RttCallScreenDelegate;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/RttCallPresenter$RemoteMessageHandler;
    }
.end annotation


# instance fields
.field private handlerThread:Landroid/os/HandlerThread;

.field private remoteMessageHandler:Lcom/android/incallui/RttCallPresenter$RemoteMessageHandler;

.field private rttCall:Landroid/telecom/Call$RttCall;

.field private rttCallScreen:Lcom/android/incallui/rtt/protocol/RttCallScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkBom(Lcom/android/incallui/call/DialerCall;)V
    .locals 6

    const-string v0, "RttCallPresenter"

    const/4 v1, 0x3

    new-array v1, v1, [B

    .line 75
    fill-array-data v1, :array_0

    const/4 v2, 0x0

    .line 78
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "utf-8"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception writing BOM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x0

    .line 83
    :goto_0
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->isRttFirstActive()Z

    move-result v1

    .line 84
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkBom mIsRttFirstActive = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkBom remoteMessageHandler = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/incallui/RttCallPresenter;->remoteMessageHandler:Lcom/android/incallui/RttCallPresenter$RemoteMessageHandler;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/android/incallui/RttCallPresenter;->remoteMessageHandler:Lcom/android/incallui/RttCallPresenter$RemoteMessageHandler;

    if-eqz v1, :cond_0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkBom mBom = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p1, v2}, Lcom/android/incallui/call/DialerCall;->setRttFirstActive(Z)V

    .line 89
    iget-object p1, p0, Lcom/android/incallui/RttCallPresenter;->remoteMessageHandler:Lcom/android/incallui/RttCallPresenter$RemoteMessageHandler;

    invoke-virtual {p1, v3}, Lcom/android/incallui/RttCallPresenter$RemoteMessageHandler;->writeMessage(Ljava/lang/String;)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 1
        -0x11t
        -0x45t
        -0x41t
    .end array-data
.end method

.method private saveTranscript(Lcom/android/incallui/call/DialerCall;)V
    .locals 5

    const-string v0, "RttCallPresenter.saveTranscript"

    .line 120
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 121
    invoke-static {}, Lcom/android/dialer/rtt/RttTranscript;->newBuilder()Lcom/android/dialer/rtt/RttTranscript$Builder;

    move-result-object v1

    .line 123
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getNumber()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "set phoneNumber not null"

    .line 125
    invoke-static {v0, v3, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, ""

    .line 128
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getCreationTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/dialer/rtt/RttTranscript$Builder;->setId(Ljava/lang/String;)Lcom/android/dialer/rtt/RttTranscript$Builder;

    move-result-object v0

    .line 129
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getCreationTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/dialer/rtt/RttTranscript$Builder;->setTimestamp(J)Lcom/android/dialer/rtt/RttTranscript$Builder;

    move-result-object v0

    .line 130
    invoke-virtual {v0, v2}, Lcom/android/dialer/rtt/RttTranscript$Builder;->setNumber(Ljava/lang/String;)Lcom/android/dialer/rtt/RttTranscript$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/RttCallPresenter;->rttCallScreen:Lcom/android/incallui/rtt/protocol/RttCallScreen;

    .line 131
    invoke-interface {v2}, Lcom/android/incallui/rtt/protocol/RttCallScreen;->getRttTranscriptMessageList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/dialer/rtt/RttTranscript$Builder;->addAllMessages(Ljava/lang/Iterable;)Lcom/android/dialer/rtt/RttTranscript$Builder;

    .line 133
    invoke-virtual {v1}, Lcom/android/dialer/rtt/RttTranscript$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/rtt/RttTranscript;

    invoke-virtual {p1, v0}, Lcom/android/incallui/call/DialerCall;->setRttTranscript(Lcom/android/dialer/rtt/RttTranscript;)V

    return-void
.end method

.method private startListenOnRemoteMessage()V
    .locals 4

    .line 151
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/RttCallPresenter;->rttCallScreen:Lcom/android/incallui/rtt/protocol/RttCallScreen;

    invoke-interface {v1}, Lcom/android/incallui/rtt/protocol/RttCallScreen;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/call/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "RttCallPresenter.startListenOnRemoteMessage"

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "call does not exist"

    .line 153
    invoke-static {v2, v1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 156
    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getRttCall()Landroid/telecom/Call$RttCall;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/RttCallPresenter;->rttCall:Landroid/telecom/Call$RttCall;

    if-nez v0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "RTT Call is not started yet"

    .line 158
    invoke-static {v2, v1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/RttCallPresenter;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "already running"

    .line 162
    invoke-static {v2, v1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 165
    :cond_2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RttCallRemoteMessageHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/incallui/RttCallPresenter;->handlerThread:Landroid/os/HandlerThread;

    .line 166
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 167
    new-instance v0, Lcom/android/incallui/RttCallPresenter$RemoteMessageHandler;

    iget-object v1, p0, Lcom/android/incallui/RttCallPresenter;->handlerThread:Landroid/os/HandlerThread;

    .line 168
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/RttCallPresenter;->rttCall:Landroid/telecom/Call$RttCall;

    iget-object v3, p0, Lcom/android/incallui/RttCallPresenter;->rttCallScreen:Lcom/android/incallui/rtt/protocol/RttCallScreen;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/incallui/RttCallPresenter$RemoteMessageHandler;-><init>(Landroid/os/Looper;Landroid/telecom/Call$RttCall;Lcom/android/incallui/rtt/protocol/RttCallScreen;)V

    iput-object v0, p0, Lcom/android/incallui/RttCallPresenter;->remoteMessageHandler:Lcom/android/incallui/RttCallPresenter$RemoteMessageHandler;

    .line 169
    invoke-virtual {v0}, Lcom/android/incallui/RttCallPresenter$RemoteMessageHandler;->start()V

    return-void
.end method

.method private stopListenOnRemoteMessage()V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/android/incallui/RttCallPresenter;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/incallui/RttCallPresenter;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentCall()Lcom/android/incallui/call/DialerCall;
    .locals 2

    .line 107
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/RttCallPresenter;->rttCallScreen:Lcom/android/incallui/rtt/protocol/RttCallScreen;

    invoke-interface {v1}, Lcom/android/incallui/rtt/protocol/RttCallScreen;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/call/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    return-object v0
.end method

.method public initRttCallScreenDelegate(Lcom/android/incallui/rtt/protocol/RttCallScreen;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/android/incallui/RttCallPresenter;->rttCallScreen:Lcom/android/incallui/rtt/protocol/RttCallScreen;

    return-void
.end method

.method public onLocalMessage(Ljava/lang/String;)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/android/incallui/RttCallPresenter;->rttCall:Landroid/telecom/Call$RttCall;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "RttCallPresenter.onLocalMessage"

    const-string v1, "Rtt Call is not started yet"

    .line 54
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/RttCallPresenter;->remoteMessageHandler:Lcom/android/incallui/RttCallPresenter$RemoteMessageHandler;

    invoke-virtual {v0, p1}, Lcom/android/incallui/RttCallPresenter$RemoteMessageHandler;->writeMessage(Ljava/lang/String;)V

    return-void
.end method

.method public onRttCallScreenUiReady()V
    .locals 4

    const-string v0, "RttCallPresenter.onRttCallScreenUiReady"

    .line 62
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 64
    invoke-direct {p0}, Lcom/android/incallui/RttCallPresenter;->startListenOnRemoteMessage()V

    .line 65
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/RttCallPresenter;->rttCallScreen:Lcom/android/incallui/rtt/protocol/RttCallScreen;

    invoke-interface {v2}, Lcom/android/incallui/rtt/protocol/RttCallScreen;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/call/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/call/DialerCall;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rttCallScreen.onRestoreRttChat callId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/incallui/RttCallPresenter;->rttCallScreen:Lcom/android/incallui/rtt/protocol/RttCallScreen;

    invoke-interface {v3}, Lcom/android/incallui/rtt/protocol/RttCallScreen;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    invoke-direct {p0, v1}, Lcom/android/incallui/RttCallPresenter;->checkBom(Lcom/android/incallui/call/DialerCall;)V

    .line 70
    iget-object v0, p0, Lcom/android/incallui/RttCallPresenter;->rttCallScreen:Lcom/android/incallui/rtt/protocol/RttCallScreen;

    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->getRttTranscript()Lcom/android/dialer/rtt/RttTranscript;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/incallui/rtt/protocol/RttCallScreen;->onRestoreRttChat(Lcom/android/dialer/rtt/RttTranscript;)V

    :cond_0
    return-void
.end method

.method public onRttCallScreenUiUnready()V
    .locals 1

    const-string v0, "RttCallPresenter.onRttCallScreenUiUnready"

    .line 113
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 115
    invoke-direct {p0}, Lcom/android/incallui/RttCallPresenter;->stopListenOnRemoteMessage()V

    .line 116
    invoke-virtual {p0}, Lcom/android/incallui/RttCallPresenter;->onSaveRttTranscript()V

    return-void
.end method

.method public onSaveRttTranscript()V
    .locals 4

    const-string v0, "RttCallPresenter.onSaveRttTranscript"

    .line 96
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/RttCallPresenter;->rttCallScreen:Lcom/android/incallui/rtt/protocol/RttCallScreen;

    invoke-interface {v2}, Lcom/android/incallui/rtt/protocol/RttCallScreen;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/call/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/call/DialerCall;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveTranscript callId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/incallui/RttCallPresenter;->rttCallScreen:Lcom/android/incallui/rtt/protocol/RttCallScreen;

    invoke-interface {v3}, Lcom/android/incallui/rtt/protocol/RttCallScreen;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    invoke-direct {p0, v1}, Lcom/android/incallui/RttCallPresenter;->saveTranscript(Lcom/android/incallui/call/DialerCall;)V

    :cond_0
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/call/CallList;)V
    .locals 0

    const-string p1, "RttCallPresenter.onStateChange"

    .line 138
    invoke-static {p1}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 139
    sget-object p1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, p1, :cond_0

    .line 140
    invoke-direct {p0}, Lcom/android/incallui/RttCallPresenter;->startListenOnRemoteMessage()V

    .line 142
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object p1

    iget-object p2, p0, Lcom/android/incallui/RttCallPresenter;->rttCallScreen:Lcom/android/incallui/rtt/protocol/RttCallScreen;

    invoke-interface {p2}, Lcom/android/incallui/rtt/protocol/RttCallScreen;->getCallId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/incallui/call/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/call/DialerCall;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 144
    invoke-direct {p0, p1}, Lcom/android/incallui/RttCallPresenter;->checkBom(Lcom/android/incallui/call/DialerCall;)V

    :cond_0
    return-void
.end method
