.class Lcom/android/dialer/callcomposer/camera/CameraManager$OrientationHandler;
.super Landroid/view/OrientationEventListener;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/callcomposer/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrientationHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/callcomposer/camera/CameraManager;


# direct methods
.method constructor <init>(Lcom/android/dialer/callcomposer/camera/CameraManager;Landroid/content/Context;)V
    .locals 0

    .line 691
    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$OrientationHandler;->this$0:Lcom/android/dialer/callcomposer/camera/CameraManager;

    .line 692
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 5

    .line 697
    iget-object p1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$OrientationHandler;->this$0:Lcom/android/dialer/callcomposer/camera/CameraManager;

    invoke-static {p1}, Lcom/android/dialer/callcomposer/camera/CameraManager;->access$800(Lcom/android/dialer/callcomposer/camera/CameraManager;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 698
    iget-object p1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$OrientationHandler;->this$0:Lcom/android/dialer/callcomposer/camera/CameraManager;

    .line 700
    invoke-static {p1}, Lcom/android/dialer/callcomposer/camera/CameraManager;->access$900(Lcom/android/dialer/callcomposer/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$OrientationHandler;->this$0:Lcom/android/dialer/callcomposer/camera/CameraManager;

    .line 701
    invoke-static {v1}, Lcom/android/dialer/callcomposer/camera/CameraManager;->access$1200(Lcom/android/dialer/callcomposer/camera/CameraManager;)I

    move-result v1

    iget-object v2, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$OrientationHandler;->this$0:Lcom/android/dialer/callcomposer/camera/CameraManager;

    .line 702
    invoke-static {v2}, Lcom/android/dialer/callcomposer/camera/CameraManager;->access$1300(Lcom/android/dialer/callcomposer/camera/CameraManager;)Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget-object v3, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$OrientationHandler;->this$0:Lcom/android/dialer/callcomposer/camera/CameraManager;

    .line 703
    invoke-static {v3}, Lcom/android/dialer/callcomposer/camera/CameraManager;->access$1300(Lcom/android/dialer/callcomposer/camera/CameraManager;)Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 699
    :goto_0
    invoke-static {v0, v1, v2, v4}, Lcom/android/dialer/callcomposer/camera/CameraManager;->updateCameraRotation(Landroid/hardware/Camera;IIZ)I

    move-result v0

    .line 698
    invoke-static {p1, v0}, Lcom/android/dialer/callcomposer/camera/CameraManager;->access$1002(Lcom/android/dialer/callcomposer/camera/CameraManager;I)I

    :cond_1
    return-void
.end method
