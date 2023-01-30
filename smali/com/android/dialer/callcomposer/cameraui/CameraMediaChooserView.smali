.class public Lcom/android/dialer/callcomposer/cameraui/CameraMediaChooserView;
.super Landroid/widget/FrameLayout;
.source "CameraMediaChooserView.java"


# static fields
.field private static final STATE_CAMERA_INDEX:Ljava/lang/String; = "camera_index"

.field private static final STATE_SUPER:Ljava/lang/String; = "super"


# instance fields
.field private mIsSoftwareFallbackActive:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 82
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 85
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/dialer/callcomposer/cameraui/CameraMediaChooserView;->mIsSoftwareFallbackActive:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 86
    iput-boolean p1, p0, Lcom/android/dialer/callcomposer/cameraui/CameraMediaChooserView;->mIsSoftwareFallbackActive:Z

    .line 88
    new-instance p1, Lcom/android/dialer/callcomposer/cameraui/CameraMediaChooserView$1;

    invoke-direct {p1, p0}, Lcom/android/dialer/callcomposer/cameraui/CameraMediaChooserView$1;-><init>(Lcom/android/dialer/callcomposer/cameraui/CameraMediaChooserView;)V

    invoke-virtual {p0, p1}, Lcom/android/dialer/callcomposer/cameraui/CameraMediaChooserView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 59
    instance-of v0, p1, Landroid/os/Bundle;

    if-nez v0, :cond_0

    return-void

    .line 63
    :cond_0
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "camera_index"

    .line 64
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "super"

    .line 65
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 67
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoring camera index:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "CameraMediaChooserView.onRestoreInstanceState"

    invoke-static {v2, p1, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, -0x1

    if-eq v0, p1, :cond_1

    .line 70
    invoke-static {}, Lcom/android/dialer/callcomposer/camera/CameraManager;->get()Lcom/android/dialer/callcomposer/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/dialer/callcomposer/camera/CameraManager;->selectCameraByIndex(I)V

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/cameraui/CameraMediaChooserView;->resetState()V

    :goto_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "super"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 51
    invoke-static {}, Lcom/android/dialer/callcomposer/camera/CameraManager;->get()Lcom/android/dialer/callcomposer/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dialer/callcomposer/camera/CameraManager;->getCameraIndex()I

    move-result v1

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saving camera index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "CameraMediaChooserView.onSaveInstanceState"

    invoke-static {v4, v2, v3}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "camera_index"

    .line 53
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public resetState()V
    .locals 2

    .line 77
    invoke-static {}, Lcom/android/dialer/callcomposer/camera/CameraManager;->get()Lcom/android/dialer/callcomposer/camera/CameraManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/dialer/callcomposer/camera/CameraManager;->selectCamera(I)Z

    return-void
.end method
