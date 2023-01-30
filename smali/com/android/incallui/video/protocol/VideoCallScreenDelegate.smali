.class public interface abstract Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;
.super Ljava/lang/Object;
.source "VideoCallScreenDelegate.java"


# virtual methods
.method public abstract cancelAutoFullScreen()V
.end method

.method public abstract getDeviceOrientation()I
.end method

.method public abstract getLocalVideoSurfaceTexture()Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;
.end method

.method public abstract getRemoteVideoSurfaceTexture()Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;
.end method

.method public abstract initVideoCallScreenDelegate(Landroid/content/Context;Lcom/android/incallui/video/protocol/VideoCallScreen;)V
.end method

.method public abstract isUseDefaultImage()Z
.end method

.method public abstract onCameraPermissionDialogShown()V
.end method

.method public abstract onCameraPermissionGranted()V
.end method

.method public abstract onReadStoragePermissionResponse(Z)V
.end method

.method public abstract onSystemUiVisibilityChange(Z)V
.end method

.method public abstract onVideoCallScreenUiReady(Lcom/android/incallui/video/protocol/VideoCallScreen;)V
.end method

.method public abstract onVideoCallScreenUiUnready()V
.end method

.method public abstract resetAutoFullscreenTimer()V
.end method

.method public abstract setPauseImage()V
.end method

.method public abstract setSurfaceViews(Landroid/view/SurfaceView;Landroid/view/SurfaceView;)V
.end method

.method public abstract setUseDefaultImage(Z)V
.end method

.method public abstract shallTransmitStaticImage()Z
.end method

.method public abstract shouldShowCameraPermissionToast()Z
.end method
