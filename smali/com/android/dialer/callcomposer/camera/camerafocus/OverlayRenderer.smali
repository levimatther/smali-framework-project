.class public abstract Lcom/android/dialer/callcomposer/camera/camerafocus/OverlayRenderer;
.super Ljava/lang/Object;
.source "OverlayRenderer.java"

# interfaces
.implements Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay$Renderer;


# instance fields
.field private mBottom:I

.field private mLeft:I

.field protected mOverlay:Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;

.field private mRight:I

.field private mTop:I

.field private mVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/OverlayRenderer;->mVisible:Z

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/dialer/callcomposer/camera/camerafocus/OverlayRenderer;->onDraw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/OverlayRenderer;->mOverlay:Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .line 89
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/OverlayRenderer;->mBottom:I

    iget v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/OverlayRenderer;->mTop:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getWidth()I
    .locals 2

    .line 85
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/OverlayRenderer;->mRight:I

    iget v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/OverlayRenderer;->mLeft:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public handlesTouch()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/OverlayRenderer;->mVisible:Z

    return v0
.end method

.method public layout(IIII)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/OverlayRenderer;->mLeft:I

    .line 71
    iput p3, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/OverlayRenderer;->mRight:I

    .line 72
    iput p2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/OverlayRenderer;->mTop:I

    .line 73
    iput p4, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/OverlayRenderer;->mBottom:I

    return-void
.end method

.method public abstract onDraw(Landroid/graphics/Canvas;)V
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setOverlay(Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/OverlayRenderer;->mOverlay:Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/OverlayRenderer;->mVisible:Z

    .line 36
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/OverlayRenderer;->update()V

    return-void
.end method

.method protected update()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/OverlayRenderer;->mOverlay:Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;->update()V

    :cond_0
    return-void
.end method
