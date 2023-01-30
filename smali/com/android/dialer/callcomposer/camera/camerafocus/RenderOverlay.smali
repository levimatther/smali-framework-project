.class public Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;
.super Landroid/widget/FrameLayout;
.source "RenderOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay$RenderView;,
        Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay$Renderer;
    }
.end annotation


# instance fields
.field private mClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay$Renderer;",
            ">;"
        }
    .end annotation
.end field

.field private mPosition:[I

.field private mRenderView:Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay$RenderView;

.field private mTouchClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay$Renderer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 50
    iput-object p2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;->mPosition:[I

    .line 54
    new-instance p2, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay$RenderView;

    invoke-direct {p2, p0, p1}, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay$RenderView;-><init>(Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;->mRenderView:Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay$RenderView;

    .line 55
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;->mClients:Ljava/util/List;

    .line 57
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;->mTouchClients:Ljava/util/List;

    const/4 p2, 0x0

    .line 58
    invoke-virtual {p0, p2}, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;->setWillNotDraw(Z)V

    .line 60
    new-instance p2, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;

    invoke-direct {p2, p1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;->addRenderer(Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay$Renderer;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;)Ljava/util/List;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;->mTouchClients:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;->adjustPosition()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;)Ljava/util/List;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;->mClients:Ljava/util/List;

    return-object p0
.end method

.method private adjustPosition()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;->mPosition:[I

    invoke-virtual {p0, v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;->getLocationInWindow([I)V

    return-void
.end method


# virtual methods
.method public addRenderer(ILcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay$Renderer;)V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;->mClients:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 83
    invoke-interface {p2, p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay$Renderer;->setOverlay(Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;->getLeft()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;->getTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;->getBottom()I

    move-result v2

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay$Renderer;->layout(IIII)V

    return-void
.end method

.method public addRenderer(Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay$Renderer;)V
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;->mClients:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-interface {p1, p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay$Renderer;->setOverlay(Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;)V

    .line 75
    invoke-interface {p1}, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay$Renderer;->handlesTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;->mTouchClients:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;->getBottom()I

    move-result v3

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay$Renderer;->layout(IIII)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getPieRenderer()Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;->mClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay$Renderer;

    .line 65
    instance-of v2, v1, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;

    if-eqz v2, :cond_0

    .line 66
    check-cast v1, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public remove(Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay$Renderer;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;->mClients:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 89
    invoke-interface {p1, v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay$Renderer;->setOverlay(Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;)V

    return-void
.end method

.method public update()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;->mRenderView:Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay$RenderView;

    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay$RenderView;->invalidate()V

    return-void
.end method
