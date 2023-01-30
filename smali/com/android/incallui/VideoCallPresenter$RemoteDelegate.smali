.class Lcom/android/incallui/VideoCallPresenter$RemoteDelegate;
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
    name = "RemoteDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/VideoCallPresenter;


# direct methods
.method private constructor <init>(Lcom/android/incallui/VideoCallPresenter;)V
    .locals 0

    .line 1570
    iput-object p1, p0, Lcom/android/incallui/VideoCallPresenter$RemoteDelegate;->this$0:Lcom/android/incallui/VideoCallPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/VideoCallPresenter;Lcom/android/incallui/VideoCallPresenter$1;)V
    .locals 0

    .line 1570
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter$RemoteDelegate;-><init>(Lcom/android/incallui/VideoCallPresenter;)V

    return-void
.end method


# virtual methods
.method public onSurfaceClick(Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;)V
    .locals 0

    .line 1598
    iget-object p1, p0, Lcom/android/incallui/VideoCallPresenter$RemoteDelegate;->this$0:Lcom/android/incallui/VideoCallPresenter;

    invoke-static {p1}, Lcom/android/incallui/VideoCallPresenter;->access$900(Lcom/android/incallui/VideoCallPresenter;)V

    return-void
.end method

.method public onSurfaceCreated(Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;)V
    .locals 3

    .line 1573
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter$RemoteDelegate;->this$0:Lcom/android/incallui/VideoCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/VideoCallPresenter;->access$400(Lcom/android/incallui/VideoCallPresenter;)Lcom/android/incallui/video/protocol/VideoCallScreen;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "VideoCallPresenter.RemoteDelegate.onSurfaceCreated"

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "no UI"

    .line 1574
    invoke-static {v2, v0, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1577
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter$RemoteDelegate;->this$0:Lcom/android/incallui/VideoCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/VideoCallPresenter;->access$500(Lcom/android/incallui/VideoCallPresenter;)Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    if-nez v0, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "no video call"

    .line 1578
    invoke-static {v2, v0, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1581
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter$RemoteDelegate;->this$0:Lcom/android/incallui/VideoCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/VideoCallPresenter;->access$500(Lcom/android/incallui/VideoCallPresenter;)Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;->getSavedSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/telecom/InCallService$VideoCall;->setDisplaySurface(Landroid/view/Surface;)V

    return-void
.end method

.method public onSurfaceDestroyed(Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onSurfaceReleased(Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;)V
    .locals 2

    .line 1586
    iget-object p1, p0, Lcom/android/incallui/VideoCallPresenter$RemoteDelegate;->this$0:Lcom/android/incallui/VideoCallPresenter;

    invoke-static {p1}, Lcom/android/incallui/VideoCallPresenter;->access$500(Lcom/android/incallui/VideoCallPresenter;)Landroid/telecom/InCallService$VideoCall;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "VideoCallPresenter.RemoteDelegate.onSurfaceReleased"

    const-string v1, "no video call"

    .line 1587
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1590
    :cond_0
    iget-object p1, p0, Lcom/android/incallui/VideoCallPresenter$RemoteDelegate;->this$0:Lcom/android/incallui/VideoCallPresenter;

    invoke-static {p1}, Lcom/android/incallui/VideoCallPresenter;->access$500(Lcom/android/incallui/VideoCallPresenter;)Landroid/telecom/InCallService$VideoCall;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/telecom/InCallService$VideoCall;->setDisplaySurface(Landroid/view/Surface;)V

    return-void
.end method
