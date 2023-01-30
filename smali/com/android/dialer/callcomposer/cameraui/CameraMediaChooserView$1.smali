.class Lcom/android/dialer/callcomposer/cameraui/CameraMediaChooserView$1;
.super Ljava/lang/Object;
.source "CameraMediaChooserView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/callcomposer/cameraui/CameraMediaChooserView;->onDraw(Landroid/graphics/Canvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/callcomposer/cameraui/CameraMediaChooserView;


# direct methods
.method constructor <init>(Lcom/android/dialer/callcomposer/cameraui/CameraMediaChooserView;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/android/dialer/callcomposer/cameraui/CameraMediaChooserView$1;->this$0:Lcom/android/dialer/callcomposer/cameraui/CameraMediaChooserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 92
    iget-object v0, p0, Lcom/android/dialer/callcomposer/cameraui/CameraMediaChooserView$1;->this$0:Lcom/android/dialer/callcomposer/cameraui/CameraMediaChooserView;

    const v1, 0x7f0900be

    .line 93
    invoke-virtual {v0, v1}, Lcom/android/dialer/callcomposer/cameraui/CameraMediaChooserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/callcomposer/camera/HardwareCameraPreview;

    if-nez v0, :cond_0

    return-void

    .line 97
    :cond_0
    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/HardwareCameraPreview;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 98
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 99
    new-instance v3, Lcom/android/dialer/callcomposer/camera/SoftwareCameraPreview;

    iget-object v4, p0, Lcom/android/dialer/callcomposer/cameraui/CameraMediaChooserView$1;->this$0:Lcom/android/dialer/callcomposer/cameraui/CameraMediaChooserView;

    .line 100
    invoke-virtual {v4}, Lcom/android/dialer/callcomposer/cameraui/CameraMediaChooserView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/dialer/callcomposer/camera/SoftwareCameraPreview;-><init>(Landroid/content/Context;)V

    .line 103
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 104
    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method
