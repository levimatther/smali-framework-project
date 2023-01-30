.class public interface abstract Lcom/android/dialer/callcomposer/camera/CameraPreview$CameraPreviewHost;
.super Ljava/lang/Object;
.source "CameraPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/callcomposer/camera/CameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CameraPreviewHost"
.end annotation


# virtual methods
.method public abstract getView()Landroid/view/View;
.end method

.method public abstract isValid()Z
.end method

.method public abstract onCameraPermissionGranted()V
.end method

.method public abstract setShown()V
.end method

.method public abstract startPreview(Landroid/hardware/Camera;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
