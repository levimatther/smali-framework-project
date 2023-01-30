.class public Lcom/android/dialer/callcomposer/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/callcomposer/camera/CameraManager$SizeComparator;,
        Lcom/android/dialer/callcomposer/camera/CameraManager$OrientationHandler;,
        Lcom/android/dialer/callcomposer/camera/CameraManager$MediaCallback;,
        Lcom/android/dialer/callcomposer/camera/CameraManager$CameraManagerListener;
    }
.end annotation


# static fields
.field private static final DUMMY_SHUTTER_CALLBACK:Landroid/hardware/Camera$ShutterCallback;

.field private static final ERROR_HARDWARE_ACCELERATION_DISABLED:I = 0x3

.field private static final ERROR_OPENING_CAMERA:I = 0x1

.field private static final ERROR_SHOWING_PREVIEW:I = 0x2

.field private static final ERROR_TAKING_PICTURE:I = 0x4

.field private static final NO_CAMERA_SELECTED:I = -0x1

.field private static sInstance:Lcom/android/dialer/callcomposer/camera/CameraManager;


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mCameraIndex:I

.field private final mCameraInfo:Landroid/hardware/Camera$CameraInfo;

.field private mCameraPreview:Lcom/android/dialer/callcomposer/camera/CameraPreview;

.field private final mFocusOverlayManager:Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;

.field private final mHasFrontAndBackCamera:Z

.field private mIsHardwareAccelerationSupported:Z

.field private mListener:Lcom/android/dialer/callcomposer/camera/CameraManager$CameraManagerListener;

.field private mOpenCameraTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Void;",
            "Landroid/hardware/Camera;",
            ">;"
        }
    .end annotation
.end field

.field private mOpenRequested:Z

.field private mOrientationHandler:Lcom/android/dialer/callcomposer/camera/CameraManager$OrientationHandler;

.field private mPendingOpenCameraIndex:I

.field private mRotation:I

