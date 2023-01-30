.class public Lcom/android/incallui/VideoCallPresenter;
.super Ljava/lang/Object;
.source "VideoCallPresenter.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/InCallPresenter$InCallOrientationListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$InCallDetailsListener;
.implements Lcom/android/incallui/call/InCallVideoCallCallbackNotifier$SurfaceChangeListener;
.implements Lcom/android/incallui/InCallPresenter$InCallEventListener;
.implements Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;
.implements Lcom/android/incallui/InCallUiStateNotifierListener;
.implements Lcom/android/incallui/call/InCallVideoCallCallbackNotifier$VideoEventListener;
.implements Lcom/android/incallui/PictureModeHelper$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/VideoCallPresenter$PreviewSurfaceState;,
        Lcom/android/incallui/VideoCallPresenter$RemoteDelegate;,
        Lcom/android/incallui/VideoCallPresenter$LocalDelegate;
    }
.end annotation


# static fields
.field private static mIsIncomingVideoAvailable:Z = false

.field private static mIsVideoMode:Z = false

.field private static mPictureModeHelper:Lcom/android/incallui/PictureModeHelper; = null

.field private static sShallTransmitStaticImage:Z = false

.field private static sUseDefaultImage:Z = false


# instance fields
.field private isVideoCallScreenUiReady:Z

.field private mAutoFullScreenPending:Z

.field private mAutoFullscreenRunnable:Ljava/lang/Runnable;

.field private mAutoFullscreenTimeoutMillis:I

.field private mContext:Landroid/content/Context;

.field private mCurrentCallState:I

.field private mCurrentOrientationMode:I

.field private mCurrentVideoState:I

.field private mDeviceOrientation:I

.field private mFixedPreviewSurfaceSize:Landroid/graphics/Point;

.field private final mHandler:Landroid/os/Handler;

.field private mIsAutoFullscreenEnabled:Z

.field private mIsInBackground:Z

.field private mIsRemotelyHeld:Z

.field private mPreviewSurfaceState:I

.field private mPrimaryCall:Lcom/android/incallui/call/DialerCall;

.field private mVideoCall:Landroid/telecom/InCallService$VideoCall;

.field private mVideoCallScreen:Lcom/android/incallui/video/protocol/VideoCallScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 111
    iput v0, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentVideoState:I

    .line 113
    iput v0, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentCallState:I

    const/4 v1, -0x1

    .line 115
    iput v1, p0, Lcom/android/incallui/VideoCallPresenter;->mDeviceOrientation:I

    .line 117
    iput v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    .line 122
    iput-boolean v0, p0, Lcom/android/incallui/VideoCallPresenter;->mIsAutoFullscreenEnabled:Z

    .line 127
    iput v0, p0, Lcom/android/incallui/VideoCallPresenter;->mAutoFullscreenTimeoutMillis:I

    .line 131
    iput-boolean v0, p0, Lcom/android/incallui/VideoCallPresenter;->mAutoFullScreenPending:Z

    .line 134
    iput v1, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentOrientationMode:I

    .line 137
    iput-boolean v0, p0, Lcom/android/incallui/VideoCallPresenter;->mIsRemotelyHeld:Z

    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Lcom/android/incallui/VideoCallPresenter;->mIsInBackground:Z

    .line 169
    new-instance v0, Lcom/android/incallui/VideoCallPresenter$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/VideoCallPresenter$1;-><init>(Lcom/android/incallui/VideoCallPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mAutoFullscreenRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/VideoCallPresenter;)Z
    .locals 0

    .line 83
    iget-boolean p0, p0, Lcom/android/incallui/VideoCallPresenter;->mAutoFullScreenPending:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/incallui/VideoCallPresenter;Z)Z
    .locals 0

    .line 83
    iput-boolean p1, p0, Lcom/android/incallui/VideoCallPresenter;->mAutoFullScreenPending:Z

    return p1
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 83
    sget-boolean v0, Lcom/android/incallui/VideoCallPresenter;->mIsVideoMode:Z

    return v0
.end method

.method static synthetic access$1000()Lcom/android/incallui/PictureModeHelper;
    .locals 1

    .line 83
    sget-object v0, Lcom/android/incallui/VideoCallPresenter;->mPictureModeHelper:Lcom/android/incallui/PictureModeHelper;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/incallui/VideoCallPresenter;)Lcom/android/incallui/call/DialerCall;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/incallui/VideoCallPresenter;)Lcom/android/incallui/video/protocol/VideoCallScreen;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCallScreen:Lcom/android/incallui/video/protocol/VideoCallScreen;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/incallui/VideoCallPresenter;)Landroid/telecom/InCallService$VideoCall;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/incallui/VideoCallPresenter;)I
    .locals 0

    .line 83
    iget p0, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    return p0
.end method

