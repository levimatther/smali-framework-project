.class public Lcom/android/incallui/videosurface/bindings/VideoSurfaceBindings;
.super Ljava/lang/Object;
.source "VideoSurfaceBindings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLocalVideoSurfaceTexture()Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;
    .locals 2

    .line 28
    new-instance v0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;-><init>(I)V

    return-object v0
.end method

.method public static createRemoteVideoSurfaceTexture()Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;
    .locals 2

    .line 32
    new-instance v0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;-><init>(I)V

    return-object v0
.end method

.method public static scaleVideoAndFillView(Landroid/view/TextureView;FFF)V
    .locals 0

    .line 37
    invoke-static {p0, p1, p2, p3}, Lcom/android/incallui/videosurface/impl/VideoScale;->scaleVideoAndFillView(Landroid/view/TextureView;FFF)V

    return-void
.end method

.method public static scaleVideoMaintainingAspectRatio(Landroid/view/TextureView;II)V
    .locals 0

    .line 42
    invoke-static {p0, p1, p2}, Lcom/android/incallui/videosurface/impl/VideoScale;->scaleVideoMaintainingAspectRatio(Landroid/view/TextureView;II)V

    return-void
.end method
