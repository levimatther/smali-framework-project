.class Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay$RenderView;
.super Landroid/view/View;
.source "RenderOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;


# direct methods
.method public constructor <init>(Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;Landroid/content/Context;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay$RenderView;->this$0:Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;

    .line 109
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay$RenderView;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 139
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 140
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay$RenderView;->this$0:Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;

    invoke-static {v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;->access$200(Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay$RenderView;->this$0:Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;

    invoke-static {v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;->access$200(Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay$Renderer;

    .line 145
    invoke-interface {v3, p1}, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay$Renderer;->draw(Landroid/graphics/Canvas;)V

    if-nez v2, :cond_2

    .line 146
    check-cast v3, Lcom/android/dialer/callcomposer/camera/camerafocus/OverlayRenderer;

    invoke-virtual {v3}, Lcom/android/dialer/callcomposer/camera/camerafocus/OverlayRenderer;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    .line 149
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay$RenderView;->invalidate()V

    :cond_4
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay$RenderView;->this$0:Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;

    invoke-static {v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;->access$100(Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;)V

    .line 128
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 129
    iget-object p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay$RenderView;->this$0:Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;

    invoke-static {p1}, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;->access$200(Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 132
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay$RenderView;->this$0:Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;

    invoke-static {p1}, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;->access$200(Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay$Renderer;

    .line 133
    invoke-interface {v0, p2, p3, p4, p5}, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay$Renderer;->layout(IIII)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay$RenderView;->this$0:Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;

    invoke-static {v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;->access$000(Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay$RenderView;->this$0:Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;

    invoke-static {v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;->access$000(Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay$Renderer;

    .line 118
    invoke-interface {v2, p1}, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay$Renderer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method
