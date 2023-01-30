.class Lcom/android/incallui/VideoCallPresenter$LocalDelegate;
.super Ljava/lang/Object;
.source "VideoCallPresenter.java"

# interfaces
.implements Lcom/android/incallui/videosurface/protocol/VideoSurfaceDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/VideoCallPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/VideoCallPresenter;


# direct methods
.method private constructor <init>(Lcom/android/incallui/VideoCallPresenter;)V
    .locals 0

    .line 1501
    iput-object p1, p0, Lcom/android/incallui/VideoCallPresenter$LocalDelegate;->this$0:Lcom/android/incallui/VideoCallPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/VideoCallPresenter;Lcom/android/incallui/VideoCallPresenter$1;)V
    .locals 0

    .line 1501
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter$LocalDelegate;-><init>(Lcom/android/incallui/VideoCallPresenter;)V

    return-void
.end method


# virtual methods
.method public onSurfaceClick(Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;)V
    .locals 2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "VideoCallPresenter.onSurfaceClick"

    const-string v1, ""

    .line 1554
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1555
    iget-object p1, p0, Lcom/android/incallui/VideoCallPresenter$LocalDelegate;->this$0:Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {p1}, Lcom/android/incallui/VideoCallPresenter;->shallTransmitStaticImage()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1556
    iget-object p1, p0, Lcom/android/incallui/VideoCallPresenter$LocalDelegate;->this$0:Lcom/android/incallui/VideoCallPresenter;

    invoke-static {p1}, Lcom/android/incallui/VideoCallPresenter;->access$900(Lcom/android/incallui/VideoCallPresenter;)V

    goto :goto_0

    .line 1557
    :cond_0
    invoke-static {}, Lcom/android/incallui/VideoCallPresenter;->access$1000()Lcom/android/incallui/PictureModeHelper;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/incallui/VideoCallPresenter;->access$1000()Lcom/android/incallui/PictureModeHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/incallui/PictureModeHelper;->canShowPreviewVideoView()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/incallui/VideoCallPresenter$LocalDelegate;->this$0:Lcom/android/incallui/VideoCallPresenter;

    .line 1558
    invoke-static {p1}, Lcom/android/incallui/VideoCallPresenter;->access$1100(Lcom/android/incallui/VideoCallPresenter;)Lcom/android/incallui/call/DialerCall;

    move-result-object p1

    invoke-static {p1}, Lcom/android/incallui/VideoCallPresenter;->isActiveVideoCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/incallui/VideoCallPresenter$LocalDelegate;->this$0:Lcom/android/incallui/VideoCallPresenter;

    invoke-static {p1}, Lcom/android/incallui/VideoCallPresenter;->access$1100(Lcom/android/incallui/VideoCallPresenter;)Lcom/android/incallui/call/DialerCall;

    move-result-object p1

    invoke-static {p1}, Lcom/android/incallui/VideoCallPresenter;->isTransmissionEnabled(Lcom/android/incallui/call/DialerCall;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1561
    iget-object p1, p0, Lcom/android/incallui/VideoCallPresenter$LocalDelegate;->this$0:Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {p1}, Lcom/android/incallui/VideoCallPresenter;->cancelAutoFullScreen()V

    .line 1562
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/incallui/InCallPresenter;->isFullscreen()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1563
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/incallui/InCallPresenter;->setFullScreen(Z)V

    .line 1565
    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallZoomController;->getInstance()Lcom/android/incallui/InCallZoomController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter$LocalDelegate;->this$0:Lcom/android/incallui/VideoCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/VideoCallPresenter;->access$500(Lcom/android/incallui/VideoCallPresenter;)Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/incallui/InCallZoomController;->onPreviewSurfaceClicked(Landroid/telecom/InCallService$VideoCall;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSurfaceCreated(Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;)V
    .locals 3

    .line 1504
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter$LocalDelegate;->this$0:Lcom/android/incallui/VideoCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/VideoCallPresenter;->access$400(Lcom/android/incallui/VideoCallPresenter;)Lcom/android/incallui/video/protocol/VideoCallScreen;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "VideoCallPresenter.LocalDelegate.onSurfaceCreated"

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "no UI"

    .line 1505
    invoke-static {v2, v0, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1508
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter$LocalDelegate;->this$0:Lcom/android/incallui/VideoCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/VideoCallPresenter;->access$500(Lcom/android/incallui/VideoCallPresenter;)Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    if-nez v0, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "no video call"

    .line 1509
    invoke-static {v2, v0, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1515
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter$LocalDelegate;->this$0:Lcom/android/incallui/VideoCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/VideoCallPresenter;->access$600(Lcom/android/incallui/VideoCallPresenter;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1516
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter$LocalDelegate;->this$0:Lcom/android/incallui/VideoCallPresenter;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/incallui/VideoCallPresenter;->access$602(Lcom/android/incallui/VideoCallPresenter;I)I

    .line 1517
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter$LocalDelegate;->this$0:Lcom/android/incallui/VideoCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/VideoCallPresenter;->access$500(Lcom/android/incallui/VideoCallPresenter;)Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;->getSavedSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/telecom/InCallService$VideoCall;->setPreviewSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 1519
    :cond_2
    iget-object p1, p0, Lcom/android/incallui/VideoCallPresenter$LocalDelegate;->this$0:Lcom/android/incallui/VideoCallPresenter;

    invoke-static {p1}, Lcom/android/incallui/VideoCallPresenter;->access$700(Lcom/android/incallui/VideoCallPresenter;)V

    :goto_0
    return-void
.end method

.method public onSurfaceDestroyed(Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;)V
    .locals 2

    .line 1536
    iget-object p1, p0, Lcom/android/incallui/VideoCallPresenter$LocalDelegate;->this$0:Lcom/android/incallui/VideoCallPresenter;

    invoke-static {p1}, Lcom/android/incallui/VideoCallPresenter;->access$500(Lcom/android/incallui/VideoCallPresenter;)Landroid/telecom/InCallService$VideoCall;

    move-result-object p1

    const-string v0, "VideoCallPresenter.LocalDelegate.onSurfaceDestroyed"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "no video call"

    .line 1537
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1541
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/incallui/InCallPresenter;->isChangingConfigurations()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1543
    iget-object p1, p0, Lcom/android/incallui/VideoCallPresenter$LocalDelegate;->this$0:Lcom/android/incallui/VideoCallPresenter;

    invoke-static {p1}, Lcom/android/incallui/VideoCallPresenter;->access$500(Lcom/android/incallui/VideoCallPresenter;)Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/android/incallui/VideoCallPresenter;->access$800(Lcom/android/incallui/VideoCallPresenter;Landroid/telecom/InCallService$VideoCall;Z)V

    goto :goto_0

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "activity is being destroyed due to configuration changes. Not closing the camera."

    .line 1545
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onSurfaceReleased(Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;)V
    .locals 2

    .line 1525
    iget-object p1, p0, Lcom/android/incallui/VideoCallPresenter$LocalDelegate;->this$0:Lcom/android/incallui/VideoCallPresenter;

    invoke-static {p1}, Lcom/android/incallui/VideoCallPresenter;->access$500(Lcom/android/incallui/VideoCallPresenter;)Landroid/telecom/InCallService$VideoCall;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "VideoCallPresenter.LocalDelegate.onSurfaceReleased"

    const-string v1, "no video call"

    .line 1526
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1530
    :cond_0
    iget-object p1, p0, Lcom/android/incallui/VideoCallPresenter$LocalDelegate;->this$0:Lcom/android/incallui/VideoCallPresenter;

    invoke-static {p1}, Lcom/android/incallui/VideoCallPresenter;->access$500(Lcom/android/incallui/VideoCallPresenter;)Landroid/telecom/InCallService$VideoCall;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/telecom/InCallService$VideoCall;->setPreviewSurface(Landroid/view/Surface;)V

    .line 1531
    iget-object p1, p0, Lcom/android/incallui/VideoCallPresenter$LocalDelegate;->this$0:Lcom/android/incallui/VideoCallPresenter;

    invoke-static {p1}, Lcom/android/incallui/VideoCallPresenter;->access$500(Lcom/android/incallui/VideoCallPresenter;)Landroid/telecom/InCallService$VideoCall;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/android/incallui/VideoCallPresenter;->access$800(Lcom/android/incallui/VideoCallPresenter;Landroid/telecom/InCallService$VideoCall;Z)V

    return-void
.end method
