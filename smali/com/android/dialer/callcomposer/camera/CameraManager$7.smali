.class Lcom/android/dialer/callcomposer/camera/CameraManager$7;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/callcomposer/camera/CameraManager;->autoFocus()V
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

    .line 771
    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$7;->this$0:Lcom/android/dialer/callcomposer/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 1

    .line 774
    iget-object p2, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$7;->this$0:Lcom/android/dialer/callcomposer/camera/CameraManager;

    invoke-static {p2}, Lcom/android/dialer/callcomposer/camera/CameraManager;->access$000(Lcom/android/dialer/callcomposer/camera/CameraManager;)Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->onAutoFocus(ZZ)V

    return-void
.end method
