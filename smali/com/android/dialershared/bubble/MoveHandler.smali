.class Lcom/android/dialershared/bubble/MoveHandler;
.super Ljava/lang/Object;
.source "MoveHandler.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final MIN_FLING_VELOCITY_FACTOR:I = 0x8

.field private static final SCROLL_FRICTION_MULTIPLIER:F = 4.0f


# instance fields
.field private final bubble:Lcom/android/dialershared/bubble/Bubble;

.field private final bubbleSize:I

.field private final context:Landroid/content/Context;

.field private firstX:F

.field private firstY:F

.field private isMoving:Z

.field private final maxX:I

.field private final maxY:I

.field private final minX:I

.field private final minY:I

.field private moveXAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private moveYAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private scroller:Landroid/widget/Scroller;

.field private final shadowPaddingSize:I

.field private final touchSlopSquared:F

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private final windowManager:Landroid/view/WindowManager;

.field private final xProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Landroid/view/WindowManager$LayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field private final yProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Landroid/view/WindowManager$LayoutParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/dialershared/bubble/Bubble;)V
    .locals 4

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/android/dialershared/bubble/MoveHandler$1;

    const-string/jumbo v1, "xProperty"

    invoke-direct {v0, p0, v1}, Lcom/android/dialershared/bubble/MoveHandler$1;-><init>(Lcom/android/dialershared/bubble/MoveHandler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/dialershared/bubble/MoveHandler;->xProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 105
    new-instance v0, Lcom/android/dialershared/bubble/MoveHandler$2;

    const-string/jumbo v1, "yProperty"

    invoke-direct {v0, p0, v1}, Lcom/android/dialershared/bubble/MoveHandler$2;-><init>(Lcom/android/dialershared/bubble/MoveHandler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/dialershared/bubble/MoveHandler;->yProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 122
    iput-object p2, p0, Lcom/android/dialershared/bubble/MoveHandler;->bubble:Lcom/android/dialershared/bubble/Bubble;

    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/dialershared/bubble/MoveHandler;->context:Landroid/content/Context;

    .line 124
    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/android/dialershared/bubble/MoveHandler;->windowManager:Landroid/view/WindowManager;

    .line 126
    iget-object p2, p0, Lcom/android/dialershared/bubble/MoveHandler;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070080

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/dialershared/bubble/MoveHandler;->bubbleSize:I

    .line 127
    iget-object p2, p0, Lcom/android/dialershared/bubble/MoveHandler;->context:Landroid/content/Context;

    .line 128
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07007f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/android/dialershared/bubble/MoveHandler;->shadowPaddingSize:I

    .line 129
    iget-object p2, p0, Lcom/android/dialershared/bubble/MoveHandler;->context:Landroid/content/Context;

    .line 130
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07007d

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iget v0, p0, Lcom/android/dialershared/bubble/MoveHandler;->bubbleSize:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    iput p2, p0, Lcom/android/dialershared/bubble/MoveHandler;->minX:I

    .line 132
    iget-object p2, p0, Lcom/android/dialershared/bubble/MoveHandler;->context:Landroid/content/Context;

    .line 133
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07007e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iget v0, p0, Lcom/android/dialershared/bubble/MoveHandler;->bubbleSize:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    iput p2, p0, Lcom/android/dialershared/bubble/MoveHandler;->minY:I

    .line 135
    iget-object p2, p0, Lcom/android/dialershared/bubble/MoveHandler;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, p0, Lcom/android/dialershared/bubble/MoveHandler;->minX:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/android/dialershared/bubble/MoveHandler;->maxX:I

    .line 136
    iget-object p2, p0, Lcom/android/dialershared/bubble/MoveHandler;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, p0, Lcom/android/dialershared/bubble/MoveHandler;->minY:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/android/dialershared/bubble/MoveHandler;->maxY:I

    .line 140
    iget-object p2, p0, Lcom/android/dialershared/bubble/MoveHandler;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    int-to-double v0, p2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p2, v0

    iput p2, p0, Lcom/android/dialershared/bubble/MoveHandler;->touchSlopSquared:F

    .line 142
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialershared/bubble/MoveHandler;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/android/dialershared/bubble/MoveHandler;->bubbleSize:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/dialershared/bubble/MoveHandler;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/android/dialershared/bubble/MoveHandler;->shadowPaddingSize:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/dialershared/bubble/MoveHandler;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/android/dialershared/bubble/MoveHandler;->relativeToRight(Landroid/view/WindowManager$LayoutParams;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/dialershared/bubble/MoveHandler;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/dialershared/bubble/MoveHandler;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/dialershared/bubble/MoveHandler;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/android/dialershared/bubble/MoveHandler;->minX:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/dialershared/bubble/MoveHandler;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/android/dialershared/bubble/MoveHandler;->maxX:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/dialershared/bubble/MoveHandler;)Lcom/android/dialershared/bubble/Bubble;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/dialershared/bubble/MoveHandler;->bubble:Lcom/android/dialershared/bubble/Bubble;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/dialershared/bubble/MoveHandler;)Landroid/view/WindowManager;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/dialershared/bubble/MoveHandler;->windowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/dialershared/bubble/MoveHandler;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/android/dialershared/bubble/MoveHandler;->minY:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/dialershared/bubble/MoveHandler;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/android/dialershared/bubble/MoveHandler;->maxY:I

    return p0
.end method

.method private ensureSprings()V
    .locals 4

    .line 220
    iget-object v0, p0, Lcom/android/dialershared/bubble/MoveHandler;->moveXAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v2, p0, Lcom/android/dialershared/bubble/MoveHandler;->bubble:Lcom/android/dialershared/bubble/Bubble;

    invoke-virtual {v2}, Lcom/android/dialershared/bubble/Bubble;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dialershared/bubble/MoveHandler;->xProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v0, v2, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v0, p0, Lcom/android/dialershared/bubble/MoveHandler;->moveXAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 222
    new-instance v2, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 223
    iget-object v0, p0, Lcom/android/dialershared/bubble/MoveHandler;->moveXAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/dialershared/bubble/MoveHandler;->moveYAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_1

    .line 227
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v2, p0, Lcom/android/dialershared/bubble/MoveHandler;->bubble:Lcom/android/dialershared/bubble/Bubble;

    invoke-virtual {v2}, Lcom/android/dialershared/bubble/Bubble;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dialershared/bubble/MoveHandler;->yProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v0, v2, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v0, p0, Lcom/android/dialershared/bubble/MoveHandler;->moveYAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 228
    new-instance v2, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 229
    iget-object v0, p0, Lcom/android/dialershared/bubble/MoveHandler;->moveYAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    :cond_1
    return-void
.end method

.method private findTarget(FFII)Landroid/graphics/Point;
    .locals 11

    .line 234
    iget-object v0, p0, Lcom/android/dialershared/bubble/MoveHandler;->scroller:Landroid/widget/Scroller;

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/android/dialershared/bubble/MoveHandler;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/dialershared/bubble/MoveHandler;->scroller:Landroid/widget/Scroller;

    .line 236
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->setFriction(F)V

    .line 240
    :cond_0
    iget-object v2, p0, Lcom/android/dialershared/bubble/MoveHandler;->scroller:Landroid/widget/Scroller;

    float-to-int v5, p1

    float-to-int v6, p2

    iget v7, p0, Lcom/android/dialershared/bubble/MoveHandler;->minX:I

    iget v8, p0, Lcom/android/dialershared/bubble/MoveHandler;->maxX:I

    iget v9, p0, Lcom/android/dialershared/bubble/MoveHandler;->minY:I

    iget v10, p0, Lcom/android/dialershared/bubble/MoveHandler;->maxY:I

    move v3, p3

    move v4, p4

    invoke-virtual/range {v2 .. v10}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 241
    iget-object p2, p0, Lcom/android/dialershared/bubble/MoveHandler;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->getFinalY()I

    move-result p2

    .line 242
    iget-object p4, p0, Lcom/android/dialershared/bubble/MoveHandler;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p4}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 p4, 0x0

    .line 246
    invoke-direct {p0, p1, p4}, Lcom/android/dialershared/bubble/MoveHandler;->isFling(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    cmpl-float p1, p1, p4

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    int-to-float p1, p3

    invoke-direct {p0, p1}, Lcom/android/dialershared/bubble/MoveHandler;->isOnRightHalf(F)Z

    move-result p1

    .line 247
    :goto_0
    new-instance p3, Landroid/graphics/Point;

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/android/dialershared/bubble/MoveHandler;->maxX:I

    goto :goto_1

    :cond_3
    iget p1, p0, Lcom/android/dialershared/bubble/MoveHandler;->minX:I

    :goto_1
    invoke-direct {p3, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object p3
.end method

.method private getMagnitudeSquared(FF)F
    .locals 0

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    return p1
.end method

.method private hasExceededTouchSlop(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 271
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/android/dialershared/bubble/MoveHandler;->firstX:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v1, p0, Lcom/android/dialershared/bubble/MoveHandler;->firstY:F

    sub-float/2addr p1, v1

    invoke-direct {p0, v0, p1}, Lcom/android/dialershared/bubble/MoveHandler;->getMagnitudeSquared(FF)F

    move-result p1

    iget v0, p0, Lcom/android/dialershared/bubble/MoveHandler;->touchSlopSquared:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isFling(FF)Z
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/android/dialershared/bubble/MoveHandler;->context:Landroid/content/Context;

    .line 252
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    .line 253
    invoke-direct {p0, p1, p2}, Lcom/android/dialershared/bubble/MoveHandler;->getMagnitudeSquared(FF)F

    move-result p1

    mul-int/2addr v0, v0

    int-to-float p2, v0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isOnRightHalf(F)Z
    .locals 2

    .line 257
    iget v0, p0, Lcom/android/dialershared/bubble/MoveHandler;->minX:I

    iget v1, p0, Lcom/android/dialershared/bubble/MoveHandler;->maxX:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private relativeToRight(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 1

    .line 267
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v0, 0x5

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private snapX()V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/android/dialershared/bubble/MoveHandler;->xProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget-object v1, p0, Lcom/android/dialershared/bubble/MoveHandler;->bubble:Lcom/android/dialershared/bubble/Bubble;

    invoke-virtual {v1}, Lcom/android/dialershared/bubble/Bubble;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->getValue(Ljava/lang/Object;)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/dialershared/bubble/MoveHandler;->isOnRightHalf(F)Z

    move-result v0

    .line 263
    iget-object v1, p0, Lcom/android/dialershared/bubble/MoveHandler;->moveXAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/dialershared/bubble/MoveHandler;->maxX:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/dialershared/bubble/MoveHandler;->minX:I

    :goto_0
    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method


# virtual methods
.method public isMoving()Z
    .locals 1

    .line 146
    iget-boolean v0, p0, Lcom/android/dialershared/bubble/MoveHandler;->isMoving:Z

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 163
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 164
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 165
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    if-eq v2, v3, :cond_4

    const/4 p1, 0x2

    if-eq v2, p1, :cond_0

    goto/16 :goto_1

    .line 172
    :cond_0
    iget-boolean p1, p0, Lcom/android/dialershared/bubble/MoveHandler;->isMoving:Z

    if-nez p1, :cond_1

    invoke-direct {p0, p2}, Lcom/android/dialershared/bubble/MoveHandler;->hasExceededTouchSlop(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 173
    :cond_1
    iget-boolean p1, p0, Lcom/android/dialershared/bubble/MoveHandler;->isMoving:Z

    if-nez p1, :cond_2

    .line 174
    iput-boolean v3, p0, Lcom/android/dialershared/bubble/MoveHandler;->isMoving:Z

    .line 175
    iget-object p1, p0, Lcom/android/dialershared/bubble/MoveHandler;->bubble:Lcom/android/dialershared/bubble/Bubble;

    invoke-virtual {p1}, Lcom/android/dialershared/bubble/Bubble;->onMoveStart()V

    .line 178
    :cond_2
    invoke-direct {p0}, Lcom/android/dialershared/bubble/MoveHandler;->ensureSprings()V

    .line 180
    iget-object p1, p0, Lcom/android/dialershared/bubble/MoveHandler;->moveXAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v2, p0, Lcom/android/dialershared/bubble/MoveHandler;->minX:I

    int-to-float v2, v2

    iget v4, p0, Lcom/android/dialershared/bubble/MoveHandler;->maxX:I

    int-to-float v4, v4

    invoke-static {v0, v2, v4}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 181
    iget-object p1, p0, Lcom/android/dialershared/bubble/MoveHandler;->moveYAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v0, p0, Lcom/android/dialershared/bubble/MoveHandler;->minY:I

    int-to-float v0, v0

    iget v2, p0, Lcom/android/dialershared/bubble/MoveHandler;->maxY:I

    int-to-float v2, v2

    invoke-static {v1, v0, v2}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 184
    :cond_3
    iget-object p1, p0, Lcom/android/dialershared/bubble/MoveHandler;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 187
    :cond_4
    iget-boolean p2, p0, Lcom/android/dialershared/bubble/MoveHandler;->isMoving:Z

    if-eqz p2, :cond_6

    .line 188
    iget-object p1, p0, Lcom/android/dialershared/bubble/MoveHandler;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 189
    iget-object p2, p0, Lcom/android/dialershared/bubble/MoveHandler;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    .line 190
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    int-to-float p1, p1

    .line 189
    invoke-virtual {p2, v0, p1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 191
    iget-object p1, p0, Lcom/android/dialershared/bubble/MoveHandler;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    .line 192
    iget-object p2, p0, Lcom/android/dialershared/bubble/MoveHandler;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p2

    .line 193
    invoke-direct {p0, p1, p2}, Lcom/android/dialershared/bubble/MoveHandler;->isFling(FF)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 196
    iget-object v0, p0, Lcom/android/dialershared/bubble/MoveHandler;->xProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget-object v1, p0, Lcom/android/dialershared/bubble/MoveHandler;->bubble:Lcom/android/dialershared/bubble/Bubble;

    .line 200
    invoke-virtual {v1}, Lcom/android/dialershared/bubble/Bubble;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->getValue(Ljava/lang/Object;)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/dialershared/bubble/MoveHandler;->yProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget-object v2, p0, Lcom/android/dialershared/bubble/MoveHandler;->bubble:Lcom/android/dialershared/bubble/Bubble;

    .line 201
    invoke-virtual {v2}, Lcom/android/dialershared/bubble/Bubble;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->getValue(Ljava/lang/Object;)F

    move-result v1

    float-to-int v1, v1

    .line 197
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/dialershared/bubble/MoveHandler;->findTarget(FFII)Landroid/graphics/Point;

    move-result-object p1

    .line 203
    iget-object p2, p0, Lcom/android/dialershared/bubble/MoveHandler;->moveXAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 204
    iget-object p2, p0, Lcom/android/dialershared/bubble/MoveHandler;->moveYAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    goto :goto_0

    .line 206
    :cond_5
    invoke-direct {p0}, Lcom/android/dialershared/bubble/MoveHandler;->snapX()V

    :goto_0
    const/4 p1, 0x0

    .line 208
    iput-boolean p1, p0, Lcom/android/dialershared/bubble/MoveHandler;->isMoving:Z

    .line 209
    iget-object p1, p0, Lcom/android/dialershared/bubble/MoveHandler;->bubble:Lcom/android/dialershared/bubble/Bubble;

    invoke-virtual {p1}, Lcom/android/dialershared/bubble/Bubble;->onMoveFinish()V

    goto :goto_1

    .line 211
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 212
    iget-object p1, p0, Lcom/android/dialershared/bubble/MoveHandler;->bubble:Lcom/android/dialershared/bubble/Bubble;

    invoke-virtual {p1}, Lcom/android/dialershared/bubble/Bubble;->primaryButtonClick()V

    goto :goto_1

    .line 167
    :cond_7
    iput v0, p0, Lcom/android/dialershared/bubble/MoveHandler;->firstX:F

    .line 168
    iput v1, p0, Lcom/android/dialershared/bubble/MoveHandler;->firstY:F

    .line 169
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialershared/bubble/MoveHandler;->velocityTracker:Landroid/view/VelocityTracker;

    :goto_1
    return v3
.end method

.method public snapToBounds()V
    .locals 3

    .line 155
    invoke-direct {p0}, Lcom/android/dialershared/bubble/MoveHandler;->ensureSprings()V

    .line 157
    iget-object v0, p0, Lcom/android/dialershared/bubble/MoveHandler;->moveXAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/android/dialershared/bubble/MoveHandler;->bubble:Lcom/android/dialershared/bubble/Bubble;

    invoke-virtual {v1}, Lcom/android/dialershared/bubble/Bubble;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/dialershared/bubble/MoveHandler;->relativeToRight(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/dialershared/bubble/MoveHandler;->maxX:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/dialershared/bubble/MoveHandler;->minX:I

    :goto_0
    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 158
    iget-object v0, p0, Lcom/android/dialershared/bubble/MoveHandler;->moveYAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/android/dialershared/bubble/MoveHandler;->yProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget-object v2, p0, Lcom/android/dialershared/bubble/MoveHandler;->bubble:Lcom/android/dialershared/bubble/Bubble;

    invoke-virtual {v2}, Lcom/android/dialershared/bubble/Bubble;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->getValue(Ljava/lang/Object;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method public undoGravityOverride()V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/android/dialershared/bubble/MoveHandler;->bubble:Lcom/android/dialershared/bubble/Bubble;

    invoke-virtual {v0}, Lcom/android/dialershared/bubble/Bubble;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/android/dialershared/bubble/MoveHandler;->xProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->getValue(Ljava/lang/Object;)F

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->setValue(Ljava/lang/Object;F)V

    return-void
.end method
