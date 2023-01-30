.class public Lcom/android/incallui/videotech/ims/ImsVideoCallCallback;
.super Landroid/telecom/InCallService$VideoCall$Callback;
.source "ImsVideoCallCallback.java"


# static fields
.field private static final CLEAR_FAILED_REQUEST_TIMEOUT_MILLIS:I = 0xfa0


# instance fields
.field private final call:Landroid/telecom/Call;

.field private final handler:Landroid/os/Handler;

.field private final listener:Lcom/android/incallui/videotech/VideoTech$VideoTechListener;

.field private final logger:Lcom/android/dialer/logging/LoggingBindings;

.field private requestedVideoState:I

.field private final videoTech:Lcom/android/incallui/videotech/ims/ImsVideoTech;


# direct methods
.method constructor <init>(Lcom/android/dialer/logging/LoggingBindings;Landroid/telecom/Call;Lcom/android/incallui/videotech/ims/ImsVideoTech;Lcom/android/incallui/videotech/VideoTech$VideoTechListener;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroid/telecom/InCallService$VideoCall$Callback;-><init>()V

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/videotech/ims/ImsVideoCallCallback;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/android/incallui/videotech/ims/ImsVideoCallCallback;->requestedVideoState:I

    .line 52
    iput-object p1, p0, Lcom/android/incallui/videotech/ims/ImsVideoCallCallback;->logger:Lcom/android/dialer/logging/LoggingBindings;

    .line 53
    iput-object p2, p0, Lcom/android/incallui/videotech/ims/ImsVideoCallCallback;->call:Landroid/telecom/Call;

    .line 54
    iput-object p3, p0, Lcom/android/incallui/videotech/ims/ImsVideoCallCallback;->videoTech:Lcom/android/incallui/videotech/ims/ImsVideoTech;

    .line 55
    iput-object p4, p0, Lcom/android/incallui/videotech/ims/ImsVideoCallCallback;->listener:Lcom/android/incallui/videotech/VideoTech$VideoTechListener;

    return-void
.end method

.method private getSessionModificationStateFromTelecomStatus(I)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x5

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 v4, 0x3

    if-eq p1, v4, :cond_2

    const/4 v4, 0x4

    if-eq p1, v4, :cond_1

    if-eq p1, v2, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    .line 191
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "ImsVideoCallCallback.getSessionModificationStateFromTelecomStatus"

    const-string/jumbo v0, "unknown status: %d"

    .line 188
    invoke-static {p1, v0, v1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_0
    const/4 p1, 0x6

    return p1

    :cond_1
    return v4

    .line 178
    :cond_2
    iget-object p1, p0, Lcom/android/incallui/videotech/ims/ImsVideoCallCallback;->call:Landroid/telecom/Call;

    invoke-virtual {p1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getVideoState()I

    move-result p1

    invoke-static {p1}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result p1

    if-eqz p1, :cond_3

    return v3

    :cond_3
    return v2

    :cond_4
    return v0
.end method


# virtual methods
.method getRequestedVideoState()I
    .locals 1

    .line 232
    iget v0, p0, Lcom/android/incallui/videotech/ims/ImsVideoCallCallback;->requestedVideoState:I

    return v0
.end method

.method public synthetic lambda$onSessionModifyResponseReceived$0$ImsVideoCallCallback(I)V
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/android/incallui/videotech/ims/ImsVideoCallCallback;->videoTech:Lcom/android/incallui/videotech/ims/ImsVideoTech;

    invoke-virtual {v0}, Lcom/android/incallui/videotech/ims/ImsVideoTech;->getSessionModificationState()I

    move-result v0

    const-string v1, "ImsVideoCallCallback.onSessionModifyResponseReceived"

    const/4 v2, 0x0

    if-ne v0, p1, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "clearing state"

    .line 159
    invoke-static {v1, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    iget-object p1, p0, Lcom/android/incallui/videotech/ims/ImsVideoCallCallback;->videoTech:Lcom/android/incallui/videotech/ims/ImsVideoTech;

    invoke-virtual {p1, v2}, Lcom/android/incallui/videotech/ims/ImsVideoTech;->setSessionModificationState(I)V

    goto :goto_0

    :cond_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "session modification state has changed, not clearing state"

    .line 162
    invoke-static {v1, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onCallDataUsageChanged(J)V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 220
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    const-string p1, "ImsVideoCallCallback.onCallDataUsageChanged"

    const-string p2, "dataUsage: %d"

    invoke-static {p1, p2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onCallSessionEvent(I)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/android/incallui/videotech/ims/ImsVideoCallCallback;->listener:Lcom/android/incallui/videotech/VideoTech$VideoTechListener;

    invoke-interface {v0, p1}, Lcom/android/incallui/videotech/VideoTech$VideoTechListener;->onCallSessionEvent(I)V

    return-void
.end method

.method public onCameraCapabilitiesChanged(Landroid/telecom/VideoProfile$CameraCapabilities;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/incallui/videotech/ims/ImsVideoCallCallback;->listener:Lcom/android/incallui/videotech/VideoTech$VideoTechListener;

    .line 227
    invoke-virtual {p1}, Landroid/telecom/VideoProfile$CameraCapabilities;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/telecom/VideoProfile$CameraCapabilities;->getHeight()I

    move-result p1

    .line 226
    invoke-interface {v0, v1, p1}, Lcom/android/incallui/videotech/VideoTech$VideoTechListener;->onCameraDimensionsChanged(II)V

    :cond_0
    return-void
.end method

.method public onPeerDimensionsChanged(II)V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/android/incallui/videotech/ims/ImsVideoCallCallback;->listener:Lcom/android/incallui/videotech/VideoTech$VideoTechListener;

    invoke-interface {v0, p1, p2}, Lcom/android/incallui/videotech/VideoTech$VideoTechListener;->onPeerDimensionsChanged(II)V

    return-void
.end method

.method public onSessionModifyRequestReceived(Landroid/telecom/VideoProfile;)V
    .locals 4

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "videoProfile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ImsVideoCallCallback.onSessionModifyRequestReceived"

    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/android/incallui/videotech/ims/ImsVideoCallCallback;->call:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/videotech/ims/ImsVideoTech;->getUnpausedVideoState(I)I

    move-result v0

    .line 64
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result p1

    invoke-static {p1}, Lcom/android/incallui/videotech/ims/ImsVideoTech;->getUnpausedVideoState(I)I

    move-result p1

    .line 66
    invoke-static {v0}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v2

    .line 67
    invoke-static {p1}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v3

    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "ImsVideoTech.onSessionModifyRequestReceived"

    const-string v1, "call downgraded to %d"

    .line 70
    invoke-static {p1, v1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-eq v0, p1, :cond_1

    .line 73
    iput p1, p0, Lcom/android/incallui/videotech/ims/ImsVideoCallCallback;->requestedVideoState:I

    .line 74
    iget-object p1, p0, Lcom/android/incallui/videotech/ims/ImsVideoCallCallback;->videoTech:Lcom/android/incallui/videotech/ims/ImsVideoTech;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/incallui/videotech/ims/ImsVideoTech;->setSessionModificationState(I)V

    .line 76
    iget-object p1, p0, Lcom/android/incallui/videotech/ims/ImsVideoCallCallback;->listener:Lcom/android/incallui/videotech/VideoTech$VideoTechListener;

    invoke-interface {p1}, Lcom/android/incallui/videotech/VideoTech$VideoTechListener;->onVideoUpgradeRequestReceived()V

    .line 77
    iget-object p1, p0, Lcom/android/incallui/videotech/ims/ImsVideoCallCallback;->logger:Lcom/android/dialer/logging/LoggingBindings;

    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->IMS_VIDEO_REQUEST_RECEIVED:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {p1, v0}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSessionModifyResponseReceived(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 6

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 95
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v3, 0x2

    aput-object p3, v0, v3

    iget-object v3, p0, Lcom/android/incallui/videotech/ims/ImsVideoCallCallback;->videoTech:Lcom/android/incallui/videotech/ims/ImsVideoTech;

    .line 98
    invoke-virtual {v3}, Lcom/android/incallui/videotech/ims/ImsVideoTech;->getSessionModificationState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v0, v4

    const-string v3, "ImsVideoCallCallback.onSessionModifyResponseReceived"

    const-string v5, "status: %d, requestedProfile: %s, responseProfile: %s, session modification state: %d"

    .line 92
    invoke-static {v3, v5, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    invoke-direct {p0, p1}, Lcom/android/incallui/videotech/ims/ImsVideoCallCallback;->getSessionModificationStateFromTelecomStatus(I)I

    move-result v0

    .line 100
    iget-object v5, p0, Lcom/android/incallui/videotech/ims/ImsVideoCallCallback;->videoTech:Lcom/android/incallui/videotech/ims/ImsVideoTech;

    invoke-virtual {v5}, Lcom/android/incallui/videotech/ims/ImsVideoTech;->getSessionModificationState()I

    move-result v5

    if-ne v5, v1, :cond_3

    .line 102
    iget-object v4, p0, Lcom/android/incallui/videotech/ims/ImsVideoCallCallback;->handler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    if-ne p1, v1, :cond_2

    .line 106
    iget-object p1, p0, Lcom/android/incallui/videotech/ims/ImsVideoCallCallback;->listener:Lcom/android/incallui/videotech/VideoTech$VideoTechListener;

    invoke-interface {p1, v2}, Lcom/android/incallui/videotech/VideoTech$VideoTechListener;->onUpgradedToVideo(Z)V

    if-eqz p2, :cond_5

    .line 112
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result p1

    invoke-static {p1}, Lcom/android/incallui/QtiCallUtils;->isVideoTxOnly(I)Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz p3, :cond_5

    .line 114
    invoke-virtual {p3}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result p1

    invoke-static {p1}, Lcom/android/incallui/QtiCallUtils;->isVideoTxOnly(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 116
    invoke-static {}, Lcom/android/incallui/BottomSheetHelper;->getInstance()Lcom/android/incallui/BottomSheetHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/incallui/BottomSheetHelper;->getPrimaryCallTracker()Lcom/android/incallui/PrimaryCallTracker;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 118
    invoke-virtual {p1}, Lcom/android/incallui/PrimaryCallTracker;->getPrimaryCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, -0x1

    .line 120
    invoke-virtual {p1, p2}, Lcom/android/incallui/call/DialerCall;->setCameraDir(I)V

    goto :goto_0

    :cond_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "error setting cam dir Call is null"

    .line 122
    invoke-static {v3, p2, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "error setting cam dir as primaryCallTracker is null: "

    .line 126
    invoke-static {v3, p2, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 132
    :cond_2
    iget-object p1, p0, Lcom/android/incallui/videotech/ims/ImsVideoCallCallback;->videoTech:Lcom/android/incallui/videotech/ims/ImsVideoTech;

    invoke-virtual {p1, v0}, Lcom/android/incallui/videotech/ims/ImsVideoTech;->setSessionModificationState(I)V

    goto :goto_0

    .line 134
    :cond_3
    iget-object p2, p0, Lcom/android/incallui/videotech/ims/ImsVideoCallCallback;->videoTech:Lcom/android/incallui/videotech/ims/ImsVideoTech;

    invoke-virtual {p2}, Lcom/android/incallui/videotech/ims/ImsVideoTech;->getSessionModificationState()I

    move-result p2

    if-ne p2, v4, :cond_4

    .line 136
    iput v2, p0, Lcom/android/incallui/videotech/ims/ImsVideoCallCallback;->requestedVideoState:I

    .line 137
    iget-object p1, p0, Lcom/android/incallui/videotech/ims/ImsVideoCallCallback;->videoTech:Lcom/android/incallui/videotech/ims/ImsVideoTech;

    invoke-virtual {p1, v2}, Lcom/android/incallui/videotech/ims/ImsVideoTech;->setSessionModificationState(I)V

    return-void

    .line 139
    :cond_4
    iget-object p2, p0, Lcom/android/incallui/videotech/ims/ImsVideoCallCallback;->videoTech:Lcom/android/incallui/videotech/ims/ImsVideoTech;

    invoke-virtual {p2}, Lcom/android/incallui/videotech/ims/ImsVideoTech;->getSessionModificationState()I

    move-result p2

    const/4 p3, 0x7

    if-ne p2, p3, :cond_6

    .line 141
    iget-object p2, p0, Lcom/android/incallui/videotech/ims/ImsVideoCallCallback;->videoTech:Lcom/android/incallui/videotech/ims/ImsVideoTech;

    invoke-direct {p0, p1}, Lcom/android/incallui/videotech/ims/ImsVideoCallCallback;->getSessionModificationStateFromTelecomStatus(I)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/incallui/videotech/ims/ImsVideoTech;->setSessionModificationState(I)V

    .line 156
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/android/incallui/videotech/ims/ImsVideoCallCallback;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/android/incallui/videotech/ims/-$$Lambda$ImsVideoCallCallback$TZ8uMZnW8epLkLOSCIxERxSHMu4;

    invoke-direct {p2, p0, v0}, Lcom/android/incallui/videotech/ims/-$$Lambda$ImsVideoCallCallback$TZ8uMZnW8epLkLOSCIxERxSHMu4;-><init>(Lcom/android/incallui/videotech/ims/ImsVideoCallCallback;I)V

    const-wide/16 v0, 0xfa0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_6
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "call is not waiting for response, doing nothing"

    .line 143
    invoke-static {v3, p2, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onVideoQualityChanged(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 215
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ImsVideoCallCallback.onVideoQualityChanged"

    const-string/jumbo v1, "videoQuality: %d"

    invoke-static {p1, v1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
