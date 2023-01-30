.class Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment$1;
.super Ljava/lang/Object;
.source "SurfaceViewVideoCallFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment$1;->this$0:Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment$1;->this$0:Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;

    invoke-static {v0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->access$000(Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;)Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->shouldShowCameraPermissionToast()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SurfaceViewVideoCallFragment.cameraPermissionDialogRunnable"

    const-string v2, "showing dialog"

    .line 135
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    iget-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment$1;->this$0:Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;

    invoke-static {v0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->access$100(Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;)V

    :cond_0
    return-void
.end method
