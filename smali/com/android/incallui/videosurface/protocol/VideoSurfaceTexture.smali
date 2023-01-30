.class public interface abstract Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;
.super Ljava/lang/Object;
.source "VideoSurfaceTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture$SurfaceType;
    }
.end annotation


# static fields
.field public static final SURFACE_TYPE_LOCAL:I = 0x1

.field public static final SURFACE_TYPE_REMOTE:I = 0x2


# virtual methods
.method public abstract attachToTextureView(Landroid/view/TextureView;)V
.end method

.method public abstract getSavedSurface()Landroid/view/Surface;
.end method

.method public abstract getSourceVideoDimensions()Landroid/graphics/Point;
.end method

.method public abstract getSurfaceDimensions()Landroid/graphics/Point;
.end method

.method public abstract getSurfaceType()I
.end method

.method public abstract setDelegate(Lcom/android/incallui/videosurface/protocol/VideoSurfaceDelegate;)V
.end method

.method public abstract setDoneWithSurface()V
.end method

.method public abstract setSourceVideoDimensions(Landroid/graphics/Point;)V
.end method

.method public abstract setSurfaceDimensions(Landroid/graphics/Point;)V
.end method
