.class public Lcom/android/incallui/videotech/empty/EmptyVideoTech;
.super Ljava/lang/Object;
.source "EmptyVideoTech.java"

# interfaces
.implements Lcom/android/incallui/videotech/VideoTech;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptVideoRequest()V
    .locals 0

    return-void
.end method

.method public acceptVideoRequest(I)V
    .locals 0

    return-void
.end method

.method public acceptVideoRequestAsAudio()V
    .locals 0

    return-void
.end method

.method public createVideoCallScreenDelegate(Landroid/content/Context;Lcom/android/incallui/video/protocol/VideoCallScreen;)Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;
    .locals 0

    .line 54
    invoke-static {}, Lcom/android/dialer/common/Assert;->createUnsupportedOperationFailException()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public declineVideoRequest()V
    .locals 0

    return-void
.end method

.method public getRequestedVideoState()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getSessionModificationState()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUpgradeToVideoState()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getVideoCall()Landroid/telecom/InCallService$VideoCall;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isAvailable(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isSelfManagedCamera()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTransmitting()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTransmittingOrReceiving()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCallStateChanged(Landroid/content/Context;I)V
    .locals 0

    return-void
.end method

.method public onRemovedFromCallList()V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public resumeTransmission()V
    .locals 0

    return-void
.end method

.method public setCamera(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setDeviceOrientation(I)V
    .locals 0

    return-void
.end method

.method public shouldUseSurfaceView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public stopTransmission()V
    .locals 0

    return-void
.end method

.method public unpause()V
    .locals 0

    return-void
.end method

.method public upgradeToVideo()V
    .locals 0

    return-void
.end method

.method public upgradeToVideo(I)V
    .locals 0

    return-void
.end method
