.class Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl$SurfaceTextureListener;
.super Ljava/lang/Object;
.source "VideoSurfaceTextureImpl.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceTextureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;


# direct methods
.method private constructor <init>(Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl$SurfaceTextureListener;->this$0:Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl$1;)V
    .locals 0

    .line 176
    invoke-direct {p0, p1}, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl$SurfaceTextureListener;-><init>(Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;)V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 4

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newSurfaceTexture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl$SurfaceTextureListener;->this$0:Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;

    .line 184
    invoke-virtual {v1}, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "SurfaceTextureListener.onSurfaceTextureAvailable"

    .line 179
    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    iget-object v0, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl$SurfaceTextureListener;->this$0:Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;

    invoke-static {v0}, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->access$200(Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl$SurfaceTextureListener;->this$0:Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;

    invoke-static {v0, p1}, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->access$202(Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 192
    iget-object p1, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl$SurfaceTextureListener;->this$0:Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;

    invoke-static {p1, p2, p3}, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->access$300(Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;II)Z

    move-result p1

    goto :goto_0

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "replacing with cached surface..."

    .line 195
    invoke-static {v3, p2, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    iget-object p1, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl$SurfaceTextureListener;->this$0:Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;

    invoke-static {p1}, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->access$400(Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;)Landroid/view/TextureView;

    move-result-object p1

    iget-object p2, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl$SurfaceTextureListener;->this$0:Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;

    invoke-static {p2}, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->access$200(Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;)Landroid/graphics/SurfaceTexture;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    const/4 p1, 0x1

    :goto_0
    if-eqz p1, :cond_1

    .line 203
    iget-object p1, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl$SurfaceTextureListener;->this$0:Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;

    invoke-static {p1}, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->access$500(Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;)V

    :cond_1
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroyedSurfaceTexture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl$SurfaceTextureListener;->this$0:Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;

    .line 214
    invoke-virtual {p1}, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "SurfaceTextureListener.onSurfaceTextureDestroyed"

    .line 209
    invoke-static {v2, p1, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    iget-object p1, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl$SurfaceTextureListener;->this$0:Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;

    invoke-static {p1}, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->access$600(Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;)Lcom/android/incallui/videosurface/protocol/VideoSurfaceDelegate;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 216
    iget-object p1, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl$SurfaceTextureListener;->this$0:Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;

    invoke-static {p1}, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->access$600(Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;)Lcom/android/incallui/videosurface/protocol/VideoSurfaceDelegate;

    move-result-object p1

    iget-object v0, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl$SurfaceTextureListener;->this$0:Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;

    invoke-interface {p1, v0}, Lcom/android/incallui/videosurface/protocol/VideoSurfaceDelegate;->onSurfaceDestroyed(Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;)V

    goto :goto_0

    :cond_0
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "delegate is null"

    .line 218
    invoke-static {v2, v0, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    :goto_0
    iget-object p1, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl$SurfaceTextureListener;->this$0:Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;

    invoke-static {p1}, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->access$700(Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 222
    iget-object p1, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl$SurfaceTextureListener;->this$0:Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;

    invoke-static {p1}, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->access$800(Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;)V

    .line 223
    iget-object p1, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl$SurfaceTextureListener;->this$0:Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;

    invoke-static {p1}, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->access$900(Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;)Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 224
    iget-object p1, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl$SurfaceTextureListener;->this$0:Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;

    invoke-static {p1}, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->access$900(Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;)Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 225
    iget-object p1, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl$SurfaceTextureListener;->this$0:Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->access$902(Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;Landroid/view/Surface;)Landroid/view/Surface;

    .line 228
    :cond_1
    iget-object p1, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl$SurfaceTextureListener;->this$0:Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;

    invoke-static {p1}, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->access$700(Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;)Z

    move-result p1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