.field private mTakingPicture:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 87
    new-instance v0, Lcom/android/dialer/callcomposer/camera/CameraManager$1;

    invoke-direct {v0}, Lcom/android/dialer/callcomposer/camera/CameraManager$1;-><init>()V

    sput-object v0, Lcom/android/dialer/callcomposer/camera/CameraManager;->DUMMY_SHUTTER_CALLBACK:Landroid/hardware/Camera$ShutterCallback;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 130
    iput v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mPendingOpenCameraIndex:I

    .line 148
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    iput-object v1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    .line 149
    iput v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCameraIndex:I

    .line 154
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 155
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v3, v1, :cond_3

    .line 158
    :try_start_0
    invoke-static {v3, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 159
    iget v7, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v7, v6, :cond_0

    move v4, v6

    goto :goto_1

    .line 161
    :cond_0
    iget v7, v0, Landroid/hardware/Camera$CameraInfo;->facing:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v7, :cond_1

    move v5, v6

    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CameraManager.CameraManager"

    const-string v3, "Unable to load camera info"

    .line 169
    invoke-static {v1, v3, v0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    move v2, v6

    .line 171
    :cond_4
    iput-boolean v2, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mHasFrontAndBackCamera:Z

    .line 172
    new-instance v0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;-><init>(Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager$Listener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mFocusOverlayManager:Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;

    .line 175
    iput-boolean v6, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mIsHardwareAccelerationSupported:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/callcomposer/camera/CameraManager;)Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mFocusOverlayManager:Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/dialer/callcomposer/camera/CameraManager;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCameraIndex:I

    return p0
.end method

.method static synthetic access$1000(Lcom/android/dialer/callcomposer/camera/CameraManager;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mRotation:I

    return p0
.end method

.method static synthetic access$1002(Lcom/android/dialer/callcomposer/camera/CameraManager;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mRotation:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/dialer/callcomposer/camera/CameraManager;)Lcom/android/dialer/callcomposer/camera/CameraPreview;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCameraPreview:Lcom/android/dialer/callcomposer/camera/CameraPreview;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/dialer/callcomposer/camera/CameraManager;)I
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/CameraManager;->getScreenRotation()I

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/android/dialer/callcomposer/camera/CameraManager;)Landroid/hardware/Camera$CameraInfo;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/dialer/callcomposer/camera/CameraManager;)Landroid/os/AsyncTask;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mOpenCameraTask:Landroid/os/AsyncTask;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/dialer/callcomposer/camera/CameraManager;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mOpenCameraTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/dialer/callcomposer/camera/CameraManager;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mOpenRequested:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/dialer/callcomposer/camera/CameraManager;Landroid/hardware/Camera;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/dialer/callcomposer/camera/CameraManager;->releaseCamera(Landroid/hardware/Camera;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/dialer/callcomposer/camera/CameraManager;Landroid/hardware/Camera;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/dialer/callcomposer/camera/CameraManager;->setCamera(Landroid/hardware/Camera;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/dialer/callcomposer/camera/CameraManager;)Lcom/android/dialer/callcomposer/camera/CameraManager$CameraManagerListener;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mListener:Lcom/android/dialer/callcomposer/camera/CameraManager$CameraManagerListener;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/dialer/callcomposer/camera/CameraManager;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mPendingOpenCameraIndex:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/dialer/callcomposer/camera/CameraManager;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mTakingPicture:Z

    return p0
.end method

.method static synthetic access$802(Lcom/android/dialer/callcomposer/camera/CameraManager;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mTakingPicture:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/dialer/callcomposer/camera/CameraManager;)Landroid/hardware/Camera;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    return-object p0
.end method

.method private chooseBestPictureSize()Landroid/hardware/Camera$Size;
    .locals 1

    .line 669
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    return-object v0
.end method

.method private chooseBestPreviewSize(Landroid/hardware/Camera$Size;)Landroid/hardware/Camera$Size;
    .locals 4

    .line 677
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    .line 678
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 679
    iget v1, p1, Landroid/hardware/Camera$Size;->width:I

    int-to-float v1, v1

    iget v2, p1, Landroid/hardware/Camera$Size;->height:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 680
    iget v2, p1, Landroid/hardware/Camera$Size;->width:I

    iget p1, p1, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v2, p1

    .line 683
    new-instance p1, Lcom/android/dialer/callcomposer/camera/CameraManager$SizeComparator;

    const v3, 0x7fffffff

    invoke-direct {p1, v3, v3, v1, v2}, Lcom/android/dialer/callcomposer/camera/CameraManager$SizeComparator;-><init>(IIFI)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p1, 0x0

    .line 687
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/Camera$Size;

    return-object p1
.end method

.method public static get()Lcom/android/dialer/callcomposer/camera/CameraManager;
    .locals 1

    .line 180
    sget-object v0, Lcom/android/dialer/callcomposer/camera/CameraManager;->sInstance:Lcom/android/dialer/callcomposer/camera/CameraManager;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Lcom/android/dialer/callcomposer/camera/CameraManager;

    invoke-direct {v0}, Lcom/android/dialer/callcomposer/camera/CameraManager;-><init>()V

    sput-object v0, Lcom/android/dialer/callcomposer/camera/CameraManager;->sInstance:Lcom/android/dialer/callcomposer/camera/CameraManager;

    .line 183
    :cond_0
    sget-object v0, Lcom/android/dialer/callcomposer/camera/CameraManager;->sInstance:Lcom/android/dialer/callcomposer/camera/CameraManager;

    return-object v0
.end method

.method private getScreenRotation()I
    .locals 2

    .line 653
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCameraPreview:Lcom/android/dialer/callcomposer/camera/CameraPreview;

    .line 654
    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/WindowManager;

    .line 655
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 656
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 657
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method private logCameraSize(Ljava/lang/String;Landroid/hardware/Camera$Size;)V
    .locals 1

    .line 837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "x"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Landroid/hardware/Camera$Size;->width:I

    int-to-float p1, p1

    iget p2, p2, Landroid/hardware/Camera$Size;->height:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "CameraManager.logCameraSize"

    invoke-static {v0, p1, p2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private releaseCamera(Landroid/hardware/Camera;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mFocusOverlayManager:Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->onCameraReleased()V

    .line 502
    new-instance v0, Lcom/android/dialer/callcomposer/camera/CameraManager$5;

    invoke-direct {v0, p0, p1}, Lcom/android/dialer/callcomposer/camera/CameraManager$5;-><init>(Lcom/android/dialer/callcomposer/camera/CameraManager;Landroid/hardware/Camera;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 509
    invoke-virtual {v0, p1}, Lcom/android/dialer/callcomposer/camera/CameraManager$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static screenRotationToDegress(I)I
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/16 p0, 0x10e

    return p0

    :cond_0
    const-string p0, "Invalid surface rotation."

    .line 566
    invoke-static {p0}, Lcom/android/dialer/common/Assert;->createIllegalStateFailException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0

    :cond_1
    const/16 p0, 0xb4

    return p0

    :cond_2
    const/16 p0, 0x5a

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private setCamera(Landroid/hardware/Camera;)V
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-ne v0, p1, :cond_0

    return-void

    .line 576
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/dialer/callcomposer/camera/CameraManager;->releaseCamera(Landroid/hardware/Camera;)V

    .line 577
    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    .line 578
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/CameraManager;->tryShowPreview()V

    .line 579
    iget-object p1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mListener:Lcom/android/dialer/callcomposer/camera/CameraManager$CameraManagerListener;

    if-eqz p1, :cond_1

    .line 580
    invoke-interface {p1}, Lcom/android/dialer/callcomposer/camera/CameraManager$CameraManagerListener;->onCameraChanged()V

    :cond_1
    return-void
.end method

.method private tryShowPreview()V
    .locals 9

    const-string v0, "CameraManager.tryShowPreview"

    .line 586
    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCameraPreview:Lcom/android/dialer/callcomposer/camera/CameraPreview;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v2, 0x2

    .line 595
    :try_start_0
    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 596
    iget-boolean v1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mTakingPicture:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_2

    .line 597
    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    .line 600
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/CameraManager;->getScreenRotation()I

    move-result v5

    iget-object v6, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v6, v6, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget-object v7, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v7, v7, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v7, v4, :cond_1

    move v7, v4

    goto :goto_0

    :cond_1
    move v7, v3

    .line 598
    :goto_0
    invoke-static {v1, v5, v6, v7}, Lcom/android/dialer/callcomposer/camera/CameraManager;->updateCameraRotation(Landroid/hardware/Camera;IIZ)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mRotation:I

    .line 605
    :cond_2
    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 606
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/CameraManager;->chooseBestPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 607
    invoke-direct {p0, v5}, Lcom/android/dialer/callcomposer/camera/CameraManager;->chooseBestPreviewSize(Landroid/hardware/Camera$Size;)Landroid/hardware/Camera$Size;

    move-result-object v6

    .line 608
    iget v7, v6, Landroid/hardware/Camera$Size;->width:I

    iget v8, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v7, v8}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 609
    iget v7, v5, Landroid/hardware/Camera$Size;->width:I

    iget v8, v5, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v7, v8}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    const-string v7, "Setting preview size: "

    .line 610
    invoke-direct {p0, v7, v6}, Lcom/android/dialer/callcomposer/camera/CameraManager;->logCameraSize(Ljava/lang/String;Landroid/hardware/Camera$Size;)V

    const-string v7, "Setting picture size: "

    .line 611
    invoke-direct {p0, v7, v5}, Lcom/android/dialer/callcomposer/camera/CameraManager;->logCameraSize(Ljava/lang/String;Landroid/hardware/Camera$Size;)V

    .line 612
    iget-object v5, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCameraPreview:Lcom/android/dialer/callcomposer/camera/CameraPreview;

    iget-object v7, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v7, v7, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v5, v6, v7}, Lcom/android/dialer/callcomposer/camera/CameraPreview;->setSize(Landroid/hardware/Camera$Size;I)V

    .line 613
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "continuous-picture"

    .line 614
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 616
    invoke-virtual {v1, v6}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 621
    :cond_4
    iget-object v5, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v5, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 622
    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCameraPreview:Lcom/android/dialer/callcomposer/camera/CameraPreview;

    iget-object v5, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v5}, Lcom/android/dialer/callcomposer/camera/CameraPreview;->startPreview(Landroid/hardware/Camera;)V

    .line 623
    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 624
    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    new-instance v5, Lcom/android/dialer/callcomposer/camera/CameraManager$6;

    invoke-direct {v5, p0}, Lcom/android/dialer/callcomposer/camera/CameraManager$6;-><init>(Lcom/android/dialer/callcomposer/camera/CameraManager;)V

    invoke-virtual {v1, v5}, Landroid/hardware/Camera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 631
    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mFocusOverlayManager:Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;

    iget-object v5, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 632
    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mFocusOverlayManager:Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;

    iget-object v5, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v5, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v5, :cond_5

    move v3, v4

    :cond_5
    invoke-virtual {v1, v3}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->setMirror(Z)V

    .line 633
    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mFocusOverlayManager:Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->onPreviewStarted()V

    .line 634
    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mOrientationHandler:Lcom/android/dialer/callcomposer/camera/CameraManager$OrientationHandler;

    if-nez v1, :cond_6

    .line 635
    new-instance v1, Lcom/android/dialer/callcomposer/camera/CameraManager$OrientationHandler;

    iget-object v3, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCameraPreview:Lcom/android/dialer/callcomposer/camera/CameraPreview;

    invoke-virtual {v3}, Lcom/android/dialer/callcomposer/camera/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/android/dialer/callcomposer/camera/CameraManager$OrientationHandler;-><init>(Lcom/android/dialer/callcomposer/camera/CameraManager;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mOrientationHandler:Lcom/android/dialer/callcomposer/camera/CameraManager$OrientationHandler;

    .line 636
    invoke-virtual {v1}, Lcom/android/dialer/callcomposer/camera/CameraManager$OrientationHandler;->enable()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v3, "RuntimeException in CameraManager.tryShowPreview"

    .line 644
    invoke-static {v0, v3, v1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 646
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mListener:Lcom/android/dialer/callcomposer/camera/CameraManager$CameraManagerListener;

    if-eqz v0, :cond_6

    .line 647
    invoke-interface {v0, v2, v1}, Lcom/android/dialer/callcomposer/camera/CameraManager$CameraManagerListener;->onCameraError(ILjava/lang/Exception;)V

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v3, "IOException in CameraManager.tryShowPreview"

    .line 639
    invoke-static {v0, v3, v1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 640
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mListener:Lcom/android/dialer/callcomposer/camera/CameraManager$CameraManagerListener;

    if-eqz v0, :cond_6

    .line 641
    invoke-interface {v0, v2, v1}, Lcom/android/dialer/callcomposer/camera/CameraManager$CameraManagerListener;->onCameraError(ILjava/lang/Exception;)V

    :cond_6
    :goto_1
    return-void

    .line 587
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mOrientationHandler:Lcom/android/dialer/callcomposer/camera/CameraManager$OrientationHandler;

    if-eqz v0, :cond_8

    .line 588
    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/CameraManager$OrientationHandler;->disable()V

    const/4 v0, 0x0

    .line 589
    iput-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mOrientationHandler:Lcom/android/dialer/callcomposer/camera/CameraManager$OrientationHandler;

    .line 591
    :cond_8
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mFocusOverlayManager:Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->onPreviewStopped()V

    return-void
.end method

.method static updateCameraRotation(Landroid/hardware/Camera;IIZ)I
    .locals 3

    .line 529
    invoke-static {p0}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    rem-int/lit8 v0, p2, 0x5a

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    .line 532
    invoke-static {p1}, Lcom/android/dialer/callcomposer/camera/CameraManager;->screenRotationToDegress(I)I

    move-result p1

    if-eqz p1, :cond_2

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    if-nez p3, :cond_3

    add-int/lit16 p1, p1, 0xb4

    :cond_3
    add-int/2addr p1, p2

    .line 539
    rem-int/lit16 p1, p1, 0x168

    if-eqz v1, :cond_4

    if-eqz p3, :cond_4

    add-int/lit16 p2, p1, 0xb4

    .line 543
    rem-int/lit16 p2, p2, 0x168

    invoke-virtual {p0, p2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto :goto_2

    .line 545
    :cond_4
    invoke-virtual {p0, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 549
    :goto_2
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p2

    .line 550
    invoke-virtual {p2, p1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 551
    invoke-virtual {p0, p2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return p1
.end method


# virtual methods
.method public autoFocus()V
    .locals 3

    .line 765
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    return-void

    .line 770
    :cond_0
    :try_start_0
    new-instance v1, Lcom/android/dialer/callcomposer/camera/CameraManager$7;

    invoke-direct {v1, p0}, Lcom/android/dialer/callcomposer/camera/CameraManager$7;-><init>(Lcom/android/dialer/callcomposer/camera/CameraManager;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CameraManager.autoFocus"

    const-string v2, "RuntimeException in CameraManager.autoFocus"

    .line 778
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 781
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mFocusOverlayManager:Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->onAutoFocus(ZZ)V

    :goto_0
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 3

    .line 787
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    return-void

    .line 791
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CameraManager.cancelAutoFocus"

    const-string v2, "RuntimeException in CameraManager.cancelAutoFocus"

    .line 794
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public capture()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method closeCamera()V
    .locals 1

    const/4 v0, 0x0

    .line 410
    iput-boolean v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mOpenRequested:Z

    const/4 v0, 0x0

    .line 411
    invoke-direct {p0, v0}, Lcom/android/dialer/callcomposer/camera/CameraManager;->setCamera(Landroid/hardware/Camera;)V

    return-void
.end method

.method public getCameraIndex()I
    .locals 1

    .line 284
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCameraIndex:I

    return v0
.end method

.method public getCameraInfo()Landroid/hardware/Camera$CameraInfo;
    .locals 2

    .line 312
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCameraIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    return-object v0
.end method

.method public hasFrontAndBackCamera()Z
    .locals 1

    .line 320
    iget-boolean v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mHasFrontAndBackCamera:Z

    return v0
.end method

.method public isCameraAvailable()Z
    .locals 1

    .line 661
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mTakingPicture:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mIsHardwareAccelerationSupported:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method openCamera()V
    .locals 6

    .line 325
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCameraIndex:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 328
    invoke-virtual {p0, v2}, Lcom/android/dialer/callcomposer/camera/CameraManager;->selectCamera(I)Z

    :cond_0
    const/4 v0, 0x1

    .line 330
    iput-boolean v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mOpenRequested:Z

    .line 332
    iget v3, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mPendingOpenCameraIndex:I

    iget v4, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCameraIndex:I

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v3, :cond_1

    goto :goto_1

    .line 340
    :cond_1
    iget-object v3, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mOpenCameraTask:Landroid/os/AsyncTask;

    if-eqz v3, :cond_2

    .line 341
    iput v1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mPendingOpenCameraIndex:I

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    .line 345
    :goto_0
    iget v3, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCameraIndex:I

    iput v3, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mPendingOpenCameraIndex:I

    .line 346
    new-instance v3, Lcom/android/dialer/callcomposer/camera/CameraManager$3;

    invoke-direct {v3, p0}, Lcom/android/dialer/callcomposer/camera/CameraManager$3;-><init>(Lcom/android/dialer/callcomposer/camera/CameraManager;)V

    iput-object v3, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mOpenCameraTask:Landroid/os/AsyncTask;

    .line 402
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start opening camera "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCameraIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "CameraManager.openCamera"

    invoke-static {v5, v3, v4}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v1, :cond_3

    .line 404
    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mOpenCameraTask:Landroid/os/AsyncTask;

    new-array v0, v0, [Ljava/lang/Integer;

    iget v3, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCameraIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3
    :goto_1
    return-void
.end method

.method public resetCameraManager()V
    .locals 1

    const/4 v0, 0x0

    .line 844
    sput-object v0, Lcom/android/dialer/callcomposer/camera/CameraManager;->sInstance:Lcom/android/dialer/callcomposer/camera/CameraManager;

    return-void
.end method

.method public resetPreview()V
    .locals 2

    .line 828
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 829
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCameraPreview:Lcom/android/dialer/callcomposer/camera/CameraPreview;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 830
    invoke-virtual {v0, v1}, Lcom/android/dialer/callcomposer/camera/CameraPreview;->setFocusable(Z)V

    :cond_0
    return-void
.end method

.method public selectCamera(I)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 243
    :try_start_0
    iget v2, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCameraIndex:I

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v2, p1, :cond_0

    return v0

    .line 247
    :cond_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    if-lez v2, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v1

    .line 248
    :goto_0
    invoke-static {v3}, Lcom/android/dialer/common/Assert;->checkState(Z)V

    const/4 v3, -0x1

    .line 250
    iput v3, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCameraIndex:I

    const/4 v3, 0x0

    .line 251
    invoke-direct {p0, v3}, Lcom/android/dialer/callcomposer/camera/CameraManager;->setCamera(Landroid/hardware/Camera;)V

    .line 252
    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    move v4, v1

    :goto_1
    if-ge v4, v2, :cond_3

    .line 254
    invoke-static {v4, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 255
    iget v5, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v5, p1, :cond_2

    .line 256
    iput v4, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCameraIndex:I

    .line 257
    iget-object p1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    invoke-static {v4, p1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 264
    :cond_3
    :goto_2
    iget p1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCameraIndex:I

    if-gez p1, :cond_4

    .line 265
    iput v1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCameraIndex:I

    .line 266
    iget-object p1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    invoke-static {v1, p1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 269
    :cond_4
    iget-boolean p1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mOpenRequested:Z

    if-eqz p1, :cond_5

    .line 271
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/camera/CameraManager;->openCamera()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return v0

    :catch_0
    move-exception p1

    const-string v2, "CameraManager.selectCamera"

    const-string v3, "RuntimeException in CameraManager.selectCamera"

    .line 275
    invoke-static {v2, v3, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 276
    iget-object v2, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mListener:Lcom/android/dialer/callcomposer/camera/CameraManager$CameraManagerListener;

    if-eqz v2, :cond_6

    .line 277
    invoke-interface {v2, v0, p1}, Lcom/android/dialer/callcomposer/camera/CameraManager$CameraManagerListener;->onCameraError(ILjava/lang/Exception;)V

    :cond_6
    return v1
.end method

.method public selectCameraByIndex(I)V
    .locals 2

    .line 288
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCameraIndex:I

    if-ne v0, p1, :cond_0

    return-void

    .line 293
    :cond_0
    :try_start_0
    iput p1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCameraIndex:I

    .line 294
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    invoke-static {p1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 295
    iget-boolean p1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mOpenRequested:Z

    if-eqz p1, :cond_1

    .line 296
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/camera/CameraManager;->openCamera()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "CameraManager.selectCameraByIndex"

    const-string v1, "RuntimeException in CameraManager.selectCameraByIndex"

    .line 299
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 303
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mListener:Lcom/android/dialer/callcomposer/camera/CameraManager$CameraManagerListener;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 304
    invoke-interface {v0, v1, p1}, Lcom/android/dialer/callcomposer/camera/CameraManager$CameraManagerListener;->onCameraError(ILjava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setFocusParameters()V
    .locals 3

    .line 806
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    return-void

    .line 810
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 811
    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mFocusOverlayManager:Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 812
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v1

    if-lez v1, :cond_1

    .line 815
    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mFocusOverlayManager:Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->getFocusAreas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 817
    :cond_1
    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mFocusOverlayManager:Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 818
    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CameraManager.setFocusParameters"

    const-string v2, "RuntimeException in CameraManager setFocusParameters"

    .line 821
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setListener(Lcom/android/dialer/callcomposer/camera/CameraManager$CameraManagerListener;)V
    .locals 2

    .line 420
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 421
    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mListener:Lcom/android/dialer/callcomposer/camera/CameraManager$CameraManagerListener;

    .line 422
    iget-boolean v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mIsHardwareAccelerationSupported:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 423
    invoke-interface {p1, v0, v1}, Lcom/android/dialer/callcomposer/camera/CameraManager$CameraManagerListener;->onCameraError(ILjava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public setRenderOverlay(Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mFocusOverlayManager:Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;

    if-eqz p1, :cond_0

    .line 221
    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;->getPieRenderer()Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 220
    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->setFocusRenderer(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;)V

    return-void
.end method

.method setSurface(Lcom/android/dialer/callcomposer/camera/CameraPreview;)V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCameraPreview:Lcom/android/dialer/callcomposer/camera/CameraPreview;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 198
    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/CameraPreview;->isValid()Z

    move-result v0

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    .line 199
    new-instance v0, Lcom/android/dialer/callcomposer/camera/CameraManager$2;

    invoke-direct {v0, p0}, Lcom/android/dialer/callcomposer/camera/CameraManager$2;-><init>(Lcom/android/dialer/callcomposer/camera/CameraManager;)V

    invoke-virtual {p1, v0}, Lcom/android/dialer/callcomposer/camera/CameraPreview;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 215
    :cond_1
    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCameraPreview:Lcom/android/dialer/callcomposer/camera/CameraPreview;

    .line 216
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/CameraManager;->tryShowPreview()V

    return-void
.end method

.method public swapCamera()V
    .locals 3

    .line 226
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCameraIndex:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkState(Z)V

    .line 227
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/dialer/callcomposer/camera/CameraManager;->selectCamera(I)Z

    return-void
.end method

.method public takePicture(FLcom/android/dialer/callcomposer/camera/CameraManager$MediaCallback;)V
    .locals 4

    .line 428
    iget-boolean v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mTakingPicture:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkState(Z)V

    .line 429
    invoke-static {p2}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCameraPreview:Lcom/android/dialer/callcomposer/camera/CameraPreview;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/dialer/callcomposer/camera/CameraPreview;->setFocusable(Z)V

    .line 431
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mFocusOverlayManager:Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->cancelAutoFocus()V

    .line 432
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 435
    invoke-interface {p2, v3}, Lcom/android/dialer/callcomposer/camera/CameraManager$MediaCallback;->onMediaFailed(Ljava/lang/Exception;)V

    return-void

    .line 438
    :cond_0
    new-instance v0, Lcom/android/dialer/callcomposer/camera/CameraManager$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/dialer/callcomposer/camera/CameraManager$4;-><init>(Lcom/android/dialer/callcomposer/camera/CameraManager;Lcom/android/dialer/callcomposer/camera/CameraManager$MediaCallback;F)V

    .line 476
    iput-boolean v1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mTakingPicture:Z

    .line 478
    :try_start_0
    iget-object p1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    sget-object p2, Lcom/android/dialer/callcomposer/camera/CameraManager;->DUMMY_SHUTTER_CALLBACK:Landroid/hardware/Camera$ShutterCallback;

    invoke-virtual {p1, p2, v3, v3, v0}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "CameraManager.takePicture"

    const-string v0, "RuntimeException in CameraManager.takePicture"

    .line 482
    invoke-static {p2, v0, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 483
    iput-boolean v2, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mTakingPicture:Z

    .line 484
    iget-object p2, p0, Lcom/android/dialer/callcomposer/camera/CameraManager;->mListener:Lcom/android/dialer/callcomposer/camera/CameraManager$CameraManagerListener;

    if-eqz p2, :cond_1

    const/4 v0, 0x4

    .line 485
    invoke-interface {p2, v0, p1}, Lcom/android/dialer/callcomposer/camera/CameraManager$CameraManagerListener;->onCameraError(ILjava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void
.end method
