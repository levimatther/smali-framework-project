.class Lcom/android/dialer/callcomposer/camera/CameraManager$6;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusMoveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/callcomposer/camera/CameraManager;->tryShowPreview()V
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

    .line 625
    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$6;->this$0:Lcom/android/dialer/callcomposer/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocusMoving(ZLandroid/hardware/Camera;)V
    .locals 0

    .line 628
    iget-object p2, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$6;->this$0:Lcom/android/dialer/callcomposer/camera/CameraManager;

    invoke-static {p2}, Lcom/android/dialer/callcomposer/camera/CameraManager;->access$000(Lcom/android/dialer/callcomposer/camera/CameraManager;)Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->onAutoFocusMoving(Z)V

    return-void
.end method
