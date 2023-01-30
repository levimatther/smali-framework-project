.class public Lcom/android/incallui/InCallZoomController;
.super Ljava/lang/Object;
.source "InCallZoomController.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/InCallZoomController$ZoomChangeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_CAMERA_ZOOM_VALUE:I = 0x0

.field private static final DIALOG_ALPHA_INDEX:F = 0.6f

.field private static sInCallZoomController:Lcom/android/incallui/InCallZoomController;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mCameraId:Ljava/lang/String;

.field mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mContext:Landroid/content/Context;

.field private mInCallPresenter:Lcom/android/incallui/InCallPresenter;

.field private mZoomIndex:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 100
    iput v0, p0, Lcom/android/incallui/InCallZoomController;->mZoomIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/InCallZoomController;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/android/incallui/InCallZoomController;->mZoomIndex:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/incallui/InCallZoomController;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/android/incallui/InCallZoomController;->mZoomIndex:I

    return p1
.end method

.method private dismissAlertDialog()V
    .locals 3

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/InCallZoomController;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/incallui/InCallZoomController;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 233
    iput-object v0, p0, Lcom/android/incallui/InCallZoomController;->mAlertDialog:Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissAlertDialog: Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/InCallZoomController;
    .locals 2

    const-class v0, Lcom/android/incallui/InCallZoomController;

    monitor-enter v0

    .line 106
    :try_start_0
    sget-object v1, Lcom/android/incallui/InCallZoomController;->sInCallZoomController:Lcom/android/incallui/InCallZoomController;

    if-nez v1, :cond_0

    .line 107
    new-instance v1, Lcom/android/incallui/InCallZoomController;

    invoke-direct {v1}, Lcom/android/incallui/InCallZoomController;-><init>()V

    sput-object v1, Lcom/android/incallui/InCallZoomController;->sInCallZoomController:Lcom/android/incallui/InCallZoomController;

    .line 109
    :cond_0
    sget-object v1, Lcom/android/incallui/InCallZoomController;->sInCallZoomController:Lcom/android/incallui/InCallZoomController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static initZoomControl(Lcom/android/incallui/ZoomControlBar;I)V
    .locals 1

    const/16 v0, 0x64

    .line 191
    invoke-virtual {p0, v0}, Lcom/android/incallui/ZoomControlBar;->setZoomMax(I)V

    .line 192
    invoke-virtual {p0, p1}, Lcom/android/incallui/ZoomControlBar;->setZoomIndex(I)V

    const/4 p1, 0x1

    .line 193
    invoke-virtual {p0, p1}, Lcom/android/incallui/ZoomControlBar;->setEnabled(Z)V

    return-void
.end method

.method private isCameraZoomSupported()Z
    .locals 4

    const/4 v0, 0x0

    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/InCallZoomController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    .line 202
    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;

    move-result-object v1

    .line 205
    iget-object v2, p0, Lcom/android/incallui/InCallZoomController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 206
    invoke-virtual {v1}, Lcom/android/incallui/InCallCameraManager;->getActiveCameraId()Ljava/lang/String;

    move-result-object v1

    .line 205
    invoke-virtual {v2, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 207
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCameraZoomSupported: Failed to retrieve Max Zoom, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v0
.end method

.method private static setLayoutParams(Landroid/app/AlertDialog;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 149
    :cond_0
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 150
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    .line 151
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 152
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v0, 0x2

    .line 153
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method


# virtual methods
.method public onCameraEnabled(Ljava/lang/String;)V
    .locals 2

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCameraEnabled: - cameraId -"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/android/incallui/InCallZoomController;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    iput-object p1, p0, Lcom/android/incallui/InCallZoomController;->mCameraId:Ljava/lang/String;

    const/4 p1, 0x0

    .line 224
    iput p1, p0, Lcom/android/incallui/InCallZoomController;->mZoomIndex:I

    .line 225
    invoke-direct {p0}, Lcom/android/incallui/InCallZoomController;->dismissAlertDialog()V

    :cond_0
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/call/DialerCall;)V
    .locals 2

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onIncomingCall - DialerCall "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "oldState "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "newState "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    invoke-direct {p0}, Lcom/android/incallui/InCallZoomController;->dismissAlertDialog()V

    return-void
.end method

.method public onPreviewSurfaceClicked(Landroid/telecom/InCallService$VideoCall;)V
    .locals 4

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreviewSurfaceClicked: VideoCall - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 164
    invoke-direct {p0}, Lcom/android/incallui/InCallZoomController;->isCameraZoomSupported()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/incallui/InCallZoomController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    .line 171
    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 172
    iget-object v1, p0, Lcom/android/incallui/InCallZoomController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00f0

    const/4 v3, 0x0

    .line 173
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090365

    .line 174
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/ZoomControlBar;

    .line 176
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 177
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallZoomController;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x1

    .line 178
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 179
    iget-object v0, p0, Lcom/android/incallui/InCallZoomController;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-static {v0}, Lcom/android/incallui/InCallZoomController;->setLayoutParams(Landroid/app/AlertDialog;)V

    .line 180
    new-instance v0, Lcom/android/incallui/InCallZoomController$ZoomChangeListener;

    invoke-direct {v0, p0, p1}, Lcom/android/incallui/InCallZoomController$ZoomChangeListener;-><init>(Lcom/android/incallui/InCallZoomController;Landroid/telecom/InCallService$VideoCall;)V

    invoke-virtual {v2, v0}, Lcom/android/incallui/ZoomControlBar;->setOnZoomChangeListener(Lcom/android/incallui/ZoomControl$OnZoomChangedListener;)V

    .line 181
    iget p1, p0, Lcom/android/incallui/InCallZoomController;->mZoomIndex:I

    invoke-static {v2, p1}, Lcom/android/incallui/InCallZoomController;->initZoomControl(Lcom/android/incallui/ZoomControlBar;I)V

    .line 182
    iget-object p1, p0, Lcom/android/incallui/InCallZoomController;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreviewSurfaceClicked: Exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "onPreviewSurfaceClicked: VideoCall is null or Zoom not supported "

    .line 165
    invoke-static {p0, p1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setUp(Landroid/content/Context;)V
    .locals 1

    .line 122
    iput-object p1, p0, Lcom/android/incallui/InCallZoomController;->mContext:Landroid/content/Context;

    .line 123
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/InCallZoomController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    .line 124
    invoke-virtual {p1, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 125
    iget-object p1, p0, Lcom/android/incallui/InCallZoomController;->mContext:Landroid/content/Context;

    const-string v0, "camera"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lcom/android/incallui/InCallZoomController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    return-void
.end method

.method public tearDown()V
    .locals 2

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/android/incallui/InCallZoomController;->mAlertDialog:Landroid/app/AlertDialog;

    .line 133
    iput-object v0, p0, Lcom/android/incallui/InCallZoomController;->mContext:Landroid/content/Context;

    .line 134
    iput-object v0, p0, Lcom/android/incallui/InCallZoomController;->mCameraId:Ljava/lang/String;

    const/4 v1, 0x0

    .line 135
    iput v1, p0, Lcom/android/incallui/InCallZoomController;->mZoomIndex:I

    .line 136
    iget-object v1, p0, Lcom/android/incallui/InCallZoomController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 137
    iput-object v0, p0, Lcom/android/incallui/InCallZoomController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    .line 138
    iput-object v0, p0, Lcom/android/incallui/InCallZoomController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    return-void
.end method
