.class public Lcom/android/incallui/answer/impl/AnswerVideoCallScreen;
.super Ljava/lang/Object;
.source "AnswerVideoCallScreen.java"

# interfaces
.implements Lcom/android/incallui/video/protocol/VideoCallScreen;


# instance fields
.field private final callId:Ljava/lang/String;

.field private final delegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

.field private final fragment:Landroidx/fragment/app/Fragment;

.field private final textureView:Landroid/view/TextureView;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;Landroid/view/View;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/incallui/answer/impl/AnswerVideoCallScreen;->callId:Ljava/lang/String;

    .line 45
    invoke-static {p2}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    iput-object p1, p0, Lcom/android/incallui/answer/impl/AnswerVideoCallScreen;->fragment:Landroidx/fragment/app/Fragment;

    const p1, 0x7f0901ac

    .line 48
    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/TextureView;

    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/TextureView;

    iput-object p1, p0, Lcom/android/incallui/answer/impl/AnswerVideoCallScreen;->textureView:Landroid/view/TextureView;

    const p1, 0x7f0901ad

    .line 50
    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/high16 v0, -0x1000000

    .line 51
    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 52
    const-class p3, Lcom/android/incallui/video/protocol/VideoCallScreenDelegateFactory;

    .line 53
    invoke-static {p2, p3}, Lcom/android/dialer/common/FragmentUtils;->getParentUnsafe(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/incallui/video/protocol/VideoCallScreenDelegateFactory;

    .line 54
    invoke-interface {p3, p0}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegateFactory;->newVideoCallScreenDelegate(Lcom/android/incallui/video/protocol/VideoCallScreen;)Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    move-result-object p3

    iput-object p3, p0, Lcom/android/incallui/answer/impl/AnswerVideoCallScreen;->delegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    .line 55
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-interface {p3, p2, p0}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->initVideoCallScreenDelegate(Landroid/content/Context;Lcom/android/incallui/video/protocol/VideoCallScreen;)V

    .line 57
    iget-object p2, p0, Lcom/android/incallui/answer/impl/AnswerVideoCallScreen;->textureView:Landroid/view/TextureView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/TextureView;->setVisibility(I)V

    .line 58
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private isLandscape()Z
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerVideoCallScreen;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updatePreviewVideoScaling()V
    .locals 4

    .line 119
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerVideoCallScreen;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "AnswerVideoCallScreen.updatePreviewVideoScaling"

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerVideoCallScreen;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerVideoCallScreen;->delegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    invoke-interface {v0}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->getLocalVideoSurfaceTexture()Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;->getSurfaceDimensions()Landroid/graphics/Point;

    move-result-object v0

    if-nez v0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "camera dimensions not set"

    .line 126
    invoke-static {v2, v1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 129
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/AnswerVideoCallScreen;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 130
    iget-object v1, p0, Lcom/android/incallui/answer/impl/AnswerVideoCallScreen;->textureView:Landroid/view/TextureView;

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget-object v3, p0, Lcom/android/incallui/answer/impl/AnswerVideoCallScreen;->delegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    .line 131
    invoke-interface {v3}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->getDeviceOrientation()I

    move-result v3

    int-to-float v3, v3

    .line 130
    invoke-static {v1, v2, v0, v3}, Lcom/android/incallui/videosurface/bindings/VideoSurfaceBindings;->scaleVideoAndFillView(Landroid/view/TextureView;FFF)V

    goto :goto_0

    .line 135
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/answer/impl/AnswerVideoCallScreen;->textureView:Landroid/view/TextureView;

    iget v2, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v3, p0, Lcom/android/incallui/answer/impl/AnswerVideoCallScreen;->delegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    .line 136
    invoke-interface {v3}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->getDeviceOrientation()I

    move-result v3

    int-to-float v3, v3

    .line 135
    invoke-static {v1, v2, v0, v3}, Lcom/android/incallui/videosurface/bindings/VideoSurfaceBindings;->scaleVideoAndFillView(Landroid/view/TextureView;FFF)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "view layout hasn\'t finished yet"

    .line 120
    invoke-static {v2, v1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getCallId()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerVideoCallScreen;->callId:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoCallScreenFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerVideoCallScreen;->fragment:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public onLocalVideoDimensionsChanged()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AnswerVideoCallScreen.onLocalVideoDimensionsChanged"

    const/4 v2, 0x0

    .line 86
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/AnswerVideoCallScreen;->updatePreviewVideoScaling()V

    return-void
.end method

.method public onLocalVideoOrientationChanged()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AnswerVideoCallScreen.onLocalVideoOrientationChanged"

    const/4 v2, 0x0

    .line 95
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/AnswerVideoCallScreen;->updatePreviewVideoScaling()V

    return-void
.end method

.method public onRemoteVideoDimensionsChanged()V
    .locals 0

    return-void
.end method

.method public onRequestReadStoragePermission()V
    .locals 0

    return-void
.end method

.method public onVideoScreenStart()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AnswerVideoCallScreen.onStart"

    const/4 v2, 0x0

    .line 63
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerVideoCallScreen;->delegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    invoke-interface {v0, p0}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->onVideoCallScreenUiReady(Lcom/android/incallui/video/protocol/VideoCallScreen;)V

    .line 65
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerVideoCallScreen;->delegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    invoke-interface {v0}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->getLocalVideoSurfaceTexture()Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/answer/impl/AnswerVideoCallScreen;->textureView:Landroid/view/TextureView;

    invoke-interface {v0, v1}, Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;->attachToTextureView(Landroid/view/TextureView;)V

    return-void
.end method

.method public onVideoScreenStop()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AnswerVideoCallScreen.onStop"

    const/4 v2, 0x0

    .line 70
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerVideoCallScreen;->delegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    invoke-interface {v0}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->onVideoCallScreenUiUnready()V

    return-void
.end method

.method public showVideoViews(ZZZ)V
    .locals 1

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    .line 80
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p3, v0

    .line 81
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, p3, p2

    const-string p1, "AnswerVideoCallScreen.showVideoViews"

    const-string p2, "showPreview: %b, shouldShowRemote: %b"

    .line 77
    invoke-static {p1, p2, p3}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public updateFullscreenAndGreenScreenMode(ZZ)V
    .locals 0

    return-void
.end method
