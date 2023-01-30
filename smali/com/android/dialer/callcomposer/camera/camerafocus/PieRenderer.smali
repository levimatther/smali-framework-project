.class public Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;
.super Lcom/android/dialer/callcomposer/camera/camerafocus/OverlayRenderer;
.source "PieRenderer.java"

# interfaces
.implements Lcom/android/dialer/callcomposer/camera/camerafocus/FocusIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$LinearAnimation;,
        Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$ScaleAnimation;,
        Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$Disappear;,
        Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$EndAction;,
        Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$PieListener;
    }
.end annotation


# static fields
.field private static final DIAL_HORIZONTAL:I = 0x9d

.field private static final DISAPPEAR_TIMEOUT:I = 0xc8

.field private static final MSG_CLOSE:I = 0x1

.field private static final MSG_OPEN:I = 0x0

.field private static final PIE_FADE_IN_DURATION:J = 0xc8L

.field private static final PIE_SELECT_FADE_DURATION:J = 0x12cL

.field private static final PIE_SWEEP:F = 2.0943952f

.field private static final PIE_XFADE_DURATION:J = 0xc8L

.field private static final SCALING_DOWN_TIME:I = 0x64

.field private static final SCALING_UP_TIME:I = 0x258

.field private static final STATE_FINISHING:I = 0x2

.field private static final STATE_FOCUSING:I = 0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PIE:I = 0x8


# instance fields
.field private mAnimation:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$ScaleAnimation;

.field private mBlockFocus:Z

.field private mCenter:Landroid/graphics/Point;

.field private mCenterX:I

.field private mCenterY:I

.field private mCircle:Landroid/graphics/RectF;

.field private mCircleSize:I

.field private mCurrentItem:Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;

.field private mDial:Landroid/graphics/RectF;

.field private mDialAngle:I

.field private mDisappear:Ljava/lang/Runnable;

.field private mDown:Landroid/graphics/Point;

.field private mEndAction:Landroid/view/animation/Animation$AnimationListener;

.field private mFadeIn:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$LinearAnimation;

.field private mFailColor:I

.field private volatile mFocusCancelled:Z

.field private mFocusPaint:Landroid/graphics/Paint;

.field private mFocusX:I

.field private mFocusY:I

.field private mFocused:Z

.field private mHandler:Landroid/os/Handler;

.field private mInnerOffset:I

.field private mInnerStroke:I

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$PieListener;

.field private mOpenItem:Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;

.field private mOpening:Z

.field private mOuterStroke:I

.field private mPoint1:Landroid/graphics/Point;

.field private mPoint2:Landroid/graphics/Point;

.field private mRadius:I

.field private mRadiusInc:I

.field private mSelectedPaint:Landroid/graphics/Paint;

.field private mStartAnimationAngle:I

.field private volatile mState:I

.field private mSubPaint:Landroid/graphics/Paint;

.field private mSuccessColor:I

.field private mTapMode:Z

.field private mTouchOffset:I

.field private mTouchSlopSquared:I

