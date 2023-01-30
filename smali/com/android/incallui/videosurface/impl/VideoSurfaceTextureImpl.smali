.class public Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;
.super Ljava/lang/Object;
.source "VideoSurfaceTextureImpl.java"

# interfaces
.implements Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl$OnClickListener;,
        Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl$SurfaceTextureListener;
    }
.end annotation


# instance fields
.field private delegate:Lcom/android/incallui/videosurface/protocol/VideoSurfaceDelegate;

.field private isDoneWithSurface:Z

.field private savedSurface:Landroid/view/Surface;

.field private savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private sourceVideoDimensions:Landroid/graphics/Point;

.field private surfaceDimensions:Landroid/graphics/Point;

.field private final surfaceType:I

.field private textureView:Landroid/view/TextureView;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->surfaceType:I

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;II)Z
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->createSurface(II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;)Landroid/view/TextureView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->textureView:Landroid/view/TextureView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->onSurfaceCreated()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;)Lcom/android/incallui/videosurface/protocol/VideoSurfaceDelegate;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->delegate:Lcom/android/incallui/videosurface/protocol/VideoSurfaceDelegate;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->isDoneWithSurface:Z

    return p0
.end method

.method static synthetic access$800(Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->onSurfaceReleased()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;)Landroid/view/Surface;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->savedSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$902(Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->savedSurface:Landroid/view/Surface;

    return-object p1
.end method

.method private createSurface(II)Z
    .locals 3

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {p0}, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "VideoSurfaceTextureImpl.createSurface"

    .line 136
    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    iget-object v0, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 140
    iget-object p1, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->savedSurface:Landroid/view/Surface;

    if-eqz p1, :cond_0

    .line 141
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 143
    :cond_0
    new-instance p1, Landroid/view/Surface;

    iget-object p2, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->savedSurface:Landroid/view/Surface;

    const/4 p1, 0x1

    return p1
.end method

.method private onSurfaceCreated()V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->delegate:Lcom/android/incallui/videosurface/protocol/VideoSurfaceDelegate;

    if-eqz v0, :cond_0

    .line 149
    invoke-interface {v0, p0}, Lcom/android/incallui/videosurface/protocol/VideoSurfaceDelegate;->onSurfaceCreated(Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;)V

    goto :goto_0

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delegate is null. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "VideoSurfaceTextureImpl.onSurfaceCreated"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private onSurfaceReleased()V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->delegate:Lcom/android/incallui/videosurface/protocol/VideoSurfaceDelegate;

    if-eqz v0, :cond_0

    .line 157
    invoke-interface {v0, p0}, Lcom/android/incallui/videosurface/protocol/VideoSurfaceDelegate;->onSurfaceReleased(Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;)V

    goto :goto_0

    .line 159
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delegate is null. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "VideoSurfaceTextureImpl.onSurfaceReleased"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public attachToTextureView(Landroid/view/TextureView;)V
    .locals 5

    .line 92
    iget-object v0, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->textureView:Landroid/view/TextureView;

    if-ne v0, p1, :cond_0

    return-void

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "VideoSurfaceTextureImpl.attachToTextureView"

    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->textureView:Landroid/view/TextureView;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 102
    :cond_1
    iput-object p1, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->textureView:Landroid/view/TextureView;

    .line 103
    new-instance v0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl$SurfaceTextureListener;

    invoke-direct {v0, p0, v2}, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl$SurfaceTextureListener;-><init>(Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl$1;)V

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 104
    new-instance v0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl$OnClickListener;

    invoke-direct {v0, p0, v2}, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl$OnClickListener;-><init>(Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl$1;)V

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "areSameSurfaces: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    iget-object v2, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    .line 109
    invoke-virtual {p1, v2}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 110
    iget-object p1, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->surfaceDimensions:Landroid/graphics/Point;

    if-eqz p1, :cond_2

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->surfaceDimensions:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->createSurface(II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 111
    invoke-direct {p0}, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->onSurfaceCreated()V

    .line 114
    :cond_2
    iput-boolean v1, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->isDoneWithSurface:Z

    return-void
.end method

.method public getSavedSurface()Landroid/view/Surface;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->savedSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getSourceVideoDimensions()Landroid/graphics/Point;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->sourceVideoDimensions:Landroid/graphics/Point;

    return-object v0
.end method

.method public getSurfaceDimensions()Landroid/graphics/Point;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->surfaceDimensions:Landroid/graphics/Point;

    return-object v0
.end method

.method public getSurfaceType()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->surfaceType:I

    return v0
.end method

.method public setDelegate(Lcom/android/incallui/videosurface/protocol/VideoSurfaceDelegate;)V
    .locals 3

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delegate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "VideoSurfaceTextureImpl.setDelegate"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iput-object p1, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->delegate:Lcom/android/incallui/videosurface/protocol/VideoSurfaceDelegate;

    return-void
.end method

.method public setDoneWithSurface()V
    .locals 3

    .line 119
    invoke-virtual {p0}, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "VideoSurfaceTextureImpl.setDoneWithSurface"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 120
    iput-boolean v0, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->isDoneWithSurface:Z

    .line 121
    iget-object v0, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->textureView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->savedSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 125
    invoke-direct {p0}, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->onSurfaceReleased()V

    .line 126
    iget-object v0, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->savedSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 127
    iput-object v1, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->savedSurface:Landroid/view/Surface;

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2

    .line 130
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 131
    iput-object v1, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_2
    return-void
.end method

.method public setSourceVideoDimensions(Landroid/graphics/Point;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->sourceVideoDimensions:Landroid/graphics/Point;

    return-void
.end method

.method public setSurfaceDimensions(Landroid/graphics/Point;)V
    .locals 3

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceDimensions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p0}, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "VideoSurfaceTextureImpl.setSurfaceDimensions"

    .line 66
    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    iput-object p1, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->surfaceDimensions:Landroid/graphics/Point;

    if-eqz p1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 71
    iget v1, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, p1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 165
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->surfaceType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "local, "

    goto :goto_0

    :cond_0
    const-string v2, "remote, "

    :goto_0
    const/4 v4, 0x0

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->savedSurface:Landroid/view/Surface;

    const-string v4, ""

    if-nez v2, :cond_1

    const-string v2, "no-surface, "

    goto :goto_1

    :cond_1
    move-object v2, v4

    :goto_1
    aput-object v2, v1, v3

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v3, :cond_2

    const-string v4, "no-texture, "

    :cond_2
    aput-object v4, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->surfaceDimensions:Landroid/graphics/Point;

    if-nez v3, :cond_3

    const-string v3, "(-1 x -1)"

    goto :goto_2

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->surfaceDimensions:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/incallui/videosurface/impl/VideoSurfaceTextureImpl;->surfaceDimensions:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    aput-object v3, v1, v2

    const-string v2, "VideoSurfaceTextureImpl<%s%s%s%s>"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
