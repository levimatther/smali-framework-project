.class Lcom/android/incallui/video/impl/VideoCallFragment$2;
.super Ljava/lang/Object;
.source "VideoCallFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/video/impl/VideoCallFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/video/impl/VideoCallFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/video/impl/VideoCallFragment;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment$2;->this$0:Lcom/android/incallui/video/impl/VideoCallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment$2;->this$0:Lcom/android/incallui/video/impl/VideoCallFragment;

    invoke-static {v0}, Lcom/android/incallui/video/impl/VideoCallFragment;->access$000(Lcom/android/incallui/video/impl/VideoCallFragment;)Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->shouldShowCameraPermissionToast()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VideoCallFragment.cameraPermissionDialogRunnable"

    const-string v2, "showing dialog"

    .line 185
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment$2;->this$0:Lcom/android/incallui/video/impl/VideoCallFragment;

    invoke-static {v0}, Lcom/android/incallui/video/impl/VideoCallFragment;->access$100(Lcom/android/incallui/video/impl/VideoCallFragment;)V

    :cond_0
    return-void
.end method