.method static synthetic access$602(Lcom/android/incallui/VideoCallPresenter;I)I
    .locals 0

    .line 83
    iput p1, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/incallui/VideoCallPresenter;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->maybeEnableCamera()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/incallui/VideoCallPresenter;Landroid/telecom/InCallService$VideoCall;Z)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/VideoCallPresenter;->enableCamera(Landroid/telecom/InCallService$VideoCall;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/incallui/VideoCallPresenter;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->onSurfaceClick()V

    return-void
.end method

.method private adjustVideoMode(Lcom/android/incallui/call/DialerCall;)V
    .locals 8

    .line 1082
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    .line 1083
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getVideoState()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 1089
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const-string v4, "VideoCallPresenter.adjustVideoMode"

    const-string/jumbo v6, "videoCall: %s, videoState: %d"

    .line 1085
    invoke-static {v4, v6, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1090
    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCallScreen:Lcom/android/incallui/video/protocol/VideoCallScreen;

    if-nez v2, :cond_0

    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "error VideoCallScreen is null so returning"

    .line 1091
    invoke-static {v4, v0, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1097
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v2

    .line 1098
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/incallui/videotech/VideoTech;->getSessionModificationState()I

    move-result v6

    .line 1099
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->isRemotelyHeld()Z

    move-result v7

    .line 1095
    invoke-direct {p0, v1, v2, v6, v7}, Lcom/android/incallui/VideoCallPresenter;->showVideoUi(IIIZ)V

    if-eqz v0, :cond_3

    .line 1104
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getRemoteVideoSurfaceTexture()Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;->getSavedSurface()Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1106
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calling setDisplaySurface with: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1108
    invoke-virtual {v0, v2}, Landroid/telecom/InCallService$VideoCall;->setDisplaySurface(Landroid/view/Surface;)V

    .line 1111
    :cond_1
    iget v2, p0, Lcom/android/incallui/VideoCallPresenter;->mDeviceOrientation:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    move v3, v5

    :cond_2
    invoke-static {v3}, Lcom/android/dialer/common/Assert;->checkState(Z)V

    .line 1113
    iget v2, p0, Lcom/android/incallui/VideoCallPresenter;->mDeviceOrientation:I

    invoke-virtual {v0, v2}, Landroid/telecom/InCallService$VideoCall;->setDeviceOrientation(I)V

    .line 1116
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/incallui/videotech/VideoTech;->getSessionModificationState()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/VideoCallPresenter;->isCameraRequired(II)Z

    move-result v2

    .line 1114
    invoke-direct {p0, v0, v2}, Lcom/android/incallui/VideoCallPresenter;->enableCamera(Landroid/telecom/InCallService$VideoCall;Z)V

    .line 1120
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->shallTransmitStaticImage()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1123
    invoke-direct {p0, v0}, Lcom/android/incallui/VideoCallPresenter;->setPauseImage(Landroid/telecom/InCallService$VideoCall;)V

    .line 1126
    :cond_3
    iget v0, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentVideoState:I

    .line 1127
    iput v1, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentVideoState:I

    .line 1128
    sput-boolean v5, Lcom/android/incallui/VideoCallPresenter;->mIsVideoMode:Z

    .line 1132
    invoke-static {v0}, Lcom/android/incallui/VideoCallPresenter;->isVideoCall(I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v1}, Lcom/android/incallui/VideoCallPresenter;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1133
    invoke-virtual {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->maybeAutoEnterFullscreen(Lcom/android/incallui/call/DialerCall;)V

    :cond_4
    return-void
.end method

.method private changePreviewDimensions(II)V
    .locals 2

    .line 1340
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCallScreen:Lcom/android/incallui/video/protocol/VideoCallScreen;

    if-nez v0, :cond_0

    return-void

    .line 1344
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mFixedPreviewSurfaceSize:Landroid/graphics/Point;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    :goto_0
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 1346
    iget v1, v0, Landroid/graphics/Point;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, p2

    const/4 p2, 0x1

    iget v1, v0, Landroid/graphics/Point;->y:I

    .line 1347
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, p2

    const-string p2, "VideoCallPresenter.changePreviewDimensions"

    const-string/jumbo v1, "width: %d, height: %d"

    .line 1346
    invoke-static {p2, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1349
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getLocalVideoSurfaceTexture()Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;->setSurfaceDimensions(Landroid/graphics/Point;)V

    .line 1350
    iget-object p1, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCallScreen:Lcom/android/incallui/video/protocol/VideoCallScreen;

    invoke-interface {p1}, Lcom/android/incallui/video/protocol/VideoCallScreen;->onLocalVideoDimensionsChanged()V

    return-void
.end method

.method private changeVideoCall(Lcom/android/incallui/call/DialerCall;)V
    .locals 6

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1049
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 1050
    iget-object v3, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "VideoCallPresenter.changeVideoCall"

    const-string/jumbo v5, "videoCall: %s, mVideoCall: %s"

    invoke-static {v3, v5, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1055
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v4, v2

    .line 1057
    :goto_1
    iput-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    if-nez v0, :cond_2

    new-array p1, v2, [Ljava/lang/Object;

    const-string/jumbo v0, "video call or primary call is null. Return"

    .line 1059
    invoke-static {v3, v0, p1}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1063
    :cond_2
    invoke-static {p1}, Lcom/android/incallui/VideoCallPresenter;->shouldShowVideoUiForCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v4, :cond_3

    .line 1064
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->adjustVideoMode(Lcom/android/incallui/call/DialerCall;)V

    :cond_3
    return-void
.end method

.method private checkForCallStateChange(Lcom/android/incallui/call/DialerCall;)V
    .locals 6

    .line 863
    invoke-static {p1}, Lcom/android/incallui/VideoCallPresenter;->shouldShowVideoUiForCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    .line 864
    iget v1, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentCallState:I

    .line 865
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/incallui/VideoCallPresenter;->mIsRemotelyHeld:Z

    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->isRemotelyHeld()Z

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v4

    .line 866
    :goto_1
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->isRemotelyHeld()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/incallui/VideoCallPresenter;->mIsRemotelyHeld:Z

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 871
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v3

    .line 872
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x2

    .line 873
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->isVideoMode()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v3, "VideoCallPresenter.checkForCallStateChange"

    const-string v5, "shouldShowVideoUi: %b, hasCallStateChanged: %b, isVideoMode: %b"

    .line 868
    invoke-static {v3, v5, v2}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v1, :cond_2

    return-void

    :cond_2
    if-eqz v0, :cond_3

    .line 881
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;

    move-result-object v0

    .line 883
    invoke-virtual {v0}, Lcom/android/incallui/InCallCameraManager;->getActiveCameraId()Ljava/lang/String;

    move-result-object v1

    .line 884
    invoke-static {p1}, Lcom/android/incallui/VideoCallPresenter;->updateCameraSelection(Lcom/android/incallui/call/DialerCall;)V

    .line 885
    invoke-virtual {v0}, Lcom/android/incallui/InCallCameraManager;->getActiveCameraId()Ljava/lang/String;

    move-result-object v0

    .line 887
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/android/incallui/VideoCallPresenter;->isActiveVideoCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 888
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/android/incallui/VideoCallPresenter;->enableCamera(Landroid/telecom/InCallService$VideoCall;Z)V

    .line 894
    :cond_3
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getVideoState()I

    move-result v0

    .line 895
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v1

    .line 896
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/incallui/videotech/VideoTech;->getSessionModificationState()I

    move-result v2

    .line 897
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->isRemotelyHeld()Z

    move-result p1

    .line 893
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/incallui/VideoCallPresenter;->showVideoUi(IIIZ)V

    return-void
.end method

.method private checkForOrientationAllowedChange(Lcom/android/incallui/call/DialerCall;)V
    .locals 3

    .line 991
    invoke-static {}, Lcom/android/incallui/OrientationModeHandler;->getInstance()Lcom/android/incallui/OrientationModeHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/OrientationModeHandler;->getOrientation(Lcom/android/incallui/call/DialerCall;)I

    move-result v0

    .line 992
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " mCurrentOrientationMode : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentOrientationMode:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " orientation : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "VideoCallPresenter.checkForOrientationAllowedChange"

    invoke-static {v2, p1, v1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 994
    iget p1, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentOrientationMode:I

    if-eq v0, p1, :cond_0

    .line 995
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/incallui/InCallPresenter;->setInCallAllowsOrientationChange(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 996
    iput v0, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentOrientationMode:I

    :cond_0
    return-void
.end method

.method private checkForVideoCallChange(Lcom/android/incallui/call/DialerCall;)V
    .locals 4

    .line 1031
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 1032
    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "VideoCallPresenter.checkForVideoCallChange"

    const-string/jumbo v3, "videoCall: %s, mVideoCall: %s"

    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1037
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1038
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->changeVideoCall(Lcom/android/incallui/call/DialerCall;)V

    :cond_0
    return-void
.end method

.method private checkForVideoStateChange(Lcom/android/incallui/call/DialerCall;)V
    .locals 6

    .line 816
    invoke-static {p1}, Lcom/android/incallui/VideoCallPresenter;->shouldShowVideoUiForCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    .line 817
    iget v1, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentVideoState:I

    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getVideoState()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    .line 823
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v4

    .line 824
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 825
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->isVideoMode()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentVideoState:I

    .line 826
    invoke-static {v4}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    .line 827
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getVideoState()I

    move-result v4

    invoke-static {v4}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "VideoCallPresenter.checkForVideoStateChange"

    const-string v4, "shouldShowVideoUi: %b, hasVideoStateChanged: %b, isVideoMode: %b, previousVideoState: %s, newVideoState: %s"

    .line 819
    invoke-static {v3, v4, v2}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v1, :cond_1

    return-void

    .line 833
    :cond_1
    iget v1, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentVideoState:I

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/android/incallui/VideoCallPresenter;->isVideoCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 834
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->wakeUpScreen()V

    .line 837
    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->maybeUnsetPauseImage()V

    .line 838
    invoke-static {p1}, Lcom/android/incallui/VideoCallPresenter;->updateCameraSelection(Lcom/android/incallui/call/DialerCall;)V

    if-eqz v0, :cond_3

    .line 841
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->adjustVideoMode(Lcom/android/incallui/call/DialerCall;)V

    goto :goto_1

    .line 842
    :cond_3
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->isVideoMode()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 843
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->exitVideoMode()V

    :cond_4
    :goto_1
    return-void
.end method

.method public static cleanUp()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "VideoCallPresenter.cleanUp"

    const-string v3, ""

    .line 553
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 554
    sput-boolean v0, Lcom/android/incallui/VideoCallPresenter;->sShallTransmitStaticImage:Z

    .line 555
    sput-boolean v0, Lcom/android/incallui/VideoCallPresenter;->sUseDefaultImage:Z

    .line 556
    sput-boolean v0, Lcom/android/incallui/VideoCallPresenter;->mIsIncomingVideoAvailable:Z

    .line 557
    sput-boolean v0, Lcom/android/incallui/VideoCallPresenter;->mIsVideoMode:Z

    return-void
.end method

.method private enableCamera(Landroid/telecom/InCallService$VideoCall;Z)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1158
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-string v2, "VideoCallPresenter.enableCamera"

    const-string/jumbo v4, "videoCall: %s, enabling: %b"

    .line 1154
    invoke-static {v2, v4, v0}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string/jumbo p2, "videoCall is null."

    .line 1160
    invoke-static {v2, p2, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1164
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/videotech/utils/VideoUtils;->hasCameraPermissionAndShownPrivacyToast(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1166
    invoke-virtual {p1, v2}, Landroid/telecom/InCallService$VideoCall;->setCamera(Ljava/lang/String;)V

    .line 1167
    iput v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 1170
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/incallui/InCallPresenter;->getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;

    move-result-object p2

    .line 1171
    invoke-virtual {p2}, Lcom/android/incallui/InCallCameraManager;->getActiveCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/telecom/InCallService$VideoCall;->setCamera(Ljava/lang/String;)V

    .line 1172
    invoke-static {}, Lcom/android/incallui/InCallZoomController;->getInstance()Lcom/android/incallui/InCallZoomController;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/incallui/InCallCameraManager;->getActiveCameraId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/incallui/InCallZoomController;->onCameraEnabled(Ljava/lang/String;)V

    .line 1173
    iput v3, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    .line 1174
    invoke-virtual {p1}, Landroid/telecom/InCallService$VideoCall;->requestCameraCapabilities()V

    goto :goto_0

    .line 1176
    :cond_2
    iput v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    .line 1177
    invoke-virtual {p1, v2}, Landroid/telecom/InCallService$VideoCall;->setCamera(Ljava/lang/String;)V

    .line 1178
    invoke-static {}, Lcom/android/incallui/InCallZoomController;->getInstance()Lcom/android/incallui/InCallZoomController;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/incallui/InCallZoomController;->onCameraEnabled(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private exitVideoMode()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "VideoCallPresenter.exitVideoMode"

    const-string v3, ""

    .line 1184
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x3

    .line 1186
    invoke-direct {p0, v0, v1, v0, v0}, Lcom/android/incallui/VideoCallPresenter;->showVideoUi(IIIZ)V

    .line 1191
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-direct {p0, v1, v0}, Lcom/android/incallui/VideoCallPresenter;->enableCamera(Landroid/telecom/InCallService$VideoCall;Z)V

    .line 1192
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/InCallPresenter;->setFullScreen(Z)V

    .line 1193
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/incallui/InCallPresenter;->enableScreenTimeout(Z)V

    .line 1194
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    invoke-direct {p0, v1}, Lcom/android/incallui/VideoCallPresenter;->checkForOrientationAllowedChange(Lcom/android/incallui/call/DialerCall;)V

    .line 1202
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    if-eqz v3, :cond_0

    .line 1204
    invoke-static {v1}, Lcom/android/incallui/VideoCallPresenter;->isTransmissionEnabled(Lcom/android/incallui/call/DialerCall;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    .line 1205
    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v3, "setPauseImage(null)"

    .line 1206
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1210
    :cond_0
    sput-boolean v0, Lcom/android/incallui/VideoCallPresenter;->mIsVideoMode:Z

    return-void
.end method

.method public static getPictureModeHelper()Lcom/android/incallui/PictureModeHelper;
    .locals 1

    .line 1731
    sget-object v0, Lcom/android/incallui/VideoCallPresenter;->mPictureModeHelper:Lcom/android/incallui/PictureModeHelper;

    return-object v0
.end method

.method public static isActiveVideoCall(Lcom/android/incallui/call/DialerCall;)Z
    .locals 1

    .line 1644
    invoke-static {p0}, Lcom/android/incallui/VideoCallPresenter;->isVideoCall(Lcom/android/incallui/call/DialerCall;)Z

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

.method private static isAudioCall(Lcom/android/incallui/call/DialerCall;)Z
    .locals 2

    .line 1658
    invoke-static {}, Lcom/android/dialer/compat/CompatUtils;->isVideoCompatible()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p0, :cond_1

    .line 1662
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getVideoState()I

    move-result p0

    invoke-static {p0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static isBidirectionalVideoCall(Lcom/android/incallui/call/DialerCall;)Z
    .locals 1

    .line 1627
    invoke-static {}, Lcom/android/dialer/compat/CompatUtils;->isVideoCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getVideoState()I

    move-result p0

    invoke-static {p0}, Landroid/telecom/VideoProfile;->isBidirectional(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isCameraDirectionSet(Lcom/android/incallui/call/DialerCall;)Z
    .locals 1

    .line 449
    invoke-static {p0}, Lcom/android/incallui/VideoCallPresenter;->isVideoCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getCameraDir()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isCameraRequired()Z
    .locals 2

    .line 1069
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    if-eqz v0, :cond_0

    .line 1071
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getVideoState()I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    .line 1072
    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/videotech/VideoTech;->getSessionModificationState()I

    move-result v1

    .line 1070
    invoke-direct {p0, v0, v1}, Lcom/android/incallui/VideoCallPresenter;->isCameraRequired(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isCameraRequired(II)Z
    .locals 1

    .line 191
    iget-boolean v0, p0, Lcom/android/incallui/VideoCallPresenter;->mIsInBackground:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->shallTransmitStaticImage()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    .line 192
    invoke-static {v0}, Lcom/android/incallui/VideoCallPresenter;->isModifyToVideoRxType(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    invoke-static {p1}, Landroid/telecom/VideoProfile;->isBidirectional(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    invoke-static {p1}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    invoke-static {p1}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p2}, Lcom/android/incallui/VideoCallPresenter;->isVideoUpgrade(I)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static isIncomingVideoCall(Lcom/android/incallui/call/DialerCall;)Z
    .locals 2

    .line 1636
    invoke-static {p0}, Lcom/android/incallui/VideoCallPresenter;->isVideoCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1639
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private static isModifyToVideoRxType(Lcom/android/incallui/call/DialerCall;)Z
    .locals 3

    .line 1676
    invoke-static {}, Lcom/android/dialer/compat/CompatUtils;->isVideoCompatible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p0, :cond_2

    .line 1681
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/videotech/VideoTech;->getUpgradeToVideoState()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 1682
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/incallui/videotech/VideoTech;->getRequestedVideoState()I

    move-result p0

    if-ne p0, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static isOutgoingVideoCall(Lcom/android/incallui/call/DialerCall;)Z
    .locals 2

    .line 1648
    invoke-static {p0}, Lcom/android/incallui/VideoCallPresenter;->isVideoCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1651
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result p0

    .line 1652
    invoke-static {p0}, Lcom/android/incallui/call/DialerCall$State;->isDialing(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static isTransmissionEnabled(Lcom/android/incallui/call/DialerCall;)Z
    .locals 1

    .line 1631
    invoke-static {}, Lcom/android/dialer/compat/CompatUtils;->isVideoCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 1632
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getVideoState()I

    move-result p0

    invoke-static {p0}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isVideoCall(I)Z
    .locals 1

    .line 1670
    invoke-static {}, Lcom/android/dialer/compat/CompatUtils;->isVideoCompatible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1671
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1672
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isReceptionEnabled(I)Z

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

.method public static isVideoCall(Lcom/android/incallui/call/DialerCall;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1666
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->isVideoCall()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isVideoMode()Z
    .locals 1

    .line 935
    sget-boolean v0, Lcom/android/incallui/VideoCallPresenter;->mIsVideoMode:Z

    return v0
.end method

.method private static isVideoUpgrade(I)Z
    .locals 1

    .line 1497
    invoke-static {p0}, Lcom/android/incallui/videotech/utils/VideoUtils;->hasSentVideoUpgradeRequest(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1498
    invoke-static {p0}, Lcom/android/incallui/videotech/utils/VideoUtils;->hasReceivedVideoUpgradeRequest(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isVideoUpgrade(Lcom/android/incallui/call/DialerCall;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 1493
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->hasSentVideoUpgradeRequest()Z

    move-result v0

    if-nez v0, :cond_0

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

.method private maybeEnableCamera()V
    .locals 2

    .line 203
    iget v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->isCameraRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/VideoCallPresenter;->enableCamera(Landroid/telecom/InCallService$VideoCall;Z)V

    :cond_0
    return-void
.end method

.method private maybeUnsetPauseImage()V
    .locals 1

    .line 853
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->shallTransmitStaticImage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    .line 854
    invoke-static {v0}, Lcom/android/incallui/VideoCallPresenter;->isTransmissionEnabled(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    :cond_0
    return-void
.end method

.method private onPrimaryCallChanged(Lcom/android/incallui/call/DialerCall;)V
    .locals 6

    .line 901
    invoke-static {p1}, Lcom/android/incallui/VideoCallPresenter;->shouldShowVideoUiForCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    .line 902
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->isVideoMode()Z

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 907
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 908
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "VideoCallPresenter.onPrimaryCallChanged"

    const-string v5, "shouldShowVideoUi: %b, isVideoMode: %b"

    .line 904
    invoke-static {v3, v5, v2}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    new-array p1, v4, [Ljava/lang/Object;

    const-string v0, "exiting video mode..."

    .line 913
    invoke-static {v3, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 914
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->exitVideoMode()V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "entering video mode..."

    .line 916
    invoke-static {v3, v1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 918
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->checkForOrientationAllowedChange(Lcom/android/incallui/call/DialerCall;)V

    .line 919
    invoke-static {p1}, Lcom/android/incallui/VideoCallPresenter;->updateCameraSelection(Lcom/android/incallui/call/DialerCall;)V

    .line 923
    invoke-static {p1}, Lcom/android/incallui/VideoCallPresenter;->isIncomingVideoCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    .line 924
    invoke-static {v0}, Lcom/android/incallui/VideoCallPresenter;->isTransmissionEnabled(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    .line 925
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "closing camera"

    .line 927
    invoke-static {v3, v1, v0}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 928
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/android/incallui/VideoCallPresenter;->enableCamera(Landroid/telecom/InCallService$VideoCall;Z)V

    .line 930
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->adjustVideoMode(Lcom/android/incallui/call/DialerCall;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private onSurfaceClick()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "VideoCallPresenter.onSurfaceClick"

    const-string v3, ""

    .line 564
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 565
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->cancelAutoFullScreen()V

    .line 566
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->isFullscreen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 567
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setFullScreen(Z)V

    goto :goto_0

    .line 569
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/InCallPresenter;->setFullScreen(Z)V

    .line 570
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {p0, v0}, Lcom/android/incallui/VideoCallPresenter;->maybeAutoEnterFullscreen(Lcom/android/incallui/call/DialerCall;)V

    :goto_0
    return-void
.end method

.method private setFixedPreviewSurfaceSize()V
    .locals 2

    .line 1689
    sget-object v0, Lcom/android/incallui/VideoCallPresenter;->mPictureModeHelper:Lcom/android/incallui/PictureModeHelper;

    if-eqz v0, :cond_0

    .line 1690
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/incallui/PictureModeHelper;->getPreviewSizeFromSetting(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mFixedPreviewSurfaceSize:Landroid/graphics/Point;

    :cond_0
    return-void
.end method

.method private setPauseImage(Landroid/telecom/InCallService$VideoCall;)V
    .locals 4

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " videoCall = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "VideoCallPresenter.setPauseImage"

    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    return-void

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->shallTransmitStaticImage()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 275
    sget-boolean p1, Lcom/android/incallui/VideoCallPresenter;->sUseDefaultImage:Z

    const-string p1, ""

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_2

    .line 280
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 281
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " parsed uri = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " sUseDefaultImage = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/incallui/VideoCallPresenter;->sUseDefaultImage:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, v0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static shouldShowVideoUiForCall(Lcom/android/incallui/call/DialerCall;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1142
    :cond_0
    invoke-static {p0}, Lcom/android/incallui/VideoCallPresenter;->isVideoCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 1146
    :cond_1
    invoke-static {p0}, Lcom/android/incallui/VideoCallPresenter;->isVideoUpgrade(Lcom/android/incallui/call/DialerCall;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public static showIncomingVideo(II)Z
    .locals 5

    .line 315
    invoke-static {}, Lcom/android/dialer/compat/CompatUtils;->isVideoCompatible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 319
    :cond_0
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne p1, v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v1

    .line 323
    :goto_0
    invoke-static {p1}, Lcom/android/incallui/call/DialerCall$State;->isDialing(I)Z

    move-result v4

    if-nez v4, :cond_3

    const/16 v4, 0xd

    if-ne p1, v4, :cond_2

    goto :goto_1

    :cond_2
    move p1, v1

    goto :goto_2

    :cond_3
    :goto_1
    move p1, v3

    :goto_2
    if-nez v0, :cond_5

    if-nez v2, :cond_4

    if-eqz p1, :cond_5

    .line 327
    :cond_4
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isReceptionEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-boolean p0, Lcom/android/incallui/VideoCallPresenter;->mIsIncomingVideoAvailable:Z

    if-eqz p0, :cond_5

    move v1, v3

    :cond_5
    return v1
.end method

.method public static showOutgoingVideo(Landroid/content/Context;II)Z
    .locals 1

    .line 339
    invoke-static {p0}, Lcom/android/incallui/videotech/utils/VideoUtils;->hasCameraPermissionAndShownPrivacyToast(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "VideoCallPresenter.showOutgoingVideo"

    const-string p2, "Camera permission is disabled by user."

    .line 340
    invoke-static {p1, p2, p0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 344
    :cond_0
    invoke-static {}, Lcom/android/dialer/compat/CompatUtils;->isVideoCompatible()Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    .line 348
    :cond_1
    invoke-static {p1}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result p0

    if-nez p0, :cond_2

    .line 349
    invoke-static {p2}, Lcom/android/incallui/VideoCallPresenter;->isVideoUpgrade(I)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public static showOutgoingVideo(Landroid/content/Context;IIZ)Z
    .locals 1

    .line 355
    invoke-static {p0}, Lcom/android/incallui/videotech/utils/VideoUtils;->hasCameraPermissionAndShownPrivacyToast(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "VideoCallPresenter.showOutgoingVideo"

    const-string p2, "Camera permission is disabled by user."

    .line 356
    invoke-static {p1, p2, p0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 360
    :cond_0
    invoke-static {}, Lcom/android/dialer/compat/CompatUtils;->isVideoCompatible()Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    .line 364
    :cond_1
    invoke-static {p1}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result p0

    if-nez p0, :cond_2

    if-nez p3, :cond_3

    .line 366
    invoke-static {p1}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 367
    invoke-static {p2}, Lcom/android/incallui/VideoCallPresenter;->isVideoUpgrade(I)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public static showPipModeMenu()V
    .locals 1

    .line 1735
    sget-object v0, Lcom/android/incallui/VideoCallPresenter;->mPictureModeHelper:Lcom/android/incallui/PictureModeHelper;

    if-eqz v0, :cond_0

    .line 1736
    invoke-virtual {v0}, Lcom/android/incallui/PictureModeHelper;->createAndShowDialog()V

    :cond_0
    return-void
.end method

.method private showVideoUi(IIIZ)V
    .locals 9

    .line 1226
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCallScreen:Lcom/android/incallui/video/protocol/VideoCallScreen;

    const-string v1, "VideoCallPresenter.showVideoUi"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string/jumbo p2, "videoCallScreen is null returning"

    .line 1227
    invoke-static {v1, p2, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1230
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    invoke-static {v0}, Lcom/android/incallui/VideoCallPresenter;->isModifyToVideoRxType(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    .line 1231
    invoke-static {p1, p2}, Lcom/android/incallui/VideoCallPresenter;->showIncomingVideo(II)Z

    move-result v3

    .line 1232
    iget-object v4, p0, Lcom/android/incallui/VideoCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v4, p1, p3, v0}, Lcom/android/incallui/VideoCallPresenter;->showOutgoingVideo(Landroid/content/Context;IIZ)Z

    move-result v4

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    .line 1238
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    .line 1239
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    .line 1240
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v5, v6

    const/4 v6, 0x3

    .line 1241
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->shallTransmitStaticImage()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v5, v6

    const/4 v6, 0x4

    .line 1242
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v6

    const-string v0, "showIncoming: %b, showOutgoing: %b, isRemotelyHeld: %b shallTransmitStaticImage: %b isModifyToVideoRx: %b"

    .line 1234
    invoke-static {v1, v0, v5}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1243
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->updateRemoteVideoSurfaceDimensions()V

    .line 1244
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCallScreen:Lcom/android/incallui/video/protocol/VideoCallScreen;

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->shallTransmitStaticImage()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mContext:Landroid/content/Context;

    .line 1245
    invoke-static {v1}, Lcom/android/incallui/QtiCallUtils;->hasVideoCrbtVoLteCall(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    move v2, v7

    .line 1244
    :cond_1
    invoke-interface {v0, v2, v3, p4}, Lcom/android/incallui/video/protocol/VideoCallScreen;->showVideoViews(ZZZ)V

    .line 1246
    invoke-static {}, Lcom/android/incallui/BottomSheetHelper;->getInstance()Lcom/android/incallui/BottomSheetHelper;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/incallui/BottomSheetHelper;->canDisablePipMode()Z

    move-result p4

    if-eqz p4, :cond_2

    sget-object p4, Lcom/android/incallui/VideoCallPresenter;->mPictureModeHelper:Lcom/android/incallui/PictureModeHelper;

    if-eqz p4, :cond_2

    .line 1247
    invoke-virtual {p4}, Lcom/android/incallui/PictureModeHelper;->setPreviewVideoLayoutParams()V

    .line 1250
    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/android/incallui/VideoCallPresenter;->updateFullscreenAndGreenScreenMode(II)V

    .line 1251
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object p2

    invoke-static {p1}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/incallui/InCallPresenter;->enableScreenTimeout(Z)V

    .line 1252
    invoke-static {}, Lcom/android/incallui/BottomSheetHelper;->getInstance()Lcom/android/incallui/BottomSheetHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/incallui/BottomSheetHelper;->canDisablePipMode()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/android/incallui/VideoCallPresenter;->mPictureModeHelper:Lcom/android/incallui/PictureModeHelper;

    if-eqz p1, :cond_3

    .line 1253
    invoke-virtual {p1}, Lcom/android/incallui/PictureModeHelper;->maybeHideVideoViews()V

    :cond_3
    return-void
.end method

.method private static toCameraDirection(I)I
    .locals 1

    .line 442
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isBidirectional(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static toSimpleString(Lcom/android/incallui/call/DialerCall;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 453
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->toSimpleString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private updateCallCache(Lcom/android/incallui/call/DialerCall;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 940
    iput p1, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentVideoState:I

    .line 941
    iput p1, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentCallState:I

    const/4 p1, 0x0

    .line 942
    iput-object p1, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    .line 943
    iput-object p1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    goto :goto_0

    .line 945
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getVideoState()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentVideoState:I

    .line 946
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    .line 947
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentCallState:I

    .line 948
    iput-object p1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    :goto_0
    return-void
.end method

.method private static updateCameraSelection(Lcom/android/incallui/call/DialerCall;)V
    .locals 5

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "VideoCallPresenter.updateCameraSelection"

    invoke-static {v4, v0, v3}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/incallui/VideoCallPresenter;->toSimpleString(Lcom/android/incallui/call/DialerCall;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 374
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->getActiveCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    const/4 v1, -0x1

    if-nez p0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "call is null. Setting camera direction to default value (CAMERA_DIRECTION_UNKNOWN)"

    .line 381
    invoke-static {v4, v3, v0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 387
    :cond_0
    invoke-static {p0}, Lcom/android/incallui/VideoCallPresenter;->isAudioCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0}, Lcom/android/incallui/VideoCallPresenter;->isVideoUpgrade(Lcom/android/incallui/call/DialerCall;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 389
    invoke-virtual {p0, v1}, Lcom/android/incallui/call/DialerCall;->setCameraDir(I)V

    goto :goto_0

    .line 395
    :cond_1
    invoke-static {v0}, Lcom/android/incallui/VideoCallPresenter;->isVideoCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/android/incallui/VideoCallPresenter;->isIncomingVideoCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 396
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getCameraDir()I

    move-result v1

    goto :goto_0

    .line 401
    :cond_2
    invoke-static {p0}, Lcom/android/incallui/VideoCallPresenter;->isOutgoingVideoCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/android/incallui/VideoCallPresenter;->isCameraDirectionSet(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 402
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/VideoCallPresenter;->toCameraDirection(I)I

    move-result v1

    .line 403
    invoke-virtual {p0, v1}, Lcom/android/incallui/call/DialerCall;->setCameraDir(I)V

    goto :goto_0

    .line 408
    :cond_3
    invoke-static {p0}, Lcom/android/incallui/VideoCallPresenter;->isOutgoingVideoCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 409
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getCameraDir()I

    move-result v1

    goto :goto_0

    .line 414
    :cond_4
    invoke-static {p0}, Lcom/android/incallui/VideoCallPresenter;->isActiveVideoCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Lcom/android/incallui/VideoCallPresenter;->isCameraDirectionSet(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 415
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/VideoCallPresenter;->toCameraDirection(I)I

    move-result v1

    .line 416
    invoke-virtual {p0, v1}, Lcom/android/incallui/call/DialerCall;->setCameraDir(I)V

    goto :goto_0

    .line 421
    :cond_5
    invoke-static {p0}, Lcom/android/incallui/VideoCallPresenter;->isActiveVideoCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 422
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getCameraDir()I

    move-result v1

    goto :goto_0

    .line 427
    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/VideoCallPresenter;->toCameraDirection(I)I

    move-result v1

    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 433
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v3, 0x1

    aput-object p0, v0, v3

    const-string p0, "setting camera direction to %d, call: %s"

    .line 430
    invoke-static {v4, p0, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 436
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;

    move-result-object p0

    if-nez v1, :cond_7

    move v2, v3

    .line 437
    :cond_7
    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallCameraManager;->setUseFrontFacingCamera(Z)V

    return-void
.end method

.method private updateFullscreenAndGreenScreenMode(II)V
    .locals 5

    .line 1002
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCallScreen:Lcom/android/incallui/video/protocol/VideoCallScreen;

    if-eqz v0, :cond_5

    .line 1003
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    .line 1004
    invoke-static {v0}, Lcom/android/incallui/VideoCallPresenter;->isVideoCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1005
    invoke-static {p2}, Lcom/android/incallui/videotech/utils/VideoUtils;->hasSentVideoUpgradeRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1007
    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->isFullscreen()Z

    move-result v3

    const/4 v4, 0x6

    if-eq p1, v4, :cond_1

    const/16 v4, 0xd

    if-ne p1, v4, :cond_2

    .line 1017
    :cond_1
    sget-boolean v4, Lcom/android/incallui/VideoCallPresenter;->mIsIncomingVideoAvailable:Z

    if-eqz v4, :cond_4

    :cond_2
    const/4 v4, 0x4

    if-eq p1, v4, :cond_4

    if-nez v0, :cond_3

    iget-object p1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    .line 1022
    invoke-static {p1}, Lcom/android/incallui/VideoCallPresenter;->isModifyToVideoRxType(Lcom/android/incallui/call/DialerCall;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1023
    invoke-static {p2}, Lcom/android/incallui/VideoCallPresenter;->isVideoUpgrade(I)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    .line 1024
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCallScreen:Lcom/android/incallui/video/protocol/VideoCallScreen;

    invoke-interface {p1, v3, v1}, Lcom/android/incallui/video/protocol/VideoCallScreen;->updateFullscreenAndGreenScreenMode(ZZ)V

    :cond_5
    return-void
.end method

.method private updateRemoteVideoSurfaceDimensions()V
    .locals 3

    .line 1478
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCallScreen:Lcom/android/incallui/video/protocol/VideoCallScreen;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VideoCallPresenter.updateRemoteVideoSurfaceDimensions"

    const-string v2, "mVideoCallScreen is null"

    .line 1479
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1483
    :cond_0
    invoke-interface {v0}, Lcom/android/incallui/video/protocol/VideoCallScreen;->getVideoCallScreenFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1485
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1486
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1487
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getRemoteVideoSurfaceTexture()Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;->setSurfaceDimensions(Landroid/graphics/Point;)V

    :cond_1
    return-void
.end method

.method private updateVideoCall(Lcom/android/incallui/call/DialerCall;)V
    .locals 1

    .line 982
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->checkForVideoCallChange(Lcom/android/incallui/call/DialerCall;)V

    .line 983
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->checkForVideoStateChange(Lcom/android/incallui/call/DialerCall;)V

    .line 984
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->checkForCallStateChange(Lcom/android/incallui/call/DialerCall;)V

    .line 985
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->checkForOrientationAllowedChange(Lcom/android/incallui/call/DialerCall;)V

    .line 987
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/incallui/videotech/VideoTech;->getSessionModificationState()I

    move-result p1

    .line 986
    invoke-direct {p0, v0, p1}, Lcom/android/incallui/VideoCallPresenter;->updateFullscreenAndGreenScreenMode(II)V

    return-void
.end method


# virtual methods
.method public cancelAutoFullScreen()V
    .locals 4

    .line 1441
    iget-boolean v0, p0, Lcom/android/incallui/VideoCallPresenter;->mAutoFullScreenPending:Z

    const-string v1, "VideoCallPresenter.cancelAutoFullScreen"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "none pending."

    .line 1442
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "cancelling pending"

    .line 1445
    invoke-static {v1, v3, v0}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1446
    iput-boolean v2, p0, Lcom/android/incallui/VideoCallPresenter;->mAutoFullScreenPending:Z

    .line 1447
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mAutoFullscreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getDeviceOrientation()I
    .locals 1

    .line 606
    iget v0, p0, Lcom/android/incallui/VideoCallPresenter;->mDeviceOrientation:I

    return v0
.end method

.method public getLocalVideoSurfaceTexture()Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;
    .locals 1

    .line 591
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getLocalVideoSurfaceTexture()Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteVideoSurfaceTexture()Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;
    .locals 1

    .line 596
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getRemoteVideoSurfaceTexture()Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;

    move-result-object v0

    return-object v0
.end method

.method public initVideoCallScreenDelegate(Landroid/content/Context;Lcom/android/incallui/video/protocol/VideoCallScreen;)V
    .locals 1

    .line 463
    iput-object p1, p0, Lcom/android/incallui/VideoCallPresenter;->mContext:Landroid/content/Context;

    .line 464
    new-instance p1, Lcom/android/incallui/PictureModeHelper;

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/incallui/PictureModeHelper;-><init>(Landroid/content/Context;)V

    sput-object p1, Lcom/android/incallui/VideoCallPresenter;->mPictureModeHelper:Lcom/android/incallui/PictureModeHelper;

    .line 465
    iput-object p2, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCallScreen:Lcom/android/incallui/video/protocol/VideoCallScreen;

    .line 466
    iget-object p1, p0, Lcom/android/incallui/VideoCallPresenter;->mContext:Landroid/content/Context;

    .line 467
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f05001d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/incallui/VideoCallPresenter;->mIsAutoFullscreenEnabled:Z

    .line 468
    iget-object p1, p0, Lcom/android/incallui/VideoCallPresenter;->mContext:Landroid/content/Context;

    .line 469
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0a002b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/incallui/VideoCallPresenter;->mAutoFullscreenTimeoutMillis:I

    .line 470
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->setFixedPreviewSurfaceSize()V

    return-void
.end method

.method public isUseDefaultImage()Z
    .locals 1

    .line 298
    sget-boolean v0, Lcom/android/incallui/VideoCallPresenter;->sUseDefaultImage:Z

    return v0
.end method

.method protected maybeAutoEnterFullscreen(Lcom/android/incallui/call/DialerCall;)V
    .locals 3

    .line 1414
    iget-boolean v0, p0, Lcom/android/incallui/VideoCallPresenter;->mIsAutoFullscreenEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 1419
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1420
    invoke-static {p1}, Lcom/android/incallui/VideoCallPresenter;->isBidirectionalVideoCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1421
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/incallui/InCallPresenter;->isFullscreen()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/incallui/VideoCallPresenter;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    .line 1422
    invoke-static {p1}, Lcom/android/incallui/util/AccessibilityUtil;->isTouchExplorationEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 1428
    :cond_1
    iget-boolean p1, p0, Lcom/android/incallui/VideoCallPresenter;->mAutoFullScreenPending:Z

    const/4 v0, 0x0

    const-string v1, "VideoCallPresenter.maybeAutoEnterFullscreen"

    if-eqz p1, :cond_2

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "already pending."

    .line 1429
    invoke-static {v1, v0, p1}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "scheduled"

    .line 1432
    invoke-static {v1, v0, p1}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 1433
    iput-boolean p1, p0, Lcom/android/incallui/VideoCallPresenter;->mAutoFullScreenPending:Z

    .line 1434
    iget-object p1, p0, Lcom/android/incallui/VideoCallPresenter;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mAutoFullscreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1435
    iget-object p1, p0, Lcom/android/incallui/VideoCallPresenter;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mAutoFullscreenRunnable:Ljava/lang/Runnable;

    iget v1, p0, Lcom/android/incallui/VideoCallPresenter;->mAutoFullscreenTimeoutMillis:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 1424
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->cancelAutoFullScreen()V

    return-void
.end method

.method protected maybeExitFullscreen(Lcom/android/incallui/call/DialerCall;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1400
    :cond_0
    invoke-static {p1}, Lcom/android/incallui/VideoCallPresenter;->isVideoCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "VideoCallPresenter.maybeExitFullscreen"

    const-string v2, "exiting fullscreen"

    .line 1401
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1402
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallPresenter;->setFullScreen(Z)V

    :cond_2
    return-void
.end method

.method public onCallSessionEvent(I)V
    .locals 5

    .line 1747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call session event = "

    .line 1748
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const/4 v2, 0x6

    if-eq p1, v2, :cond_0

    const-string/jumbo v2, "unknown event = "

    .line 1772
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1773
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    const-string p1, "camera_ready"

    .line 1769
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const-string p1, "camera_failure"

    .line 1766
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    if-ne p1, v2, :cond_3

    goto :goto_0

    :cond_3
    move v3, v1

    .line 1753
    :goto_0
    sput-boolean v3, Lcom/android/incallui/VideoCallPresenter;->mIsIncomingVideoAvailable:Z

    .line 1755
    iget-object p1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    if-nez p1, :cond_4

    return-void

    .line 1759
    :cond_4
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getVideoState()I

    move-result p1

    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    .line 1760
    invoke-virtual {v2}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    .line 1761
    invoke-virtual {v3}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/incallui/videotech/VideoTech;->getSessionModificationState()I

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    .line 1762
    invoke-virtual {v4}, Lcom/android/incallui/call/DialerCall;->isRemotelyHeld()Z

    move-result v4

    .line 1758
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/incallui/VideoCallPresenter;->showVideoUi(IIIZ)V

    .line 1763
    sget-boolean p1, Lcom/android/incallui/VideoCallPresenter;->mIsIncomingVideoAvailable:Z

    if-eqz p1, :cond_5

    const-string p1, "rx_resume"

    goto :goto_1

    :cond_5
    const-string p1, "rx_pause"

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1776
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "VideoCallPresenter.onCallSessionEvent"

    invoke-static {v1, p1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onCameraDimensionsChange(Lcom/android/incallui/call/DialerCall;II)V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 1298
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 1299
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v1, v4

    const-string v3, "VideoCallPresenter.onCameraDimensionsChange"

    const-string v5, "call: %s, width: %d, height: %d"

    .line 1294
    invoke-static {v3, v5, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1300
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCallScreen:Lcom/android/incallui/video/protocol/VideoCallScreen;

    if-nez v1, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string/jumbo p2, "ui is null"

    .line 1301
    invoke-static {v3, p2, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1305
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "not the primary call"

    .line 1306
    invoke-static {v3, p2, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1310
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->shallTransmitStaticImage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1311
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->setPauseImage(Landroid/telecom/InCallService$VideoCall;)V

    .line 1314
    :cond_2
    iget p1, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    if-nez p1, :cond_3

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "capabilities received when camera is OFF."

    .line 1315
    invoke-static {v3, p2, p1}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1320
    :cond_3
    iput v4, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    .line 1322
    invoke-direct {p0, p2, p3}, Lcom/android/incallui/VideoCallPresenter;->changePreviewDimensions(II)V

    .line 1326
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getLocalVideoSurfaceTexture()Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;->getSavedSurface()Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1328
    iput v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    .line 1329
    iget-object p2, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-virtual {p2, p1}, Landroid/telecom/InCallService$VideoCall;->setPreviewSurface(Landroid/view/Surface;)V

    :cond_4
    return-void
.end method

.method public onCameraPermissionDialogShown()V
    .locals 2

    .line 1472
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1473
    invoke-virtual {v0, v1}, Lcom/android/incallui/call/DialerCall;->setDidShowCameraPermission(Z)V

    :cond_0
    return-void
.end method

.method public onCameraPermissionGranted()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "VideoCallPresenter.onCameraPermissionGranted"

    const-string v3, ""

    .line 615
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 616
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    if-nez v1, :cond_0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Primary call is null. Not enabling camera"

    .line 617
    invoke-static {v2, v1, v0}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/util/PermissionsUtil;->setCameraPrivacyToastShown(Landroid/content/Context;)V

    .line 622
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->isCameraRequired()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/VideoCallPresenter;->enableCamera(Landroid/telecom/InCallService$VideoCall;Z)V

    .line 623
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    .line 624
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getVideoState()I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    .line 625
    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    .line 626
    invoke-virtual {v2}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/incallui/videotech/VideoTech;->getSessionModificationState()I

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    .line 627
    invoke-virtual {v3}, Lcom/android/incallui/call/DialerCall;->isRemotelyHeld()Z

    move-result v3

    .line 623
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/incallui/VideoCallPresenter;->showVideoUi(IIIZ)V

    .line 628
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallCameraManager;->onCameraPermissionGranted()V

    return-void
.end method

.method public onDetailsChanged(Lcom/android/incallui/call/DialerCall;Landroid/telecom/Call$Details;)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    .line 961
    iget-object p2, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    const/4 v2, 0x2

    aput-object p2, v0, v2

    const-string p2, "VideoCallPresenter.onDetailsChanged"

    const-string v2, "call: %s, details: %s, mPrimaryCall: %s"

    invoke-static {p2, v2, v0}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    return-void

    .line 971
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "details not for current active call"

    .line 972
    invoke-static {p2, v0, p1}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 976
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->updateVideoCall(Lcom/android/incallui/call/DialerCall;)V

    .line 978
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->updateCallCache(Lcom/android/incallui/call/DialerCall;)V

    return-void
.end method

.method public onDeviceOrientationChanged(I)V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 1364
    iget v2, p0, Lcom/android/incallui/VideoCallPresenter;->mDeviceOrientation:I

    .line 1367
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1368
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "VideoCallPresenter.onDeviceOrientationChanged"

    const-string v5, "orientation: %d -> %d"

    .line 1364
    invoke-static {v2, v5, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1369
    iput p1, p0, Lcom/android/incallui/VideoCallPresenter;->mDeviceOrientation:I

    .line 1371
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCallScreen:Lcom/android/incallui/video/protocol/VideoCallScreen;

    if-nez v1, :cond_0

    new-array p1, v3, [Ljava/lang/Object;

    const-string/jumbo v0, "videoCallScreen is null"

    .line 1372
    invoke-static {v2, v0, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1376
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getLocalVideoSurfaceTexture()Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;->getSurfaceDimensions()Landroid/graphics/Point;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-array v0, v0, [Ljava/lang/Object;

    .line 1383
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    aput-object v1, v0, v4

    const-string p1, "orientation: %d, size: %s"

    .line 1380
    invoke-static {v2, p1, v0}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1385
    iget p1, v1, Landroid/graphics/Point;->x:I

    iget v0, v1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/VideoCallPresenter;->changePreviewDimensions(II)V

    .line 1387
    iget-object p1, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCallScreen:Lcom/android/incallui/video/protocol/VideoCallScreen;

    invoke-interface {p1}, Lcom/android/incallui/video/protocol/VideoCallScreen;->onLocalVideoOrientationChanged()V

    return-void
.end method

.method public onFullscreenModeChanged(Z)V
    .locals 1

    .line 741
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->cancelAutoFullScreen()V

    .line 742
    iget-object p1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    if-eqz p1, :cond_0

    .line 744
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result p1

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/videotech/VideoTech;->getSessionModificationState()I

    move-result v0

    .line 743
    invoke-direct {p0, p1, v0}, Lcom/android/incallui/VideoCallPresenter;->updateFullscreenAndGreenScreenMode(II)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 746
    invoke-direct {p0, p1, p1}, Lcom/android/incallui/VideoCallPresenter;->updateFullscreenAndGreenScreenMode(II)V

    :goto_0
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    .line 655
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/incallui/VideoCallPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/call/CallList;)V

    return-void
.end method

.method public onIncomingVideoSelectionChanged()V
    .locals 4

    .line 1720
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    if-nez v0, :cond_0

    return-void

    .line 1724
    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getVideoState()I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    .line 1725
    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    .line 1726
    invoke-virtual {v2}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/incallui/videotech/VideoTech;->getSessionModificationState()I

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    .line 1727
    invoke-virtual {v3}, Lcom/android/incallui/call/DialerCall;->isRemotelyHeld()Z

    move-result v3

    .line 1723
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/incallui/VideoCallPresenter;->showVideoUi(IIIZ)V

    return-void
.end method

.method public onPreviewVideoSelectionChanged()V
    .locals 4

    .line 1700
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    if-nez v0, :cond_0

    return-void

    .line 1703
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->setFixedPreviewSurfaceSize()V

    .line 1704
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mFixedPreviewSurfaceSize:Landroid/graphics/Point;

    if-eqz v0, :cond_1

    .line 1705
    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mFixedPreviewSurfaceSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/VideoCallPresenter;->changePreviewDimensions(II)V

    .line 1707
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    .line 1708
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getVideoState()I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    .line 1709
    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    .line 1710
    invoke-virtual {v2}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/incallui/videotech/VideoTech;->getSessionModificationState()I

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    .line 1711
    invoke-virtual {v3}, Lcom/android/incallui/call/DialerCall;->isRemotelyHeld()Z

    move-result v3

    .line 1707
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/incallui/VideoCallPresenter;->showVideoUi(IIIZ)V

    return-void
.end method

.method public onReadStoragePermissionResponse(Z)V
    .locals 4

    .line 800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " granted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "VideoCallPresenter.onReadStoragePermissionResponse"

    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    xor-int/lit8 v0, p1, 0x1

    .line 803
    sput-boolean v0, Lcom/android/incallui/VideoCallPresenter;->sUseDefaultImage:Z

    if-nez p1, :cond_0

    .line 805
    iget-object p1, p0, Lcom/android/incallui/VideoCallPresenter;->mContext:Landroid/content/Context;

    const v0, 0x7f1103cf

    invoke-static {p1, v0}, Lcom/android/incallui/QtiCallUtils;->displayToast(Landroid/content/Context;I)V

    .line 808
    :cond_0
    iget p1, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentVideoState:I

    iget v0, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentCallState:I

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/incallui/VideoCallPresenter;->showVideoUi(IIIZ)V

    return-void
.end method

.method public onSendStaticImageStateChanged(Z)V
    .locals 4

    .line 763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " shallTransmitStaticImage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mPrimaryCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "VideoCallPresenter.onSendStaticImageStateChanged"

    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 766
    sput-boolean p1, Lcom/android/incallui/VideoCallPresenter;->sShallTransmitStaticImage:Z

    .line 768
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    invoke-static {v0}, Lcom/android/incallui/VideoCallPresenter;->isActiveVideoCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, " received for non-active video call"

    .line 769
    invoke-static {v3, v0, p1}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCallScreen:Lcom/android/incallui/video/protocol/VideoCallScreen;

    if-nez v2, :cond_1

    goto :goto_1

    .line 780
    :cond_1
    iget v2, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentVideoState:I

    invoke-direct {p0, v2, v1}, Lcom/android/incallui/VideoCallPresenter;->isCameraRequired(II)Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/incallui/VideoCallPresenter;->enableCamera(Landroid/telecom/InCallService$VideoCall;Z)V

    if-eqz p1, :cond_2

    .line 785
    iget-object p1, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCallScreen:Lcom/android/incallui/video/protocol/VideoCallScreen;

    invoke-interface {p1}, Lcom/android/incallui/video/protocol/VideoCallScreen;->onRequestReadStoragePermission()V

    goto :goto_0

    .line 789
    :cond_2
    iget p1, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentVideoState:I

    iget v0, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentCallState:I

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/incallui/VideoCallPresenter;->showVideoUi(IIIZ)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, " VideoCall/mVideoCallScreen is null"

    .line 775
    invoke-static {v3, v0, p1}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onSessionModificationStateChange(Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/call/CallList;)V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    .line 674
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->isVideoMode()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v1, v4

    const-string v3, "VideoCallPresenter.onStateChange"

    const-string v5, "oldState: %s, newState: %s, isVideoMode: %b"

    .line 669
    invoke-static {v3, v5, v1}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 676
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v1, :cond_1

    .line 677
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->isVideoMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 678
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->exitVideoMode()V

    .line 680
    :cond_0
    sput-boolean v2, Lcom/android/incallui/VideoCallPresenter;->sShallTransmitStaticImage:Z

    .line 681
    sput-boolean v2, Lcom/android/incallui/VideoCallPresenter;->sUseDefaultImage:Z

    .line 682
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->cleanupSurfaces()V

    .line 694
    :cond_1
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    const/4 v5, 0x0

    if-ne p2, v1, :cond_2

    .line 699
    invoke-virtual {p3}, Lcom/android/incallui/call/CallList;->getActiveCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v5

    .line 700
    invoke-virtual {p3}, Lcom/android/incallui/call/CallList;->getIncomingCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p2

    .line 701
    invoke-static {v5}, Lcom/android/incallui/VideoCallPresenter;->isActiveVideoCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 702
    invoke-virtual {p3}, Lcom/android/incallui/call/CallList;->getIncomingCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v5

    goto :goto_1

    .line 704
    :cond_2
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v1, :cond_4

    .line 705
    invoke-virtual {p3}, Lcom/android/incallui/call/CallList;->getOutgoingCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v5

    :cond_3
    :goto_0
    move-object p2, v5

    goto :goto_1

    .line 706
    :cond_4
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v1, :cond_5

    .line 707
    invoke-virtual {p3}, Lcom/android/incallui/call/CallList;->getPendingOutgoingCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v5

    goto :goto_0

    .line 708
    :cond_5
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v1, :cond_3

    .line 709
    invoke-virtual {p3}, Lcom/android/incallui/call/CallList;->getActiveCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v5

    goto :goto_0

    .line 712
    :cond_6
    :goto_1
    iget-object p3, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    invoke-static {p3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    xor-int/2addr p3, p1

    new-array v0, v0, [Ljava/lang/Object;

    .line 716
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    aput-object v5, v0, p1

    iget-object p1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    aput-object p1, v0, v4

    const-string p1, "primaryChanged: %b, primary: %s, mPrimaryCall: %s"

    .line 713
    invoke-static {v3, p1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_7

    .line 720
    invoke-direct {p0, v5}, Lcom/android/incallui/VideoCallPresenter;->onPrimaryCallChanged(Lcom/android/incallui/call/DialerCall;)V

    goto :goto_2

    .line 721
    :cond_7
    iget-object p1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    if-eqz p1, :cond_8

    .line 722
    invoke-direct {p0, v5}, Lcom/android/incallui/VideoCallPresenter;->updateVideoCall(Lcom/android/incallui/call/DialerCall;)V

    .line 724
    :cond_8
    :goto_2
    invoke-direct {p0, v5}, Lcom/android/incallui/VideoCallPresenter;->updateCallCache(Lcom/android/incallui/call/DialerCall;)V

    .line 729
    invoke-virtual {p0, p2}, Lcom/android/incallui/VideoCallPresenter;->maybeExitFullscreen(Lcom/android/incallui/call/DialerCall;)V

    .line 731
    invoke-virtual {p0, p2}, Lcom/android/incallui/VideoCallPresenter;->maybeAutoEnterFullscreen(Lcom/android/incallui/call/DialerCall;)V

    return-void
.end method

.method public onSystemUiVisibilityChange(Z)V
    .locals 4

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "visible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "VideoCallPresenter.onSystemUiVisibilityChange"

    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 584
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/incallui/InCallPresenter;->setFullScreen(Z)V

    .line 585
    iget-object p1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->maybeAutoEnterFullscreen(Lcom/android/incallui/call/DialerCall;)V

    :cond_0
    return-void
.end method

.method public onUiShowing(Z)V
    .locals 5

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " showing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mPrimaryCall = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mPreviewSurfaceState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "VideoCallPresenter.onUiShowing"

    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    xor-int/lit8 v0, p1, 0x1

    .line 218
    iput-boolean v0, p0, Lcom/android/incallui/VideoCallPresenter;->mIsInBackground:Z

    .line 219
    sget-boolean v0, Lcom/android/incallui/VideoCallPresenter;->sShallTransmitStaticImage:Z

    .line 221
    invoke-static {}, Lcom/android/incallui/BottomSheetHelper;->getInstance()Lcom/android/incallui/BottomSheetHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/BottomSheetHelper;->getPhoneId()I

    .line 225
    iget-boolean v2, p0, Lcom/android/incallui/VideoCallPresenter;->mIsInBackground:Z

    sput-boolean v2, Lcom/android/incallui/VideoCallPresenter;->sUseDefaultImage:Z

    sput-boolean v2, Lcom/android/incallui/VideoCallPresenter;->sShallTransmitStaticImage:Z

    .line 228
    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    invoke-static {v2}, Lcom/android/incallui/VideoCallPresenter;->isVideoCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    invoke-static {v2}, Lcom/android/incallui/VideoCallPresenter;->isVideoUpgrade(Lcom/android/incallui/call/DialerCall;)Z

    move-result v2

    if-nez v2, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, " received for voice call"

    .line 229
    invoke-static {v3, v0, p1}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    iget p1, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    if-eqz p1, :cond_0

    .line 231
    iget-object p1, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-direct {p0, p1, v1}, Lcom/android/incallui/VideoCallPresenter;->enableCamera(Landroid/telecom/InCallService$VideoCall;Z)V

    :cond_0
    return-void

    .line 240
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    invoke-static {v2}, Lcom/android/incallui/VideoCallPresenter;->isTransmissionEnabled(Lcom/android/incallui/call/DialerCall;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    .line 241
    invoke-static {v2}, Lcom/android/incallui/VideoCallPresenter;->isActiveVideoCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 244
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->setPauseImage()V

    .line 245
    sget-boolean v2, Lcom/android/incallui/VideoCallPresenter;->sShallTransmitStaticImage:Z

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    if-eqz v0, :cond_3

    .line 247
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getVideoState()I

    move-result v0

    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    .line 248
    invoke-virtual {v2}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    .line 249
    invoke-virtual {v3}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/incallui/videotech/VideoTech;->getSessionModificationState()I

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    .line 250
    invoke-virtual {v4}, Lcom/android/incallui/call/DialerCall;->isRemotelyHeld()Z

    move-result v4

    .line 246
    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/incallui/VideoCallPresenter;->showVideoUi(IIIZ)V

    :cond_3
    if-eqz p1, :cond_4

    .line 255
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->maybeEnableCamera()V

    goto :goto_0

    .line 256
    :cond_4
    iget p1, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    if-eqz p1, :cond_5

    .line 257
    iget-object p1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->checkForOrientationAllowedChange(Lcom/android/incallui/call/DialerCall;)V

    .line 258
    iget-object p1, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-direct {p0, p1, v1}, Lcom/android/incallui/VideoCallPresenter;->enableCamera(Landroid/telecom/InCallService$VideoCall;Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onUpdatePeerDimensions(Lcom/android/incallui/call/DialerCall;II)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1266
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "VideoCallPresenter.onUpdatePeerDimensions"

    const-string/jumbo v3, "width: %d, height: %d"

    invoke-static {v1, v3, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1267
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCallScreen:Lcom/android/incallui/video/protocol/VideoCallScreen;

    if-nez v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string/jumbo p2, "videoCallScreen is null"

    .line 1268
    invoke-static {v1, p2, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1271
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "current call is not equal to primary"

    .line 1272
    invoke-static {v1, p2, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    if-lez p2, :cond_2

    if-lez p3, :cond_2

    .line 1278
    iget-object p1, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCallScreen:Lcom/android/incallui/video/protocol/VideoCallScreen;

    if-eqz p1, :cond_2

    .line 1279
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getRemoteVideoSurfaceTexture()Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;

    move-result-object p1

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {p1, v0}, Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;->setSourceVideoDimensions(Landroid/graphics/Point;)V

    .line 1280
    iget-object p1, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCallScreen:Lcom/android/incallui/video/protocol/VideoCallScreen;

    invoke-interface {p1}, Lcom/android/incallui/video/protocol/VideoCallScreen;->onRemoteVideoDimensionsChanged()V

    :cond_2
    return-void
.end method

.method public onVideoCallScreenUiReady(Lcom/android/incallui/video/protocol/VideoCallScreen;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VideoCallPresenter.onVideoCallScreenUiReady"

    const-string v2, ""

    .line 476
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 477
    iget-boolean v0, p0, Lcom/android/incallui/VideoCallPresenter;->isVideoCallScreenUiReady:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkState(Z)V

    .line 481
    invoke-static {}, Lcom/android/dialer/compat/CompatUtils;->isVideoCompatible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 485
    :cond_0
    iput-object p1, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCallScreen:Lcom/android/incallui/video/protocol/VideoCallScreen;

    .line 486
    invoke-static {}, Lcom/android/incallui/InCallOrientationEventListener;->getCurrentOrientation()I

    move-result p1

    iput p1, p0, Lcom/android/incallui/VideoCallPresenter;->mDeviceOrientation:I

    .line 489
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 490
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/incallui/InCallPresenter;->addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 491
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 492
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/incallui/InCallPresenter;->addOrientationListener(Lcom/android/incallui/InCallPresenter$InCallOrientationListener;)V

    .line 494
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/incallui/InCallPresenter;->addInCallEventListener(Lcom/android/incallui/InCallPresenter$InCallEventListener;)V

    .line 495
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/incallui/InCallPresenter;->getLocalVideoSurfaceTexture()Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;

    move-result-object p1

    new-instance v0, Lcom/android/incallui/VideoCallPresenter$LocalDelegate;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/incallui/VideoCallPresenter$LocalDelegate;-><init>(Lcom/android/incallui/VideoCallPresenter;Lcom/android/incallui/VideoCallPresenter$1;)V

    invoke-interface {p1, v0}, Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;->setDelegate(Lcom/android/incallui/videosurface/protocol/VideoSurfaceDelegate;)V

    .line 496
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/incallui/InCallPresenter;->getRemoteVideoSurfaceTexture()Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;

    move-result-object p1

    new-instance v0, Lcom/android/incallui/VideoCallPresenter$RemoteDelegate;

    invoke-direct {v0, p0, v2}, Lcom/android/incallui/VideoCallPresenter$RemoteDelegate;-><init>(Lcom/android/incallui/VideoCallPresenter;Lcom/android/incallui/VideoCallPresenter$1;)V

    invoke-interface {p1, v0}, Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;->setDelegate(Lcom/android/incallui/videosurface/protocol/VideoSurfaceDelegate;)V

    .line 499
    invoke-static {}, Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;->addSurfaceChangeListener(Lcom/android/incallui/call/InCallVideoCallCallbackNotifier$SurfaceChangeListener;)V

    .line 500
    sget-object p1, Lcom/android/incallui/VideoCallPresenter;->mPictureModeHelper:Lcom/android/incallui/PictureModeHelper;

    invoke-virtual {p1, p0}, Lcom/android/incallui/PictureModeHelper;->setUp(Lcom/android/incallui/VideoCallPresenter;)V

    .line 502
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object p1

    .line 503
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p1, v0}, Lcom/android/incallui/VideoCallPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/call/CallList;)V

    .line 504
    invoke-static {}, Lcom/android/incallui/InCallUiStateNotifier;->getInstance()Lcom/android/incallui/InCallUiStateNotifier;

    move-result-object p1

    invoke-virtual {p1, p0, v1}, Lcom/android/incallui/InCallUiStateNotifier;->addListener(Lcom/android/incallui/InCallUiStateNotifierListener;Z)V

    .line 505
    iput-boolean v1, p0, Lcom/android/incallui/VideoCallPresenter;->isVideoCallScreenUiReady:Z

    .line 506
    invoke-static {}, Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;

    move-result-object p1

    iget v0, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentVideoState:I

    .line 507
    invoke-static {v0}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v0

    .line 506
    invoke-virtual {p1, p0, v0}, Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;->addVideoEventListener(Lcom/android/incallui/call/InCallVideoCallCallbackNotifier$VideoEventListener;Z)V

    return-void
.end method

.method public onVideoCallScreenUiUnready()V
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "VideoCallPresenter.onVideoCallScreenUiUnready"

    const-string v3, ""

    .line 513
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 514
    iget-boolean v1, p0, Lcom/android/incallui/VideoCallPresenter;->isVideoCallScreenUiReady:Z

    invoke-static {v1}, Lcom/android/dialer/common/Assert;->checkState(Z)V

    .line 516
    invoke-static {}, Lcom/android/dialer/compat/CompatUtils;->isVideoCompatible()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 519
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/incallui/VideoCallPresenter;->onUiShowing(Z)V

    .line 520
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->cancelAutoFullScreen()V

    .line 522
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 523
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->removeDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 524
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 525
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->removeOrientationListener(Lcom/android/incallui/InCallPresenter$InCallOrientationListener;)V

    .line 526
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->removeInCallEventListener(Lcom/android/incallui/InCallPresenter$InCallEventListener;)V

    .line 527
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getLocalVideoSurfaceTexture()Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;->setDelegate(Lcom/android/incallui/videosurface/protocol/VideoSurfaceDelegate;)V

    .line 529
    invoke-static {}, Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;->removeSurfaceChangeListener(Lcom/android/incallui/call/InCallVideoCallCallbackNotifier$SurfaceChangeListener;)V

    .line 530
    invoke-static {}, Lcom/android/incallui/InCallUiStateNotifier;->getInstance()Lcom/android/incallui/InCallUiStateNotifier;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallUiStateNotifier;->removeListener(Lcom/android/incallui/InCallUiStateNotifierListener;)V

    .line 531
    invoke-static {}, Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;->removeVideoEventListener(Lcom/android/incallui/call/InCallVideoCallCallbackNotifier$VideoEventListener;)V

    .line 532
    sget-object v1, Lcom/android/incallui/VideoCallPresenter;->mPictureModeHelper:Lcom/android/incallui/PictureModeHelper;

    invoke-virtual {v1, p0}, Lcom/android/incallui/PictureModeHelper;->tearDown(Lcom/android/incallui/VideoCallPresenter;)V

    .line 537
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 538
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->maybeUnsetPauseImage()V

    .line 539
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    invoke-static {v1}, Lcom/android/incallui/VideoCallPresenter;->updateCameraSelection(Lcom/android/incallui/call/DialerCall;)V

    .line 542
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    iget-object v4, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    invoke-static {v4}, Lcom/android/incallui/VideoCallPresenter;->isVideoCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    .line 543
    invoke-virtual {v4}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_1
    move v3, v0

    .line 542
    :cond_2
    :goto_0
    invoke-virtual {v1, v3}, Lcom/android/incallui/InCallPresenter;->enableScreenTimeout(Z)V

    goto :goto_1

    .line 545
    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/incallui/InCallPresenter;->enableScreenTimeout(Z)V

    .line 548
    :goto_1
    iput-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCallScreen:Lcom/android/incallui/video/protocol/VideoCallScreen;

    .line 549
    iput-boolean v0, p0, Lcom/android/incallui/VideoCallPresenter;->isVideoCallScreenUiReady:Z

    return-void
.end method

.method public resetAutoFullscreenTimer()V
    .locals 4

    .line 637
    iget-boolean v0, p0, Lcom/android/incallui/VideoCallPresenter;->mAutoFullScreenPending:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VideoCallPresenter.resetAutoFullscreenTimer"

    const-string v2, "resetting"

    .line 638
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 639
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mAutoFullscreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 640
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mAutoFullscreenRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/incallui/VideoCallPresenter;->mAutoFullscreenTimeoutMillis:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public setPauseImage()V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-direct {p0, v0}, Lcom/android/incallui/VideoCallPresenter;->setPauseImage(Landroid/telecom/InCallService$VideoCall;)V

    return-void
.end method

.method public setSurfaceViews(Landroid/view/SurfaceView;Landroid/view/SurfaceView;)V
    .locals 0

    .line 601
    invoke-static {}, Lcom/android/dialer/common/Assert;->createUnsupportedOperationFailException()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public setUseDefaultImage(Z)V
    .locals 0

    .line 303
    sput-boolean p1, Lcom/android/incallui/VideoCallPresenter;->sUseDefaultImage:Z

    return-void
.end method

.method public shallTransmitStaticImage()Z
    .locals 1

    .line 293
    sget-boolean v0, Lcom/android/incallui/VideoCallPresenter;->sShallTransmitStaticImage:Z

    return v0
.end method

.method public shouldShowCameraPermissionToast()Z
    .locals 5

    .line 1452
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    const-string v1, "VideoCallPresenter.shouldShowCameraPermissionToast"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "null call"

    .line 1453
    invoke-static {v1, v3, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 1456
    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->didShowCameraPermission()Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "already shown for this call"

    .line 1457
    invoke-static {v1, v3, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 1461
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/configprovider/ConfigProviderBindings;->get(Landroid/content/Context;)Lcom/android/dialer/configprovider/ConfigProvider;

    move-result-object v0

    const-string v3, "camera_permission_dialog_allowed"

    const/4 v4, 0x1

    .line 1462
    invoke-interface {v0, v3, v4}, Lcom/android/dialer/configprovider/ConfigProvider;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "disabled by config"

    .line 1463
    invoke-static {v1, v3, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 1466
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/videotech/utils/VideoUtils;->hasCameraPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mContext:Landroid/content/Context;

    .line 1467
    invoke-static {v0}, Lcom/android/dialer/util/PermissionsUtil;->hasCameraPrivacyToastShown(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    move v2, v4

    :cond_4
    return v2
.end method