.field private mXFade:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$LinearAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 150
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/OverlayRenderer;-><init>()V

    .line 50
    new-instance v0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$ScaleAnimation;

    invoke-direct {v0, p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$ScaleAnimation;-><init>(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;)V

    iput-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mAnimation:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$ScaleAnimation;

    .line 56
    new-instance v0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$Disappear;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$Disappear;-><init>(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$1;)V

    iput-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mDisappear:Ljava/lang/Runnable;

    .line 57
    new-instance v0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$EndAction;

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$EndAction;-><init>(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$1;)V

    iput-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mEndAction:Landroid/view/animation/Animation$AnimationListener;

    .line 118
    new-instance v0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$1;-><init>(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;)V

    iput-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mHandler:Landroid/os/Handler;

    .line 151
    invoke-direct {p0, p1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mState:I

    return p0
.end method

.method static synthetic access$1002(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFocusX:I

    return p0
.end method

.method static synthetic access$1102(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFocusX:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mCenterX:I

    return p0
.end method

.method static synthetic access$1300(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFocusY:I

    return p0
.end method

.method static synthetic access$1302(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFocusY:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mCenterY:I

    return p0
.end method

.method static synthetic access$1500(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;II)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->setCircle(II)V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFocused:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mDialAngle:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;)Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$PieListener;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mListener:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$PieListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;)Landroid/graphics/Point;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mCenter:Landroid/graphics/Point;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$LinearAnimation;)Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$LinearAnimation;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFadeIn:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$LinearAnimation;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->deselect()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;Z)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->show(Z)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$LinearAnimation;)Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$LinearAnimation;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mXFade:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$LinearAnimation;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFocusCancelled:Z

    return p0
.end method

.method static synthetic access$900(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;)Ljava/lang/Runnable;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mDisappear:Ljava/lang/Runnable;

    return-object p0
.end method

.method private cancelFocus()V
    .locals 2

    const/4 v0, 0x1

    .line 715
    iput-boolean v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFocusCancelled:Z

    .line 716
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mOverlay:Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;

    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mDisappear:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 717
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mAnimation:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$ScaleAnimation;

    if-eqz v0, :cond_0

    .line 718
    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$ScaleAnimation;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 720
    iput-boolean v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFocusCancelled:Z

    .line 721
    iput-boolean v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFocused:Z

    .line 722
    iput v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mState:I

    return-void
.end method

.method private static convertCart(IILandroid/graphics/Point;)V
    .locals 6

    .line 679
    rem-int/lit16 p0, p0, 0x168

    int-to-double v0, p0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v0, v2

    const-wide v2, 0x4076800000000000L    # 360.0

    div-double/2addr v0, v2

    int-to-double p0, p1

    .line 680
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, p0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p2, Landroid/graphics/Point;->x:I

    .line 681
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr p0, v0

    add-double/2addr p0, v4

    double-to-int p0, p0

    iput p0, p2, Landroid/graphics/Point;->y:I

    return-void
.end method

.method private deselect()V
    .locals 2

    .line 509
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mCurrentItem:Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 510
    invoke-virtual {v0, v1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->setSelected(Z)V

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mOpenItem:Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 513
    iput-object v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mOpenItem:Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;

    .line 515
    :cond_1
    iput-object v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mCurrentItem:Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;

    return-void
.end method

.method private drawItem(Landroid/graphics/Canvas;Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;F)V
    .locals 5

    .line 394
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 395
    invoke-virtual {p2}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->getPath()Landroid/graphics/Path;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 396
    invoke-virtual {p2}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mSelectedPaint:Landroid/graphics/Paint;

    .line 398
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 399
    invoke-virtual {p2}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->getStartAngle()F

    move-result v2

    float-to-double v2, v2

    invoke-direct {p0, v2, v3}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->getDegrees(D)F

    move-result v2

    .line 400
    iget-object v3, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mCenter:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mCenter:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 401
    invoke-virtual {p2}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->getPath()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 402
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 404
    :cond_0
    invoke-virtual {p2}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const v0, 0x3e99999a    # 0.3f

    :goto_0
    mul-float/2addr p3, v0

    .line 406
    invoke-virtual {p2, p3}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->setAlpha(F)V

    .line 407
    invoke-virtual {p2, p1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method private drawLine(Landroid/graphics/Canvas;ILandroid/graphics/Paint;)V
    .locals 6

    .line 672
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mCircleSize:I

    iget v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mInnerOffset:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mPoint1:Landroid/graphics/Point;

    invoke-static {p2, v0, v1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->convertCart(IILandroid/graphics/Point;)V

    .line 673
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mCircleSize:I

    iget v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mInnerOffset:I

    sub-int/2addr v0, v1

    div-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mPoint2:Landroid/graphics/Point;

    invoke-static {p2, v0, v1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->convertCart(IILandroid/graphics/Point;)V

    .line 674
    iget-object p2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mPoint1:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    iget v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFocusX:I

    add-int/2addr p2, v0

    int-to-float v1, p2

    iget-object p2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mPoint1:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    iget v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFocusY:I

    add-int/2addr p2, v0

    int-to-float v2, p2

    iget-object p2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mPoint2:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    iget v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFocusX:I

    add-int/2addr p2, v0

    int-to-float v3, p2

    iget-object p2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mPoint2:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    iget v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFocusY:I

    add-int/2addr p2, v0

    int-to-float v4, p2

    move-object v0, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private fadeIn()V
    .locals 3

    .line 253
    new-instance v0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$LinearAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$LinearAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFadeIn:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$LinearAnimation;

    const-wide/16 v1, 0xc8

    .line 254
    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$LinearAnimation;->setDuration(J)V

    .line 255
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFadeIn:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$LinearAnimation;

    new-instance v1, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$2;

    invoke-direct {v1, p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$2;-><init>(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;)V

    invoke-virtual {v0, v1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$LinearAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 268
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFadeIn:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$LinearAnimation;

    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$LinearAnimation;->startNow()V

    .line 269
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mOverlay:Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;

    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFadeIn:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$LinearAnimation;

    invoke-virtual {v0, v1}, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private findItem(Landroid/graphics/PointF;)Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;
    .locals 3

    .line 566
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mOpenItem:Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->getItems()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mItems:Ljava/util/List;

    .line 567
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;

    .line 568
    invoke-direct {p0, p1, v1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->inside(Landroid/graphics/PointF;Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getDegrees(D)F
    .locals 2

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double/2addr p1, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p1, v0

    const-wide v0, 0x4076800000000000L    # 360.0

    sub-double/2addr v0, p1

    double-to-float p1, v0

    return p1
.end method

.method private getPolar(FFZ)Landroid/graphics/PointF;
    .locals 5

    .line 544
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    const v1, 0x3fc90fdb

    .line 546
    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 547
    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mCenter:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    .line 548
    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mCenter:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    sub-float/2addr v1, p2

    mul-float p2, p1, p1

    mul-float v2, v1, v1

    add-float/2addr p2, v2

    float-to-double v2, p2

    .line 549
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float p2, v2

    iput p2, v0, Landroid/graphics/PointF;->y:F

    const/4 p2, 0x0

    cmpl-float v2, p1, p2

    if-eqz v2, :cond_0

    float-to-double v1, v1

    float-to-double v3, p1

    .line 551
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    double-to-float p1, v1

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 552
    iget p1, v0, Landroid/graphics/PointF;->x:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const-wide p1, 0x401921fb54442d18L    # 6.283185307179586

    .line 553
    iget v1, v0, Landroid/graphics/PointF;->x:F

    float-to-double v1, v1

    add-double/2addr v1, p1

    double-to-float p1, v1

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 556
    :cond_0
    iget p1, v0, Landroid/graphics/PointF;->y:F

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mTouchOffset:I

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    int-to-float p2, p2

    add-float/2addr p1, p2

    iput p1, v0, Landroid/graphics/PointF;->y:F

    return-object v0
.end method

.method private getRandomRange()I
    .locals 4

    .line 618
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x405e000000000000L    # 120.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, -0x3fb2000000000000L    # -60.0

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private hasMoved(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 484
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mTouchSlopSquared:I

    int-to-float v0, v0

    .line 485
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mDown:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mDown:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mDown:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v3, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mDown:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    sub-float/2addr p1, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    cmpg-float p1, v0, v1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 8

    const/4 v0, 0x0

    .line 155
    invoke-virtual {p0, v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->setVisible(Z)V

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mItems:Ljava/util/List;

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070210

    .line 158
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mRadius:I

    const v3, 0x7f070169

    .line 159
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mCircleSize:I

    const v2, 0x7f07020f

    .line 160
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mRadiusInc:I

    const v2, 0x7f070211

    .line 161
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mTouchOffset:I

    .line 162
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mCenter:Landroid/graphics/Point;

    .line 163
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mSelectedPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/16 v4, 0x33

    const/16 v5, 0xb5

    const/16 v6, 0xe5

    .line 164
    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    iget-object v2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mSelectedPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 166
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mSubPaint:Landroid/graphics/Paint;

    .line 167
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 168
    iget-object v2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mSubPaint:Landroid/graphics/Paint;

    const/16 v4, 0xc8

    const/16 v5, 0xfa

    const/16 v6, 0xe6

    const/16 v7, 0x80

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    .line 170
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 171
    iget-object v2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    iget-object v2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v2, -0xff0100

    .line 173
    iput v2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mSuccessColor:I

    const/high16 v2, -0x10000

    .line 174
    iput v2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFailColor:I

    .line 175
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mCircle:Landroid/graphics/RectF;

    .line 176
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mDial:Landroid/graphics/RectF;

    .line 177
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mPoint1:Landroid/graphics/Point;

    .line 178
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mPoint2:Landroid/graphics/Point;

    const v2, 0x7f070166

    .line 179
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mInnerOffset:I

    const v2, 0x7f070168

    .line 180
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mOuterStroke:I

    const v2, 0x7f070167

    .line 181
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mInnerStroke:I

    .line 182
    iput v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mState:I

    .line 183
    iput-boolean v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mBlockFocus:Z

    .line 184
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mTouchSlopSquared:I

    mul-int/2addr p1, p1

    .line 185
    iput p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mTouchSlopSquared:I

    .line 186
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mDown:Landroid/graphics/Point;

    return-void
.end method

.method private inside(Landroid/graphics/PointF;Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;)Z
    .locals 2

    .line 576
    invoke-virtual {p2}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->getInnerRadius()I

    move-result v0

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/PointF;->y:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 577
    invoke-virtual {p2}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->getStartAngle()F

    move-result v0

    iget v1, p1, Landroid/graphics/PointF;->x:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 578
    invoke-virtual {p2}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->getStartAngle()F

    move-result v0

    invoke-virtual {p2}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->getSweep()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mTapMode:Z

    if-eqz v0, :cond_0

    .line 579
    invoke-virtual {p2}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->getOuterRadius()I

    move-result p2

    int-to-float p2, p2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    cmpl-float p1, p2, p1

    if-lez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private layoutItems(Ljava/util/List;FIII)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;",
            ">;FIII)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p3

    move/from16 v8, p4

    .line 289
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3fea9280

    div-float/2addr v1, v0

    const v0, 0x3f860a92

    sub-float v0, p2, v0

    const v2, 0x3e060a92

    add-float/2addr v0, v2

    const/high16 v9, 0x40000000    # 2.0f

    div-float v2, v1, v9

    add-float v10, v0, v2

    .line 294
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v11, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;

    .line 295
    invoke-virtual {v2}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->getCenter()F

    move-result v3

    cmpl-float v3, v3, v11

    if-ltz v3, :cond_0

    .line 296
    invoke-virtual {v2}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->getSweep()F

    move-result v1

    :cond_1
    move v12, v1

    const-wide/16 v0, 0x0

    .line 300
    invoke-direct {v6, v0, v1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->getDegrees(D)F

    move-result v0

    move/from16 v13, p5

    int-to-float v1, v13

    sub-float v2, v0, v1

    float-to-double v3, v12

    invoke-direct {v6, v3, v4}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->getDegrees(D)F

    move-result v0

    add-float v3, v0, v1

    iget-object v5, v6, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mCenter:Landroid/graphics/Point;

    move-object/from16 v0, p0

    move v1, v2

    move v2, v3

    move/from16 v3, p4

    move/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->makeSlice(FFIILandroid/graphics/Point;)Landroid/graphics/Path;

    move-result-object v14

    .line 301
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;

    .line 303
    invoke-virtual {v0, v14}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->setPath(Landroid/graphics/Path;)V

    .line 304
    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->getCenter()F

    move-result v1

    cmpl-float v1, v1, v11

    if-ltz v1, :cond_2

    .line 305
    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->getCenter()F

    move-result v10

    .line 307
    :cond_2
    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->getIntrinsicWidth()I

    move-result v1

    .line 308
    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->getIntrinsicHeight()I

    move-result v2

    sub-int v3, v8, v7

    mul-int/lit8 v3, v3, 0x2

    .line 310
    div-int/lit8 v3, v3, 0x3

    add-int/2addr v3, v7

    int-to-double v3, v3

    move/from16 v16, v12

    float-to-double v11, v10

    .line 311
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    move/from16 p1, v10

    mul-double v9, v3, v17

    double-to-int v5, v9

    .line 312
    iget-object v9, v6, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mCenter:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v3, v10

    double-to-int v3, v3

    sub-int/2addr v9, v3

    div-int/lit8 v3, v2, 0x2

    sub-int/2addr v9, v3

    .line 313
    iget-object v3, v6, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mCenter:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v3, v5

    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    add-int/2addr v1, v3

    add-int/2addr v2, v9

    .line 314
    invoke-virtual {v0, v3, v9, v1, v2}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->setBounds(IIII)V

    const/high16 v9, 0x40000000    # 2.0f

    div-float v12, v16, v9

    sub-float v10, p1, v12

    move/from16 v11, v16

    .line 316
    invoke-virtual {v0, v10, v11, v7, v8}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->setGeometry(FFII)V

    .line 317
    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->hasItems()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 318
    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->getItems()Ljava/util/List;

    move-result-object v1

    iget v0, v6, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mRadiusInc:I

    div-int/lit8 v0, v0, 0x2

    add-int v4, v8, v0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v3, p3

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->layoutItems(Ljava/util/List;FIII)V

    :cond_3
    add-float v10, p1, v11

    move v12, v11

    const/4 v11, 0x0

    goto :goto_0

    :cond_4
    return-void
.end method

.method private layoutPie()V
    .locals 7

    .line 281
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mRadius:I

    add-int/lit8 v4, v0, 0x2

    .line 282
    iget v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mRadiusInc:I

    add-int/2addr v0, v1

    add-int/lit8 v5, v0, -0x2

    .line 284
    iget-object v2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mItems:Ljava/util/List;

    const v3, 0x3fc90fdb

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->layoutItems(Ljava/util/List;FIII)V

    return-void
.end method

.method private makeSlice(FFIILandroid/graphics/Point;)Landroid/graphics/Path;
    .locals 5

    .line 325
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p5, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, p3

    int-to-float v1, v1

    iget v2, p5, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, p3

    int-to-float v2, v2

    iget v3, p5, Landroid/graphics/Point;->x:I

    add-int/2addr v3, p3

    int-to-float v3, v3

    iget v4, p5, Landroid/graphics/Point;->y:I

    add-int/2addr v4, p3

    int-to-float p3, v4

    invoke-direct {v0, v1, v2, v3, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 326
    new-instance p3, Landroid/graphics/RectF;

    iget v1, p5, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, p4

    int-to-float v1, v1

    iget v2, p5, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, p4

    int-to-float v2, v2

    iget v3, p5, Landroid/graphics/Point;->x:I

    add-int/2addr v3, p4

    int-to-float v3, v3

    iget p5, p5, Landroid/graphics/Point;->y:I

    add-int/2addr p5, p4

    int-to-float p4, p5

    invoke-direct {p3, v1, v2, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 327
    new-instance p4, Landroid/graphics/Path;

    invoke-direct {p4}, Landroid/graphics/Path;-><init>()V

    sub-float p5, p2, p1

    const/4 v1, 0x1

    .line 328
    invoke-virtual {p4, v0, p1, p5, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    sub-float/2addr p1, p2

    .line 329
    invoke-virtual {p4, p3, p2, p1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 330
    invoke-virtual {p4}, Landroid/graphics/Path;->close()V

    return-object p4
.end method

.method private onEnter(Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;)V
    .locals 2

    .line 494
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mCurrentItem:Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 495
    invoke-virtual {v0, v1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->setSelected(Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 497
    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 498
    invoke-virtual {p1, v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->setSelected(Z)V

    .line 499
    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mCurrentItem:Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;

    .line 500
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mOpenItem:Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;

    if-eq p1, v0, :cond_2

    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->hasItems()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 501
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->openCurrentItem()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 504
    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mCurrentItem:Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;

    :cond_2
    :goto_0
    return-void
.end method

.method private openCurrentItem()V
    .locals 3

    .line 519
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mCurrentItem:Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->hasItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mCurrentItem:Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->setSelected(Z)V

    .line 521
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mCurrentItem:Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;

    iput-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mOpenItem:Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;

    const/4 v0, 0x1

    .line 522
    iput-boolean v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mOpening:Z

    .line 523
    new-instance v0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$LinearAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$LinearAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mXFade:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$LinearAnimation;

    const-wide/16 v1, 0xc8

    .line 524
    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$LinearAnimation;->setDuration(J)V

    .line 525
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mXFade:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$LinearAnimation;

    new-instance v1, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$4;

    invoke-direct {v1, p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$4;-><init>(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;)V

    invoke-virtual {v0, v1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$LinearAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 538
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mXFade:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$LinearAnimation;

    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$LinearAnimation;->startNow()V

    .line 539
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mOverlay:Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;

    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mXFade:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$LinearAnimation;

    invoke-virtual {v0, v1}, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method private setCircle(II)V
    .locals 5

    .line 636
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mCircle:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mCircleSize:I

    sub-int v2, p1, v1

    int-to-float v2, v2

    sub-int v3, p2, v1

    int-to-float v3, v3

    add-int v4, p1, v1

    int-to-float v4, v4

    add-int/2addr v1, p2

    int-to-float v1, v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 637
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mDial:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mCircleSize:I

    sub-int v2, p1, v1

    iget v3, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mInnerOffset:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sub-int v4, p2, v1

    add-int/2addr v4, v3

    int-to-float v4, v4

    add-int/2addr p1, v1

    sub-int/2addr p1, v3

    int-to-float p1, p1

    add-int/2addr p2, v1

    sub-int/2addr p2, v3

    int-to-float p2, p2

    invoke-virtual {v0, v2, v4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private show(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/16 v1, 0x8

    .line 232
    iput v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mState:I

    const/4 v1, 0x0

    .line 234
    iput-object v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mCurrentItem:Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;

    .line 235
    iput-object v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mOpenItem:Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;

    .line 236
    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;

    .line 237
    invoke-virtual {v2, v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->setSelected(Z)V

    goto :goto_0

    .line 239
    :cond_0
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->layoutPie()V

    .line 240
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->fadeIn()V

    goto :goto_1

    .line 242
    :cond_1
    iput v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mState:I

    .line 243
    iput-boolean v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mTapMode:Z

    .line 244
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mXFade:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$LinearAnimation;

    if-eqz v0, :cond_2

    .line 245
    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$LinearAnimation;->cancel()V

    .line 248
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->setVisible(Z)V

    .line 249
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mHandler:Landroid/os/Handler;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private startAnimation(JZF)V
    .locals 7

    .line 735
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mDialAngle:I

    int-to-float v5, v0

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->startAnimation(JZFF)V

    return-void
.end method

.method private startAnimation(JZFF)V
    .locals 1

    const/4 v0, 0x1

    .line 739
    invoke-virtual {p0, v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->setVisible(Z)V

    .line 740
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mAnimation:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$ScaleAnimation;

    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$ScaleAnimation;->reset()V

    .line 741
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mAnimation:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$ScaleAnimation;

    invoke-virtual {v0, p1, p2}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$ScaleAnimation;->setDuration(J)V

    .line 742
    iget-object p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mAnimation:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$ScaleAnimation;

    invoke-virtual {p1, p4, p5}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$ScaleAnimation;->setScale(FF)V

    .line 743
    iget-object p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mAnimation:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$ScaleAnimation;

    if-eqz p3, :cond_0

    iget-object p2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mEndAction:Landroid/view/animation/Animation$AnimationListener;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 744
    iget-object p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mOverlay:Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;

    iget-object p2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mAnimation:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$ScaleAnimation;

    invoke-virtual {p1, p2}, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;->startAnimation(Landroid/view/animation/Animation;)V

    .line 745
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->update()V

    return-void
.end method

.method private startFadeOut()V
    .locals 3

    .line 345
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mOverlay:Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;

    .line 346
    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 347
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$3;

    invoke-direct {v1, p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$3;-><init>(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;)V

    .line 348
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 358
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method


# virtual methods
.method public addItem(Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;)V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public alignFocus(II)V
    .locals 2

    .line 603
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mOverlay:Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;

    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mDisappear:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 604
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mAnimation:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$ScaleAnimation;

    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$ScaleAnimation;->cancel()V

    .line 605
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mAnimation:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$ScaleAnimation;

    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$ScaleAnimation;->reset()V

    .line 606
    iput p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFocusX:I

    .line 607
    iput p2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFocusY:I

    const/16 v0, 0x9d

    .line 608
    iput v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mDialAngle:I

    .line 609
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->setCircle(II)V

    const/4 p1, 0x0

    .line 610
    iput-boolean p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFocused:Z

    return-void
.end method

.method public clear()V
    .locals 2

    .line 727
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return-void

    .line 730
    :cond_0
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->cancelFocus()V

    .line 731
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mOverlay:Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;

    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mDisappear:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public clearItems()V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public drawFocus(Landroid/graphics/Canvas;)V
    .locals 7

    .line 645
    iget-boolean v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mBlockFocus:Z

    if-eqz v0, :cond_0

    return-void

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mOuterStroke:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 649
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFocusX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFocusY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mCircleSize:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 650
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    return-void

    .line 653
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    .line 654
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 655
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFocused:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mSuccessColor:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFailColor:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 657
    :cond_3
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mInnerStroke:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 658
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mDialAngle:I

    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->drawLine(Landroid/graphics/Canvas;ILandroid/graphics/Paint;)V

    .line 659
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mDialAngle:I

    add-int/lit8 v0, v0, 0x2d

    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->drawLine(Landroid/graphics/Canvas;ILandroid/graphics/Paint;)V

    .line 660
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mDialAngle:I

    add-int/lit16 v0, v0, 0xb4

    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->drawLine(Landroid/graphics/Canvas;ILandroid/graphics/Paint;)V

    .line 661
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mDialAngle:I

    add-int/lit16 v0, v0, 0xe1

    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->drawLine(Landroid/graphics/Canvas;ILandroid/graphics/Paint;)V

    .line 662
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 664
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mDialAngle:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFocusX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFocusY:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 665
    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mDial:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/high16 v3, 0x42340000    # 45.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 666
    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mDial:Landroid/graphics/RectF;

    const/high16 v2, 0x43340000    # 180.0f

    iget-object v5, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 667
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 668
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public getSize()I
    .locals 1

    .line 614
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mCircleSize:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public handlesTouch()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x0

    .line 222
    invoke-direct {p0, v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->show(Z)V

    return-void
.end method

.method public layout(IIII)V
    .locals 0

    .line 623
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/dialer/callcomposer/camera/camerafocus/OverlayRenderer;->layout(IIII)V

    sub-int/2addr p3, p1

    .line 624
    div-int/lit8 p3, p3, 0x2

    iput p3, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mCenterX:I

    sub-int/2addr p4, p2

    .line 625
    div-int/lit8 p4, p4, 0x2

    iput p4, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mCenterY:I

    .line 626
    iput p3, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFocusX:I

    .line 627
    iput p4, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFocusY:I

    .line 628
    invoke-direct {p0, p3, p4}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->setCircle(II)V

    .line 629
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mState:I

    const/16 p2, 0x8

    if-ne p1, p2, :cond_0

    .line 630
    iget p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mCenterX:I

    iget p2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mCenterY:I

    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->setCenter(II)V

    .line 631
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->layoutPie()V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 364
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mXFade:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$LinearAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$LinearAnimation;->getValue()F

    move-result v0

    goto :goto_0

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFadeIn:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$LinearAnimation;

    if-eqz v0, :cond_1

    .line 367
    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$LinearAnimation;->getValue()F

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 369
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 370
    iget-object v3, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFadeIn:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$LinearAnimation;

    if-eqz v3, :cond_2

    const v3, 0x3f666666    # 0.9f

    const v4, 0x3dcccccd    # 0.1f

    mul-float/2addr v4, v0

    add-float/2addr v4, v3

    .line 372
    iget-object v3, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mCenter:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget-object v5, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mCenter:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v4, v3, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 374
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->drawFocus(Landroid/graphics/Canvas;)V

    .line 375
    iget v3, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 376
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    .line 379
    :cond_3
    iget-object v3, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mOpenItem:Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mXFade:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$LinearAnimation;

    if-eqz v3, :cond_5

    .line 381
    :cond_4
    iget-object v3, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;

    .line 382
    invoke-direct {p0, p1, v4, v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->drawItem(Landroid/graphics/Canvas;Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;F)V

    goto :goto_1

    .line 385
    :cond_5
    iget-object v3, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mOpenItem:Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;

    if-eqz v3, :cond_7

    .line 386
    invoke-virtual {v3}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;

    .line 387
    iget-object v5, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mXFade:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$LinearAnimation;

    if-eqz v5, :cond_6

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v5, v0

    sub-float v5, v1, v5

    goto :goto_3

    :cond_6
    move v5, v1

    :goto_3
    invoke-direct {p0, p1, v4, v5}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->drawItem(Landroid/graphics/Canvas;Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;F)V

    goto :goto_2

    .line 390
    :cond_7
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 414
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 415
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 416
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 417
    iget-boolean v3, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mTapMode:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v3}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->getPolar(FFZ)Landroid/graphics/PointF;

    move-result-object v3

    const/4 v5, 0x0

    if-nez v2, :cond_2

    .line 419
    iget-object v2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mDown:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    iput v6, v2, Landroid/graphics/Point;->x:I

    .line 420
    iget-object v2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mDown:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, v2, Landroid/graphics/Point;->y:I

    .line 421
    iput-boolean v5, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mOpening:Z

    .line 422
    iget-boolean p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mTapMode:Z

    if-eqz p1, :cond_0

    .line 423
    invoke-direct {p0, v3}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->findItem(Landroid/graphics/PointF;)Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 424
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mCurrentItem:Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;

    if-eq v0, p1, :cond_1

    const/16 v0, 0x8

    .line 425
    iput v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mState:I

    .line 426
    invoke-direct {p0, p1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->onEnter(Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;)V

    goto :goto_0

    :cond_0
    float-to-int p1, v0

    float-to-int v0, v1

    .line 429
    invoke-virtual {p0, p1, v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->setCenter(II)V

    .line 430
    invoke-direct {p0, v4}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->show(Z)V

    :cond_1
    :goto_0
    return v4

    :cond_2
    if-ne v4, v2, :cond_6

    .line 434
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 435
    iget-object p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mCurrentItem:Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;

    .line 436
    iget-boolean v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mTapMode:Z

    if-eqz v0, :cond_3

    .line 437
    invoke-direct {p0, v3}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->findItem(Landroid/graphics/PointF;)Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 438
    iget-boolean v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mOpening:Z

    if-eqz v0, :cond_3

    .line 439
    iput-boolean v5, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mOpening:Z

    return v4

    :cond_3
    if-nez p1, :cond_4

    .line 444
    iput-boolean v5, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mTapMode:Z

    .line 445
    invoke-direct {p0, v5}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->show(Z)V

    goto :goto_1

    .line 446
    :cond_4
    iget-boolean v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mOpening:Z

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->hasItems()Z

    move-result v0

    if-nez v0, :cond_5

    .line 447
    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->performClick()V

    .line 448
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->startFadeOut()V

    .line 449
    iput-boolean v5, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mTapMode:Z

    :cond_5
    :goto_1
    return v4

    :cond_6
    const/4 v0, 0x3

    if-ne v0, v2, :cond_9

    .line 454
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->isVisible()Z

    move-result p1

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mTapMode:Z

    if-eqz p1, :cond_8

    .line 455
    :cond_7
    invoke-direct {p0, v5}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->show(Z)V

    .line 457
    :cond_8
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->deselect()V

    return v5

    :cond_9
    const/4 v0, 0x2

    if-ne v0, v2, :cond_e

    .line 460
    iget v0, v3, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mRadius:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_b

    .line 461
    iget-object p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mOpenItem:Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    .line 462
    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mOpenItem:Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;

    goto :goto_2

    .line 464
    :cond_a
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->deselect()V

    :goto_2
    return v5

    .line 468
    :cond_b
    invoke-direct {p0, v3}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->findItem(Landroid/graphics/PointF;)Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;

    move-result-object v0

    .line 469
    invoke-direct {p0, p1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->hasMoved(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz v0, :cond_e

    .line 470
    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mCurrentItem:Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;

    if-eq v1, v0, :cond_e

    iget-boolean v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mOpening:Z

    if-eqz v1, :cond_c

    if-eqz p1, :cond_e

    .line 472
    :cond_c
    iput-boolean v5, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mOpening:Z

    if-eqz p1, :cond_d

    .line 475
    iput-boolean v5, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mTapMode:Z

    .line 477
    :cond_d
    invoke-direct {p0, v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->onEnter(Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;)V

    :cond_e
    return v5
.end method

.method public removeItem(Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;)V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setBlockFocus(Z)V
    .locals 0

    .line 590
    iput-boolean p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mBlockFocus:Z

    if-eqz p1, :cond_0

    .line 592
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->clear()V

    :cond_0
    return-void
.end method

.method public setCenter(II)V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mCenter:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 274
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mCenter:Landroid/graphics/Point;

    iput p2, v0, Landroid/graphics/Point;->y:I

    .line 276
    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->alignFocus(II)V

    return-void
.end method

.method public setFocus(II)V
    .locals 0

    .line 597
    iput p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFocusX:I

    .line 598
    iput p2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFocusY:I

    .line 599
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->setCircle(II)V

    return-void
.end method

.method public setPieListener(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$PieListener;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mListener:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$PieListener;

    return-void
.end method

.method public showFail(Z)V
    .locals 3

    .line 707
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x64

    .line 708
    iget v2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mStartAnimationAngle:I

    int-to-float v2, v2

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->startAnimation(JZF)V

    const/4 p1, 0x2

    .line 709
    iput p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mState:I

    const/4 p1, 0x0

    .line 710
    iput-boolean p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFocused:Z

    :cond_0
    return-void
.end method

.method public showInCenter()V
    .locals 2

    .line 207
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 208
    iput-boolean v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mTapMode:Z

    .line 209
    invoke-direct {p0, v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->show(Z)V

    goto :goto_0

    .line 211
    :cond_0
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mState:I

    if-eqz v0, :cond_1

    .line 212
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->cancelFocus()V

    .line 214
    :cond_1
    iput v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mState:I

    .line 215
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mCenterX:I

    iget v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mCenterY:I

    invoke-virtual {p0, v0, v1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->setCenter(II)V

    const/4 v0, 0x1

    .line 216
    iput-boolean v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mTapMode:Z

    .line 217
    invoke-direct {p0, v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->show(Z)V

    :goto_0
    return-void
.end method

.method public showStart()V
    .locals 7

    .line 686
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return-void

    .line 689
    :cond_0
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->cancelFocus()V

    const/16 v0, 0x43

    .line 690
    iput v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mStartAnimationAngle:I

    .line 691
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->getRandomRange()I

    move-result v0

    const-wide/16 v2, 0x258

    const/4 v4, 0x0

    .line 692
    iget v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mStartAnimationAngle:I

    int-to-float v5, v1

    add-int/2addr v1, v0

    int-to-float v6, v1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->startAnimation(JZFF)V

    const/4 v0, 0x1

    .line 693
    iput v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mState:I

    return-void
.end method

.method public showSuccess(Z)V
    .locals 4

    .line 698
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-wide/16 v2, 0x64

    .line 699
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mStartAnimationAngle:I

    int-to-float v0, v0

    invoke-direct {p0, v2, v3, p1, v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->startAnimation(JZF)V

    const/4 p1, 0x2

    .line 700
    iput p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mState:I

    .line 701
    iput-boolean v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mFocused:Z

    :cond_0
    return-void
.end method

.method public showsItems()Z
    .locals 1

    .line 190
    iget-boolean v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mTapMode:Z

    return v0
.end method
