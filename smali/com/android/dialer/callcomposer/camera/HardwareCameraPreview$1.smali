.class Lcom/android/dialer/callcomposer/camera/HardwareCameraPreview$1;
.super Ljava/lang/Object;
.source "HardwareCameraPreview.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/callcomposer/camera/HardwareCameraPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/callcomposer/camera/HardwareCameraPreview;


# direct methods
.method constructor <init>(Lcom/android/dialer/callcomposer/camera/HardwareCameraPreview;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/HardwareCameraPreview$1;->this$0:Lcom/android/dialer/callcomposer/camera/HardwareCameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 48
    invoke-static {}, Lcom/android/dialer/callcomposer/camera/CameraManager;->get()Lcom/android/dialer/callcomposer/camera/CameraManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/dialer/callcomposer/camera/HardwareCameraPreview$1;->this$0:Lcom/android/dialer/callcomposer/camera/HardwareCameraPreview;

    invoke-static {p2}, Lcom/android/dialer/callcomposer/camera/HardwareCameraPreview;->access$000(Lcom/android/dialer/callcomposer/camera/HardwareCameraPreview;)Lcom/android/dialer/callcomposer/camera/CameraPreview;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/dialer/callcomposer/camera/CameraManager;->setSurface(Lcom/android/dialer/callcomposer/camera/CameraPreview;)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .line 59
    invoke-static {}, Lcom/android/dialer/callcomposer/camera/CameraManager;->get()Lcom/android/dialer/callcomposer/camera/CameraManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/dialer/callcomposer/camera/CameraManager;->setSurface(Lcom/android/dialer/callcomposer/camera/CameraPreview;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 54
    invoke-static {}, Lcom/android/dialer/callcomposer/camera/CameraManager;->get()Lcom/android/dialer/callcomposer/camera/CameraManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/dialer/callcomposer/camera/HardwareCameraPreview$1;->this$0:Lcom/android/dialer/callcomposer/camera/HardwareCameraPreview;

    invoke-static {p2}, Lcom/android/dialer/callcomposer/camera/HardwareCameraPreview;->access$000(Lcom/android/dialer/callcomposer/camera/HardwareCameraPreview;)Lcom/android/dialer/callcomposer/camera/CameraPreview;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/dialer/callcomposer/camera/CameraManager;->setSurface(Lcom/android/dialer/callcomposer/camera/CameraPreview;)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 65
    invoke-static {}, Lcom/android/dialer/callcomposer/camera/CameraManager;->get()Lcom/android/dialer/callcomposer/camera/CameraManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/HardwareCameraPreview$1;->this$0:Lcom/android/dialer/callcomposer/camera/HardwareCameraPreview;

    invoke-static {v0}, Lcom/android/dialer/callcomposer/camera/HardwareCameraPreview;->access$000(Lcom/android/dialer/callcomposer/camera/HardwareCameraPreview;)Lcom/android/dialer/callcomposer/camera/CameraPreview;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/dialer/callcomposer/camera/CameraManager;->setSurface(Lcom/android/dialer/callcomposer/camera/CameraPreview;)V

    return-void
.end method
