.class Lcom/android/dialer/callcomposer/camera/SoftwareCameraPreview$1;
.super Ljava/lang/Object;
.source "SoftwareCameraPreview.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/callcomposer/camera/SoftwareCameraPreview;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/callcomposer/camera/SoftwareCameraPreview;


# direct methods
.method constructor <init>(Lcom/android/dialer/callcomposer/camera/SoftwareCameraPreview;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/SoftwareCameraPreview$1;->this$0:Lcom/android/dialer/callcomposer/camera/SoftwareCameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 55
    invoke-static {}, Lcom/android/dialer/callcomposer/camera/CameraManager;->get()Lcom/android/dialer/callcomposer/camera/CameraManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/dialer/callcomposer/camera/SoftwareCameraPreview$1;->this$0:Lcom/android/dialer/callcomposer/camera/SoftwareCameraPreview;

    invoke-static {p2}, Lcom/android/dialer/callcomposer/camera/SoftwareCameraPreview;->access$000(Lcom/android/dialer/callcomposer/camera/SoftwareCameraPreview;)Lcom/android/dialer/callcomposer/camera/CameraPreview;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/dialer/callcomposer/camera/CameraManager;->setSurface(Lcom/android/dialer/callcomposer/camera/CameraPreview;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 46
    invoke-static {}, Lcom/android/dialer/callcomposer/camera/CameraManager;->get()Lcom/android/dialer/callcomposer/camera/CameraManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/SoftwareCameraPreview$1;->this$0:Lcom/android/dialer/callcomposer/camera/SoftwareCameraPreview;

    invoke-static {v0}, Lcom/android/dialer/callcomposer/camera/SoftwareCameraPreview;->access$000(Lcom/android/dialer/callcomposer/camera/SoftwareCameraPreview;)Lcom/android/dialer/callcomposer/camera/CameraPreview;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/dialer/callcomposer/camera/CameraManager;->setSurface(Lcom/android/dialer/callcomposer/camera/CameraPreview;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 60
    invoke-static {}, Lcom/android/dialer/callcomposer/camera/CameraManager;->get()Lcom/android/dialer/callcomposer/camera/CameraManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/dialer/callcomposer/camera/CameraManager;->setSurface(Lcom/android/dialer/callcomposer/camera/CameraPreview;)V

    return-void
.end method
