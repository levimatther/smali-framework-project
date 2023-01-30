.class Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen$CaptureSessionCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "SelfManagedAnswerVideoCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureSessionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen;


# direct methods
.method private constructor <init>(Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen$CaptureSessionCallback;->this$0:Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen;Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen$1;)V
    .locals 0

    .line 249
    invoke-direct {p0, p1}, Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen$CaptureSessionCallback;-><init>(Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen;)V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "CaptureSessionCallback.onConfigureFailed"

    const-string v1, "failed to configure"

    .line 271
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SelfManagedAnswerVideoCallScreen.onConfigured"

    const-string v2, "camera capture session configured."

    .line 253
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    iget-object v0, p0, Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen$CaptureSessionCallback;->this$0:Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen;

    invoke-static {v0}, Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen;->access$100(Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen$CaptureSessionCallback;->this$0:Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen;

    invoke-static {v0}, Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen;->access$200(Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen$CaptureSessionCallback;->this$0:Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen;

    invoke-static {v0}, Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen;->access$200(Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "CaptureSessionCallback.onConfigured"

    const-string v1, "failed to configure"

    .line 265
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
