.class public Lcom/android/dialer/callcomposer/camera/HardwareCameraPreview;
.super Landroid/view/TextureView;
.source "HardwareCameraPreview.java"

# interfaces
.implements Lcom/android/dialer/callcomposer/camera/CameraPreview$CameraPreviewHost;


# instance fields
.field private mPreview:Lcom/android/dialer/callcomposer/camera/CameraPreview;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance p1, Lcom/android/dialer/callcomposer/camera/CameraPreview;

    invoke-direct {p1, p0}, Lcom/android/dialer/callcomposer/camera/CameraPreview;-><init>(Lcom/android/dialer/callcomposer/camera/CameraPreview$CameraPreviewHost;)V

    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/HardwareCameraPreview;->mPreview:Lcom/android/dialer/callcomposer/camera/CameraPreview;

    .line 43
    new-instance p1, Lcom/android/dialer/callcomposer/camera/HardwareCameraPreview$1;

    invoke-direct {p1, p0}, Lcom/android/dialer/callcomposer/camera/HardwareCameraPreview$1;-><init>(Lcom/android/dialer/callcomposer/camera/HardwareCameraPreview;)V

    invoke-virtual {p0, p1}, Lcom/android/dialer/callcomposer/camera/HardwareCameraPreview;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/callcomposer/camera/HardwareCameraPreview;)Lcom/android/dialer/callcomposer/camera/CameraPreview;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/dialer/callcomposer/camera/HardwareCameraPreview;->mPreview:Lcom/android/dialer/callcomposer/camera/CameraPreview;

    return-object p0
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public isValid()Z
    .locals 1

    .line 113
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/camera/HardwareCameraPreview;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

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

    .line 89
    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    .line 90
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/HardwareCameraPreview;->mPreview:Lcom/android/dialer/callcomposer/camera/CameraPreview;

    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/CameraPreview;->onAttachedToWindow()V

    return-void
.end method

.method public onCameraPermissionGranted()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/HardwareCameraPreview;->mPreview:Lcom/android/dialer/callcomposer/camera/CameraPreview;

    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/CameraPreview;->onCameraPermissionGranted()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 83
    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    .line 84
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/HardwareCameraPreview;->mPreview:Lcom/android/dialer/callcomposer/camera/CameraPreview;

    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/CameraPreview;->onDetachedFromWindow()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/HardwareCameraPreview;->mPreview:Lcom/android/dialer/callcomposer/camera/CameraPreview;

    invoke-virtual {v0, p1, p2}, Lcom/android/dialer/callcomposer/camera/CameraPreview;->getWidthMeasureSpec(II)I

    move-result p1

    .line 102
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/HardwareCameraPreview;->mPreview:Lcom/android/dialer/callcomposer/camera/CameraPreview;

    invoke-virtual {v0, p1, p2}, Lcom/android/dialer/callcomposer/camera/CameraPreview;->getHeightMeasureSpec(II)I

    move-result p2

    .line 103
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onMeasure(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    .line 95
    invoke-super {p0, p1}, Landroid/view/TextureView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 96
    iget-object p1, p0, Lcom/android/dialer/callcomposer/camera/HardwareCameraPreview;->mPreview:Lcom/android/dialer/callcomposer/camera/CameraPreview;

    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/CameraPreview;->onRestoreInstanceState()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 77
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 78
    iget-object p1, p0, Lcom/android/dialer/callcomposer/camera/HardwareCameraPreview;->mPreview:Lcom/android/dialer/callcomposer/camera/CameraPreview;

    invoke-virtual {p1, p2}, Lcom/android/dialer/callcomposer/camera/CameraPreview;->onVisibilityChanged(I)V

    return-void
.end method

.method public setShown()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/HardwareCameraPreview;->mPreview:Lcom/android/dialer/callcomposer/camera/CameraPreview;

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

    .line 118
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/camera/HardwareCameraPreview;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method
