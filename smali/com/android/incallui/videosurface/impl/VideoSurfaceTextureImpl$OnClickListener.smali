.class Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl$OnClickListener;
.super Ljava/lang/Object;
.source "VideoSurfaceTextureImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;


# direct methods
.method private constructor <init>(Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl$OnClickListener;->this$0:Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl$1;)V
    .locals 0

    .line 238
    invoke-direct {p0, p1}, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl$OnClickListener;-><init>(Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 241
    iget-object p1, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl$OnClickListener;->this$0:Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;

    invoke-static {p1}, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->access$600(Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;)Lcom/android/incallui/videosurface/protocol/VideoSurfaceDelegate;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 242
    iget-object p1, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl$OnClickListener;->this$0:Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;

    invoke-static {p1}, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->access$600(Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;)Lcom/android/incallui/videosurface/protocol/VideoSurfaceDelegate;

    move-result-object p1

    iget-object v0, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl$OnClickListener;->this$0:Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;

    invoke-interface {p1, v0}, Lcom/android/incallui/videosurface/protocol/VideoSurfaceDelegate;->onSurfaceClick(Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "OnClickListener.onClick"

    const-string v1, "delegate is null"

    .line 244
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
