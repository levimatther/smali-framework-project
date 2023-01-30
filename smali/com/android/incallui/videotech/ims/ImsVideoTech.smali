.class public Lcom/android/incallui/videotech/ims/ImsVideoTech;
.super Ljava/lang/Object;
.source "ImsVideoTech.java"

# interfaces
.implements Lcom/android/incallui/videotech/VideoTech;


# instance fields
.field private final call:Landroid/telecom/Call;

.field private callback:Lcom/android/incallui/videotech/ims/ImsVideoCallCallback;

.field private final listener:Lcom/android/incallui/videotech/VideoTech$VideoTechListener;

.field private final logger:Lcom/android/dialer/logging/LoggingBindings;

.field private mRegisteredVideoCall:Landroid/telecom/InCallService$VideoCall;

.field private mUpgradeToVideoState:I

.field private paused:Z

.field private previousVideoState:I

.field private sessionModificationState:I

.field private transmissionStopped:Z


# direct methods
.method public constructor <init>(Lcom/android/dialer/logging/LoggingBindings;Lcom/android/incallui/videotech/VideoTech$VideoTechListener;Landroid/telecom/Call;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->sessionModificationState:I

    .line 44
    iput v0, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->previousVideoState:I

    const/4 v1, -0x1

    .line 45
    iput v1, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->mUpgradeToVideoState:I

    .line 46
    iput-boolean v0, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->paused:Z

    .line 53
    iput-boolean v0, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->transmissionStopped:Z

    .line 56
    iput-object p1, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->logger:Lcom/android/dialer/logging/LoggingBindings;

    .line 57
    iput-object p2, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->listener:Lcom/android/incallui/videotech/VideoTech$VideoTechListener;

    .line 58
    iput-object p3, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->call:Landroid/telecom/Call;

    return-void
.end method

.method private canPause()Z
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->call:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    const/high16 v1, 0x100000

    invoke-virtual {v0, v1}, Landroid/telecom/Call$Details;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->call:Landroid/telecom/Call;

    .line 348
    invoke-virtual {v0}, Landroid/telecom/Call;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 349
    invoke-virtual {p0}, Lcom/android/incallui/videotech/ims/ImsVideoTech;->isTransmittingOrReceiving()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getUnpausedVideoState(I)I
    .locals 0

    and-int/lit8 p0, p0, -0x5

    return p0
.end method


# virtual methods
.method public acceptVideoRequest()V
    .locals 5

    .line 217
    iget-object v0, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->callback:Lcom/android/incallui/videotech/ims/ImsVideoCallCallback;

    invoke-virtual {v0}, Lcom/android/incallui/videotech/ims/ImsVideoCallCallback;->getRequestedVideoState()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 218
    :goto_0
    invoke-static {v2}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "videoState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "ImsVideoTech.acceptUpgradeRequest"

    invoke-static {v4, v2, v3}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    iget-object v2, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->call:Landroid/telecom/Call;

    invoke-virtual {v2}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    new-instance v3, Landroid/telecom/VideoProfile;

    invoke-direct {v3, v0}, Landroid/telecom/VideoProfile;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 222
    iget-object v0, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->listener:Lcom/android/incallui/videotech/VideoTech$VideoTechListener;

    invoke-interface {v0, v1}, Lcom/android/incallui/videotech/VideoTech$VideoTechListener;->onUpgradedToVideo(Z)V

    .line 223
    iget-object v0, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->logger:Lcom/android/dialer/logging/LoggingBindings;

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->IMS_VIDEO_REQUEST_ACCEPTED:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {v0, v1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    return-void
.end method

.method public acceptVideoRequest(I)V
    .locals 4

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "videoState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ImsVideoTech.acceptVideoRequest"

    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    iget-object v0, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->call:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    new-instance v2, Landroid/telecom/VideoProfile;

    invoke-direct {v2, p1}, Landroid/telecom/VideoProfile;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 238
    invoke-static {p1}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 239
    iget-object p1, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->listener:Lcom/android/incallui/videotech/VideoTech$VideoTechListener;

    invoke-interface {p1, v1}, Lcom/android/incallui/videotech/VideoTech$VideoTechListener;->onUpgradedToVideo(Z)V

    :cond_0
    return-void
.end method

.method public acceptVideoRequestAsAudio()V
    .locals 3

    const-string v0, "ImsVideoTech.acceptVideoRequestAsAudio"

    .line 228
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->call:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    new-instance v1, Landroid/telecom/VideoProfile;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/telecom/VideoProfile;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 230
    iget-object v0, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->logger:Lcom/android/dialer/logging/LoggingBindings;

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->IMS_VIDEO_REQUEST_ACCEPTED_AS_AUDIO:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {v0, v1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    return-void
.end method

.method public createVideoCallScreenDelegate(Landroid/content/Context;Lcom/android/incallui/video/protocol/VideoCallScreen;)Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;
    .locals 0

    .line 115
    invoke-static {}, Lcom/android/dialer/common/Assert;->createUnsupportedOperationFailException()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public declineVideoRequest()V
    .locals 3

    const-string v0, "ImsVideoTech.declineUpgradeRequest"

    .line 245
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->call:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    new-instance v1, Landroid/telecom/VideoProfile;

    iget-object v2, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->call:Landroid/telecom/Call;

    .line 247
    invoke-virtual {v2}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/Call$Details;->getVideoState()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/telecom/VideoProfile;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 248
    iget-object v0, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->logger:Lcom/android/dialer/logging/LoggingBindings;

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->IMS_VIDEO_REQUEST_DECLINED:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {v0, v1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    return-void
.end method

.method public getRequestedVideoState()I
    .locals 4

    .line 334
    iget-object v0, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->callback:Lcom/android/incallui/videotech/ims/ImsVideoCallCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "ImsVideoTech.getRequestedVideoState"

    const-string v3, "callback is null"

    .line 335
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 338
    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/videotech/ims/ImsVideoCallCallback;->getRequestedVideoState()I

    move-result v0

    return v0
.end method

.method public getSessionModificationState()I
    .locals 1

    .line 172
    iget v0, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->sessionModificationState:I

    return v0
.end method

.method public getUpgradeToVideoState()I
    .locals 1

    .line 343
    iget v0, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->mUpgradeToVideoState:I

    return v0
.end method

.method public getVideoCall()Landroid/telecom/InCallService$VideoCall;
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->call:Landroid/telecom/Call;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->mRegisteredVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-virtual {v0}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->call:Landroid/telecom/Call;

    .line 121
    invoke-virtual {v0}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public isAvailable(Landroid/content/Context;)Z
    .locals 3

    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->call:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->call:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getVideoState()I

    move-result v0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    return v2

    .line 77
    :cond_2
    invoke-static {p1}, Lcom/android/dialer/util/CallUtil;->isVideoEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    .line 82
    :cond_3
    iget-object p1, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->call:Landroid/telecom/Call;

    invoke-virtual {p1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object p1

    const/16 v0, 0x200

    invoke-virtual {p1, v0}, Landroid/telecom/Call$Details;->can(I)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    .line 87
    :cond_4
    iget-object p1, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->call:Landroid/telecom/Call;

    invoke-virtual {p1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Landroid/telecom/Call$Details;->can(I)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v2
.end method

.method public isSelfManagedCamera()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTransmitting()Z
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->call:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getVideoState()I

    move-result v0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isTransmittingOrReceiving()Z
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->call:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getVideoState()I

    move-result v0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v0

    return v0
.end method

.method public onCallStateChanged(Landroid/content/Context;I)V
    .locals 3

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/incallui/videotech/ims/ImsVideoTech;->isAvailable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 130
    :cond_0
    iget-object p1, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->callback:Lcom/android/incallui/videotech/ims/ImsVideoCallCallback;

    if-nez p1, :cond_1

    .line 131
    new-instance p1, Lcom/android/incallui/videotech/ims/ImsVideoCallCallback;

    iget-object p2, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->logger:Lcom/android/dialer/logging/LoggingBindings;

    iget-object v0, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->call:Landroid/telecom/Call;

    iget-object v1, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->listener:Lcom/android/incallui/videotech/VideoTech$VideoTechListener;

    invoke-direct {p1, p2, v0, p0, v1}, Lcom/android/incallui/videotech/ims/ImsVideoCallCallback;-><init>(Lcom/android/dialer/logging/LoggingBindings;Landroid/telecom/Call;Lcom/android/incallui/videotech/ims/ImsVideoTech;Lcom/android/incallui/videotech/VideoTech$VideoTechListener;)V

    iput-object p1, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->callback:Lcom/android/incallui/videotech/ims/ImsVideoCallCallback;

    .line 133
    :cond_1
    iget-object p1, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->call:Landroid/telecom/Call;

    invoke-virtual {p1}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object p1

    iget-object p2, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->callback:Lcom/android/incallui/videotech/ims/ImsVideoCallCallback;

    invoke-virtual {p1, p2}, Landroid/telecom/InCallService$VideoCall;->registerCallback(Landroid/telecom/InCallService$VideoCall$Callback;)V

    .line 134
    iget-object p1, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->call:Landroid/telecom/Call;

    invoke-virtual {p1}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->mRegisteredVideoCall:Landroid/telecom/InCallService$VideoCall;

    .line 136
    invoke-virtual {p0}, Lcom/android/incallui/videotech/ims/ImsVideoTech;->getSessionModificationState()I

    move-result p1

    const/4 p2, 0x1

    const-string v0, "ImsVideoTech.onCallStateChanged"

    const/4 v1, 0x0

    if-ne p1, p2, :cond_2

    .line 138
    invoke-virtual {p0}, Lcom/android/incallui/videotech/ims/ImsVideoTech;->isTransmittingOrReceiving()Z

    move-result p1

    if-eqz p1, :cond_2

    new-array p1, v1, [Ljava/lang/Object;

    const-string/jumbo p2, "upgraded to video, clearing session modification state"

    .line 142
    invoke-static {v0, p2, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    invoke-virtual {p0, v1}, Lcom/android/incallui/videotech/ims/ImsVideoTech;->setSessionModificationState(I)V

    .line 148
    :cond_2
    iget-object p1, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->call:Landroid/telecom/Call;

    invoke-virtual {p1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getVideoState()I

    move-result p1

    .line 149
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "previousVideoState = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->previousVideoState:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " newVideoState = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p2, v2}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    iget p2, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->previousVideoState:I

    if-eq p1, p2, :cond_4

    .line 152
    iget-boolean v2, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->paused:Z

    if-eqz v2, :cond_3

    invoke-static {p2}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 153
    invoke-static {p1}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result p2

    if-nez p2, :cond_3

    .line 154
    iput-boolean v1, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->paused:Z

    .line 159
    :cond_3
    iget p2, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->sessionModificationState:I

    const/4 v2, 0x3

    if-ne p2, v2, :cond_4

    new-array p2, v1, [Ljava/lang/Object;

    const-string v2, "cancelling upgrade notification"

    .line 160
    invoke-static {v0, v2, p2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    invoke-virtual {p0, v1}, Lcom/android/incallui/videotech/ims/ImsVideoTech;->setSessionModificationState(I)V

    .line 164
    :cond_4
    iput p1, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->previousVideoState:I

    return-void
.end method

.method public onRemovedFromCallList()V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 5

    .line 283
    invoke-direct {p0}, Lcom/android/incallui/videotech/ims/ImsVideoTech;->canPause()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "ImsVideoTech.pause"

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->paused:Z

    if-nez v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v4, "sending pause request"

    .line 284
    invoke-static {v3, v4, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    iput-boolean v1, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->paused:Z

    .line 286
    iget-object v0, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->call:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getVideoState()I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    .line 287
    iget-boolean v1, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->transmissionStopped:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "overriding TX to false due to user request"

    .line 288
    invoke-static {v3, v2, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    and-int/lit8 v0, v0, -0x2

    .line 291
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->call:Landroid/telecom/Call;

    invoke-virtual {v1}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v1

    new-instance v2, Landroid/telecom/VideoProfile;

    invoke-direct {v2, v0}, Landroid/telecom/VideoProfile;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 296
    invoke-direct {p0}, Lcom/android/incallui/videotech/ims/ImsVideoTech;->canPause()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v2

    iget-boolean v2, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->paused:Z

    .line 297
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "not sending request: canPause: %b, paused: %b"

    .line 293
    invoke-static {v3, v1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public resumeTransmission()V
    .locals 3

    const-string v0, "ImsVideoTech.resumeTransmission"

    .line 270
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 272
    iput-boolean v0, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->transmissionStopped:Z

    .line 274
    iget-object v0, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->call:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/videotech/ims/ImsVideoTech;->getUnpausedVideoState(I)I

    move-result v0

    .line 275
    iget-object v1, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->call:Landroid/telecom/Call;

    invoke-virtual {v1}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v1

    new-instance v2, Landroid/telecom/VideoProfile;

    or-int/lit8 v0, v0, 0x1

    invoke-direct {v2, v0}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 276
    invoke-virtual {v1, v2}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    const/4 v0, 0x7

    .line 278
    invoke-virtual {p0, v0}, Lcom/android/incallui/videotech/ims/ImsVideoTech;->setSessionModificationState(I)V

    return-void
.end method

.method public setCamera(Ljava/lang/String;)V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->call:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telecom/InCallService$VideoCall;->setCamera(Ljava/lang/String;)V

    .line 324
    iget-object p1, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->call:Landroid/telecom/Call;

    invoke-virtual {p1}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telecom/InCallService$VideoCall;->requestCameraCapabilities()V

    return-void
.end method

.method public setDeviceOrientation(I)V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->call:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telecom/InCallService$VideoCall;->setDeviceOrientation(I)V

    return-void
.end method

.method setSessionModificationState(I)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 176
    iget v1, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->sessionModificationState:I

    .line 177
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "ImsVideoTech.setSessionModificationState"

    const-string v2, "%d -> %d"

    .line 176
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const/4 v0, -0x1

    .line 180
    iput v0, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->mUpgradeToVideoState:I

    .line 183
    :cond_0
    iget v0, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->sessionModificationState:I

    if-eq p1, v0, :cond_1

    .line 184
    iput p1, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->sessionModificationState:I

    .line 185
    iget-object p1, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->listener:Lcom/android/incallui/videotech/VideoTech$VideoTechListener;

    invoke-interface {p1}, Lcom/android/incallui/videotech/VideoTech$VideoTechListener;->onSessionModificationStateChanged()V

    :cond_1
    return-void
.end method

.method public shouldUseSurfaceView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public stopTransmission()V
    .locals 3

    const-string v0, "ImsVideoTech.stopTransmission"

    .line 258
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 260
    iput-boolean v0, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->transmissionStopped:Z

    .line 262
    iget-object v0, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->call:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/videotech/ims/ImsVideoTech;->getUnpausedVideoState(I)I

    move-result v0

    .line 263
    iget-object v1, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->call:Landroid/telecom/Call;

    invoke-virtual {v1}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v1

    new-instance v2, Landroid/telecom/VideoProfile;

    and-int/lit8 v0, v0, -0x2

    invoke-direct {v2, v0}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 264
    invoke-virtual {v1, v2}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    return-void
.end method

.method public unpause()V
    .locals 4

    .line 303
    invoke-direct {p0}, Lcom/android/incallui/videotech/ims/ImsVideoTech;->canPause()Z

    move-result v0

    const-string v1, "ImsVideoTech.unpause"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->paused:Z

    if-eqz v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "sending unpause request"

    .line 304
    invoke-static {v1, v3, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    iput-boolean v2, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->paused:Z

    .line 306
    iget-object v0, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->call:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/videotech/ims/ImsVideoTech;->getUnpausedVideoState(I)I

    move-result v0

    .line 307
    iget-boolean v3, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->transmissionStopped:Z

    if-eqz v3, :cond_0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "overriding TX to false due to user request"

    .line 308
    invoke-static {v1, v3, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    and-int/lit8 v0, v0, -0x2

    .line 311
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->call:Landroid/telecom/Call;

    invoke-virtual {v1}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v1

    new-instance v2, Landroid/telecom/VideoProfile;

    invoke-direct {v2, v0}, Landroid/telecom/VideoProfile;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 316
    invoke-direct {p0}, Lcom/android/incallui/videotech/ims/ImsVideoTech;->canPause()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->paused:Z

    .line 317
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "not sending request: canPause: %b, paused: %b"

    .line 313
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public upgradeToVideo()V
    .locals 4

    const-string v0, "ImsVideoTech.upgradeToVideo"

    .line 191
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 192
    iput v0, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->mUpgradeToVideoState:I

    .line 193
    iget-object v1, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->call:Landroid/telecom/Call;

    invoke-virtual {v1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getVideoState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/videotech/ims/ImsVideoTech;->getUnpausedVideoState(I)I

    move-result v1

    .line 194
    iget-object v2, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->call:Landroid/telecom/Call;

    invoke-virtual {v2}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    new-instance v3, Landroid/telecom/VideoProfile;

    or-int/2addr v0, v1

    invoke-direct {v3, v0}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 195
    invoke-virtual {v2, v3}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    const/4 v0, 0x1

    .line 197
    invoke-virtual {p0, v0}, Lcom/android/incallui/videotech/ims/ImsVideoTech;->setSessionModificationState(I)V

    .line 198
    iget-object v0, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->logger:Lcom/android/dialer/logging/LoggingBindings;

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->IMS_VIDEO_UPGRADE_REQUESTED:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {v0, v1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    return-void
.end method

.method public upgradeToVideo(I)V
    .locals 3

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "videostate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ImsVideoTech.upgradeToVideo"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    iput p1, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->mUpgradeToVideoState:I

    .line 206
    invoke-static {p1}, Lcom/android/incallui/videotech/ims/ImsVideoTech;->getUnpausedVideoState(I)I

    move-result v0

    .line 207
    iget-object v1, p0, Lcom/android/incallui/videotech/ims/ImsVideoTech;->call:Landroid/telecom/Call;

    invoke-virtual {v1}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v1

    new-instance v2, Landroid/telecom/VideoProfile;

    or-int/2addr v0, p1

    invoke-direct {v2, v0}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 208
    invoke-virtual {v1, v2}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    if-nez p1, :cond_0

    const/4 p1, 0x7

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 210
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/incallui/videotech/ims/ImsVideoTech;->setSessionModificationState(I)V

    return-void
.end method
