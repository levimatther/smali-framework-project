.class public Lcom/android/dialer/callcomposer/camera/SoftwareCameraPreview;
.super Landroid/view/SurfaceView;
.source "SoftwareCameraPreview.java"

# interfaces
.implements Lcom/android/dialer/callcomposer/camera/CameraPreview$CameraPreviewHost;


# instance fields
.field private final mPreview:Lcom/android/dialer/callcomposer/camera/CameraPreview;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance p1, Lcom/android/dialer/callcomposer/camera/CameraPreview;

    invoke-direct {p1, p0}, Lcom/android/dialer/callcomposer/camera/CameraPreview;-><init>(Lcom/android/dialer/callcomposer/camera/CameraPreview$CameraPreviewHost;)V

    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/SoftwareCameraPreview;->mPreview:Lcom/android/dialer/callcomposer/camera/CameraPreview;

    .line 41
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/camera/SoftwareCameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    new-instance v0, Lcom/android/dialer/callcomposer/camera/SoftwareCameraPreview$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/callcomposer/camera/SoftwareCameraPreview$1;-><init>(Lcom/android/dialer/callcomposer/camera/SoftwareCameraPreview;)V

    .line 42
    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/callcomposer/camera/SoftwareCameraPreview;)Lcom/android/dialer/callcomposer/camera/CameraPreview;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/dialer/callcomposer/camera/SoftwareCameraPreview;->mPreview:Lcom/android/dialer/callcomposer/camera/CameraPreview;

    return-object p0
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public isValid()Z
    .locals 1

    .line 108
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/camera/SoftwareCameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 84
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 85
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/SoftwareCameraPreview;->mPreview:Lcom/android/dialer/callcomposer/camera/CameraPreview;

    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/CameraPreview;->onAttachedToWindow()V

    return-void
.end method

.method public onCameraPermissionGranted()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/SoftwareCameraPreview;->mPreview:Lcom/android/dialer/callcomposer/camera/CameraPreview;

    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/CameraPreview;->onCameraPermissionGranted()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 78
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 79
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/SoftwareCameraPreview;->mPreview:Lcom/android/dialer/callcomposer/camera/CameraPreview;

    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/CameraPreview;->onDetachedFromWindow()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/SoftwareCameraPreview;->mPreview:Lcom/android/dialer/callcomposer/camera/CameraPreview;

    invoke-virtual {v0, p1, p2}, Lcom/android/dialer/callcomposer/camera/CameraPreview;->getWidthMeasureSpec(II)I

    move-result p1

    .line 97
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/SoftwareCameraPreview;->mPreview:Lcom/android/dialer/callcomposer/camera/CameraPreview;

    invoke-virtual {v0, p1, p2}, Lcom/android/dialer/callcomposer/camera/CameraPreview;->getHeightMeasureSpec(II)I

    move-result p2

    .line 98
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    .line 90
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 91
    iget-object p1, p0, Lcom/android/dialer/callcomposer/camera/SoftwareCameraPreview;->mPreview:Lcom/android/dialer/callcomposer/camera/CameraPreview;

    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/CameraPreview;->onRestoreInstanceState()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 72
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 73
    iget-object p1, p0, Lcom/android/dialer/callcomposer/camera/SoftwareCameraPreview;->mPreview:Lcom/android/dialer/callcomposer/camera/CameraPreview;

    invoke-virtual {p1, p2}, Lcom/android/dialer/callcomposer/camera/CameraPreview;->onVisibilityChanged(I)V

    return-void
.end method

.method public setShown()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/SoftwareCameraPreview;->mPreview:Lcom/android/dialer/callcomposer/camera/CameraPreview;

    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/CameraPreview;->setShown()V

    return-void
.end method

.method public startPreview(Landroid/hardware/Camera;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/camera/SoftwareCameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    return-void
.end method
