.class public Lcom/android/dialer/callcomposer/camera/CameraPreview;
.super Ljava/lang/Object;
.source "CameraPreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/callcomposer/camera/CameraPreview$CameraPreviewHost;
    }
.end annotation


# instance fields
.field private mCameraHeight:I

.field private mCameraWidth:I

.field private final mHost:Lcom/android/dialer/callcomposer/camera/CameraPreview$CameraPreviewHost;

.field private mListener:Landroid/view/View$OnTouchListener;

.field private mTabHasBeenShown:Z


# direct methods
.method public constructor <init>(Lcom/android/dialer/callcomposer/camera/CameraPreview$CameraPreviewHost;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/android/dialer/callcomposer/camera/CameraPreview;->mCameraWidth:I

    .line 49
    iput v0, p0, Lcom/android/dialer/callcomposer/camera/CameraPreview;->mCameraHeight:I

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/android/dialer/callcomposer/camera/CameraPreview;->mTabHasBeenShown:Z

    .line 56
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-interface {p1}, Lcom/android/dialer/callcomposer/camera/CameraPreview$CameraPreviewHost;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/CameraPreview;->mHost:Lcom/android/dialer/callcomposer/camera/CameraPreview$CameraPreviewHost;

    return-void
.end method

.method private maybeOpenCamera()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraPreview;->mHost:Lcom/android/dialer/callcomposer/camera/CameraPreview$CameraPreviewHost;

    invoke-interface {v0}, Lcom/android/dialer/callcomposer/camera/CameraPreview$CameraPreviewHost;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 71
    :goto_0
    iget-boolean v1, p0, Lcom/android/dialer/callcomposer/camera/CameraPreview;->mTabHasBeenShown:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/camera/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/util/PermissionsUtil;->hasCameraPermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    invoke-static {}, Lcom/android/dialer/callcomposer/camera/CameraManager;->get()Lcom/android/dialer/callcomposer/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/CameraManager;->openCamera()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraPreview;->mHost:Lcom/android/dialer/callcomposer/camera/CameraPreview$CameraPreviewHost;

    invoke-interface {v0}, Lcom/android/dialer/callcomposer/camera/CameraPreview$CameraPreviewHost;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraPreview;->mHost:Lcom/android/dialer/callcomposer/camera/CameraPreview$CameraPreviewHost;

    invoke-interface {v0}, Lcom/android/dialer/callcomposer/camera/CameraPreview$CameraPreviewHost;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public getHeightMeasureSpec(II)I
    .locals 2

    .line 102
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/CameraPreview;->mCameraHeight:I

    if-ltz v0, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/camera/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    .line 104
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 105
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/CameraPreview;->mCameraWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/dialer/callcomposer/camera/CameraPreview;->mCameraHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    int-to-float p1, p1

    mul-float/2addr p1, v0

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    div-float/2addr p1, v0

    :goto_0
    float-to-int p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    .line 112
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1

    :cond_1
    return p2
.end method

.method public getWidthMeasureSpec(II)I
    .locals 0

    .line 93
    iget p2, p0, Lcom/android/dialer/callcomposer/camera/CameraPreview;->mCameraHeight:I

    if-ltz p2, :cond_0

    .line 94
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    .line 95
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_0
    return p1
.end method

.method public isValid()Z
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraPreview;->mHost:Lcom/android/dialer/callcomposer/camera/CameraPreview$CameraPreviewHost;

    invoke-interface {v0}, Lcom/android/dialer/callcomposer/camera/CameraPreview$CameraPreviewHost;->isValid()Z

    move-result v0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 148
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/CameraPreview;->maybeOpenCamera()V

    return-void
.end method

.method public onCameraPermissionGranted()V
    .locals 0

    .line 160
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/CameraPreview;->maybeOpenCamera()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 152
    invoke-static {}, Lcom/android/dialer/callcomposer/camera/CameraManager;->get()Lcom/android/dialer/callcomposer/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/CameraManager;->closeCamera()V

    return-void
.end method

.method public onRestoreInstanceState()V
    .locals 0

    .line 156
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/CameraPreview;->maybeOpenCamera()V

    return-void
.end method

.method public onVisibilityChanged(I)V
    .locals 1

    .line 121
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/camera/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/util/PermissionsUtil;->hasCameraPermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/CameraPreview;->maybeOpenCamera()V

    goto :goto_0

    .line 125
    :cond_0
    invoke-static {}, Lcom/android/dialer/callcomposer/camera/CameraManager;->get()Lcom/android/dialer/callcomposer/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/CameraManager;->closeCamera()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setFocusable(Z)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraPreview;->mHost:Lcom/android/dialer/callcomposer/camera/CameraPreview$CameraPreviewHost;

    invoke-interface {v0}, Lcom/android/dialer/callcomposer/camera/CameraPreview$CameraPreviewHost;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/dialer/callcomposer/camera/CameraPreview;->mListener:Landroid/view/View$OnTouchListener;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1

    .line 135
    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/CameraPreview;->mListener:Landroid/view/View$OnTouchListener;

    .line 136
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraPreview;->mHost:Lcom/android/dialer/callcomposer/camera/CameraPreview$CameraPreviewHost;

    invoke-interface {v0}, Lcom/android/dialer/callcomposer/camera/CameraPreview$CameraPreviewHost;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setShown()V
    .locals 1

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/android/dialer/callcomposer/camera/CameraPreview;->mTabHasBeenShown:Z

    .line 64
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/CameraPreview;->maybeOpenCamera()V

    return-void
.end method

.method public setSize(Landroid/hardware/Camera$Size;I)V
    .locals 1

    if-eqz p2, :cond_0

    const/16 v0, 0xb4

    if-eq p2, v0, :cond_0

    .line 86
    iget p2, p1, Landroid/hardware/Camera$Size;->height:I

    iput p2, p0, Lcom/android/dialer/callcomposer/camera/CameraPreview;->mCameraWidth:I

    .line 87
    iget p1, p1, Landroid/hardware/Camera$Size;->width:I

    iput p1, p0, Lcom/android/dialer/callcomposer/camera/CameraPreview;->mCameraHeight:I

    goto :goto_0

    .line 80
    :cond_0
    iget p2, p1, Landroid/hardware/Camera$Size;->width:I

    iput p2, p0, Lcom/android/dialer/callcomposer/camera/CameraPreview;->mCameraWidth:I

    .line 81
    iget p1, p1, Landroid/hardware/Camera$Size;->height:I

    iput p1, p0, Lcom/android/dialer/callcomposer/camera/CameraPreview;->mCameraHeight:I

    .line 89
    :goto_0
    iget-object p1, p0, Lcom/android/dialer/callcomposer/camera/CameraPreview;->mHost:Lcom/android/dialer/callcomposer/camera/CameraPreview$CameraPreviewHost;

    invoke-interface {p1}, Lcom/android/dialer/callcomposer/camera/CameraPreview$CameraPreviewHost;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public startPreview(Landroid/hardware/Camera;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraPreview;->mHost:Lcom/android/dialer/callcomposer/camera/CameraPreview$CameraPreviewHost;

    invoke-interface {v0, p1}, Lcom/android/dialer/callcomposer/camera/CameraPreview$CameraPreviewHost;->startPreview(Landroid/hardware/Camera;)V

    return-void
.end method
