.class public interface abstract Lcom/android/incallui/videotech/VideoTech;
.super Ljava/lang/Object;
.source "VideoTech.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/videotech/VideoTech$VideoTechListener;
    }
.end annotation


# virtual methods
.method public abstract acceptVideoRequest()V
.end method

.method public abstract acceptVideoRequest(I)V
.end method

.method public abstract acceptVideoRequestAsAudio()V
.end method

.method public abstract createVideoCallScreenDelegate(Landroid/content/Context;Lcom/android/incallui/video/protocol/VideoCallScreen;)Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;
.end method

.method public abstract declineVideoRequest()V
.end method

.method public abstract getRequestedVideoState()I
.end method

.method public abstract getSessionModificationState()I
.end method

.method public abstract getUpgradeToVideoState()I
.end method

.method public abstract getVideoCall()Landroid/telecom/InCallService$VideoCall;
.end method

.method public abstract isAvailable(Landroid/content/Context;)Z
.end method

.method public abstract isSelfManagedCamera()Z
.end method

.method public abstract isTransmitting()Z
.end method

.method public abstract isTransmittingOrReceiving()Z
.end method

.method public abstract onCallStateChanged(Landroid/content/Context;I)V
.end method

.method public abstract onRemovedFromCallList()V
.end method

.method public abstract pause()V
.end method

.method public abstract resumeTransmission()V
.end method

.method public abstract setCamera(Ljava/lang/String;)V
.end method

.method public abstract setDeviceOrientation(I)V
.end method

.method public abstract shouldUseSurfaceView()Z
.end method

.method public abstract stopTransmission()V
.end method

.method public abstract unpause()V
.end method

.method public abstract upgradeToVideo()V
.end method

.method public abstract upgradeToVideo(I)V
.end method
