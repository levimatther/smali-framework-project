.class public Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "SelfManagedAnswerVideoCallScreen.java"

# interfaces
.implements Lcom/android/incallui/video/protocol/VideoCallScreen;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen$CaptureSessionCallback;
    }
.end annotation


# static fields
.field private static final ASPECT_TOLERANCE:F = 0.1f

.field private static final MAX_WIDTH:I = 0x780

.field private static final TARGET_ASPECT:F = 1.7777778f


# instance fields
.field private final callId:Ljava/lang/String;

.field private camera:Landroid/hardware/camera2/CameraDevice;

.field private cameraId:Ljava/lang/String;

.field private captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private final context:Landroid/content/Context;

.field private final fragment:Landroidx/fragment/app/Fragment;

.field private final surfaceView:Lcom/android/incallui/answer/impl/FixedAspectSurfaceView;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;Landroid/view/View;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    .line 66
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen;->callId:Ljava/lang/String;

    .line 67
    invoke-static {p2}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    iput-object p1, p0, Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen;->fragment:Landroidx/fragment/app/Fragment;

    .line 68
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen;->context:Landroid/content/Context;

    const p1, 0x7f0901ab

    .line 72
    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/answer/impl/FixedAspectSurfaceView;

    .line 71
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/answer/impl/FixedAspectSurfaceView;

    iput-object p1, p0, Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen;->surfaceView:Lcom/android/incallui/answer/impl/FixedAspectSurfaceView;

    const/4 p2, 0x0

    .line 73
    invoke-virtual {p1, p2}, Lcom/android/incallui/answer/impl/FixedAspectSurfaceView;->setVisibility(I)V

    const p1, 0x7f0901ad

    .line 74
    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    const/high16 p1, -0x1000000

    .line 75
    invoke-virtual {p3, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen;->camera:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method private closeCamera()V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen;->camera:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    const/4 v0, 0x0

    .line 245
    iput-object v0, p0, Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen;->camera:Landroid/hardware/camera2/CameraDevice;

    :cond_0
    return-void
.end method

.method private getFrontFacingCameraSizes(Landroid/hardware/camera2/CameraManager;)Landroid/hardware/camera2/params/StreamConfigurationMap;
    .locals 9

    const-string v0, "SelfManagedAnswerVideoCallScreen.getFrontFacingCameraSizes"

    const/4 v1, 0x0

    .line 148
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 157
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    .line 160
    :try_start_1
    invoke-virtual {p1, v6}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v7
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0

    .line 169
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v7, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    .line 174
    :cond_0
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 175
    invoke-virtual {v7, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-nez v7, :cond_1

    goto :goto_1

    .line 180
    :cond_1
    iput-object v6, p0, Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen;->cameraId:Ljava/lang/String;

    return-object v7

    :catch_0
    move-exception v6

    const-string v7, "failed to get camera characteristics"

    .line 162
    invoke-static {v0, v7, v6}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    new-array p1, v4, [Ljava/lang/Object;

    const-string v2, "No valid configurations."

    .line 183
    invoke-static {v0, v2, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :catch_1
    move-exception p1

    const-string v2, "failed to get camera ids"

    .line 150
    invoke-static {v0, v2, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private static getOptimalSize([Landroid/util/Size;)Landroid/util/Size;
    .locals 11

    const/4 v0, 0x0

    .line 195
    aget-object v1, p0, v0

    .line 197
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 199
    array-length v3, p0

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v5, p0, v4

    .line 200
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v6

    const/16 v7, 0x780

    if-ge v6, v7, :cond_4

    .line 201
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    const v7, 0x3fe38e39

    sub-float v8, v6, v7

    .line 203
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const v9, 0x3dcccccd    # 0.1f

    cmpg-float v8, v8, v9

    const/4 v10, 0x1

    if-gez v8, :cond_0

    move v8, v10

    goto :goto_1

    :cond_0
    move v8, v0

    :goto_1
    sub-float v7, v2, v7

    .line 205
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v9

    if-gez v7, :cond_1

    goto :goto_2

    :cond_1
    move v10, v0

    :goto_2
    if-eqz v8, :cond_2

    if-eqz v10, :cond_3

    .line 208
    :cond_2
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v8

    if-le v7, v8, :cond_4

    :cond_3
    move-object v1, v5

    move v2, v6

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return-object v1
.end method

.method private openCamera()V
    .locals 5

    .line 124
    iget-object v0, p0, Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen;->context:Landroid/content/Context;

    const-class v1, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 126
    invoke-direct {p0, v0}, Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen;->getFrontFacingCameraSizes(Landroid/hardware/camera2/CameraManager;)Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 131
    :cond_0
    const-class v2, Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen;->getOptimalSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v1

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Optimal size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "SelfManagedAnswerVideoCallScreen.openCamera"

    invoke-static {v4, v2, v3}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 134
    iget-object v3, p0, Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen;->surfaceView:Lcom/android/incallui/answer/impl/FixedAspectSurfaceView;

    invoke-virtual {v3, v2}, Lcom/android/incallui/answer/impl/FixedAspectSurfaceView;->setAspectRatio(F)V

    .line 135
    iget-object v2, p0, Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen;->surfaceView:Lcom/android/incallui/answer/impl/FixedAspectSurfaceView;

    invoke-virtual {v2}, Lcom/android/incallui/answer/impl/FixedAspectSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-interface {v2, v3, v1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen;->cameraId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "failed to open camera"

    .line 140
    invoke-static {v4, v1, v0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getCallId()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen;->callId:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoCallScreenFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen;->fragment:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    .line 234
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen;->closeCamera()V

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 0

    .line 239
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen;->closeCamera()V

    return-void
.end method

.method public onLocalVideoDimensionsChanged()V
    .locals 0

    return-void
.end method

.method public onLocalVideoOrientationChanged()V
    .locals 0

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "SelfManagedAnswerVideoCallScreen.opOpened"

    const-string v3, "camera opened."

    .line 219
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    iput-object p1, p0, Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen;->camera:Landroid/hardware/camera2/CameraDevice;

    .line 221
    iget-object v1, p0, Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen;->surfaceView:Lcom/android/incallui/answer/impl/FixedAspectSurfaceView;

    invoke-virtual {v1}, Lcom/android/incallui/answer/impl/FixedAspectSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    const/4 v2, 0x1

    .line 223
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 224
    invoke-virtual {v3, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    new-array v2, v2, [Landroid/view/Surface;

    aput-object v1, v2, v0

    .line 225
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen$CaptureSessionCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen$CaptureSessionCallback;-><init>(Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen;Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen$1;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SelfManagedAnswerVideoCallScreen.createCameraPreview"

    const-string v1, "failed to create preview"

    .line 227
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onRemoteVideoDimensionsChanged()V
    .locals 0

    return-void
.end method

.method public onRequestReadStoragePermission()V
    .locals 0

    return-void
.end method

.method public onVideoScreenStart()V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen;->openCamera()V

    return-void
.end method

.method public onVideoScreenStop()V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen;->closeCamera()V

    return-void
.end method

.method public showVideoViews(ZZZ)V
    .locals 0

    return-void
.end method

.method public updateFullscreenAndGreenScreenMode(ZZ)V
    .locals 0

    return-void
.end method
