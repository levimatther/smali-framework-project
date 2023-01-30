.class Lcom/android/dialer/callcomposer/camera/CameraManager$2;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/callcomposer/camera/CameraManager;->setSurface(Lcom/android/dialer/callcomposer/camera/CameraPreview;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/callcomposer/camera/CameraManager;


# direct methods
.method constructor <init>(Lcom/android/dialer/callcomposer/camera/CameraManager;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$2;->this$0:Lcom/android/dialer/callcomposer/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 203
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$2;->this$0:Lcom/android/dialer/callcomposer/camera/CameraManager;

    invoke-static {v0}, Lcom/android/dialer/callcomposer/camera/CameraManager;->access$000(Lcom/android/dialer/callcomposer/camera/CameraManager;)Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->setPreviewSize(II)V

    .line 206
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$2;->this$0:Lcom/android/dialer/callcomposer/camera/CameraManager;

    invoke-static {v0}, Lcom/android/dialer/callcomposer/camera/CameraManager;->access$000(Lcom/android/dialer/callcomposer/camera/CameraManager;)Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;

    move-result-object v0

    .line 207
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    .line 208
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr p2, v3

    .line 206
    invoke-virtual {v0, v2, p2}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->onSingleTapUp(II)V

    .line 210
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    return v1
.end method
