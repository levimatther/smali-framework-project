.class public Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;
.super Landroid/widget/ImageView;
.source "SwipeButtonView.java"


# static fields
.field private static final CIRCLE_APPEAR_DURATION:J = 0x50L

.field private static final CIRCLE_DISAPPEAR_MAX_DURATION:J = 0xc8L

.field public static final MAX_ICON_SCALE_AMOUNT:F = 1.5f

.field public static final MIN_ICON_SCALE_AMOUNT:F = 0.8f

.field private static final NORMAL_ANIMATION_DURATION:J = 0xc8L


# instance fields
.field private alphaAnimator:Landroid/animation/ValueAnimator;

.field private alphaEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private centerX:I

.field private centerY:I

.field private circleAnimator:Landroid/animation/ValueAnimator;

.field private circleColor:I

.field private circleEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private final circlePaint:Landroid/graphics/Paint;

.field private circleRadius:F

.field private circleStartRadius:F

.field private circleStartValue:F

.field private circleWillBeHidden:Z

.field private clipEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private final colorInterpolator:Landroid/animation/ArgbEvaluator;

.field private finishing:Z

.field private final flingAnimationUtils:Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;

.field private final inverseColor:I

.field private launchingAffordance:Z

.field private maxCircleSize:F

.field private final minBackgroundRadius:I

.field private final normalColor:I

.field private previewClipper:Landroid/animation/Animator;

.field private previewView:Landroid/view/View;

.field private restingAlpha:F

.field private scaleAnimator:Landroid/animation/ValueAnimator;

.field private scaleEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private tempPoint:[I

.field private tmageScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, p1, v0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, p1, p2, v0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 117
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 64
    iput-object p2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->tempPoint:[I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 65
    iput p2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->tmageScale:F

    const p2, 0x3f5eb852    # 0.87f

    .line 71
    iput p2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->restingAlpha:F

    .line 75
    new-instance p2, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView$1;

    invoke-direct {p2, p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView$1;-><init>(Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;)V

    iput-object p2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->clipEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 82
    new-instance p2, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView$2;

    invoke-direct {p2, p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView$2;-><init>(Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;)V

    iput-object p2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->circleEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 89
    new-instance p2, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView$3;

    invoke-direct {p2, p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView$3;-><init>(Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;)V

    iput-object p2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->scaleEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 96
    new-instance p2, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView$4;

    invoke-direct {p2, p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView$4;-><init>(Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;)V

    iput-object p2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->alphaEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 118
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->circlePaint:Landroid/graphics/Paint;

    const/4 p3, 0x1

    .line 119
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 p2, -0x1

    .line 120
    iput p2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->circleColor:I

    .line 121
    iget-object p3, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    iput p2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->normalColor:I

    const/high16 p2, -0x1000000

    .line 124
    iput p2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->inverseColor:I

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07005d

    .line 128
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->minBackgroundRadius:I

    .line 129
    new-instance p2, Landroid/animation/ArgbEvaluator;

    invoke-direct {p2}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->colorInterpolator:Landroid/animation/ArgbEvaluator;

    .line 130
    new-instance p2, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;

    const p3, 0x3e99999a    # 0.3f

    invoke-direct {p2, p1, p3}, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object p2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->flingAnimationUtils:Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;

    return-void
.end method

.method static synthetic access$002(Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->previewClipper:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->circleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->scaleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->alphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->finishing:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;F)F
    .locals 0

    .line 42
    iput p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->circleRadius:F

    return p1
.end method

.method static synthetic access$600(Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;)Landroid/view/View;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->previewView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->updateIconColor()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;F)F
    .locals 0

    .line 42
    iput p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->tmageScale:F

    return p1
.end method

.method private cancelAnimator(Landroid/animation/Animator;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 352
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method private drawBackgroundCircle(Landroid/graphics/Canvas;)V
    .locals 4

    .line 167
    iget v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->circleRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->finishing:Z

    if-eqz v0, :cond_1

    .line 168
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->updateCircleColor()V

    .line 169
    iget v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->centerX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->centerY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->circleRadius:F

    iget-object v3, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private getAnimatorToRadius(F)Landroid/animation/ValueAnimator;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 333
    iget v1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->circleRadius:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 334
    iput-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->circleAnimator:Landroid/animation/ValueAnimator;

    .line 335
    iget v3, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->circleRadius:F

    iput v3, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->circleStartValue:F

    const/4 v3, 0x0

    cmpl-float p1, p1, v3

    if-nez p1, :cond_0

    move v2, v1

    .line 336
    :cond_0
    iput-boolean v2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->circleWillBeHidden:Z

    .line 337
    new-instance p1, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView$7;

    invoke-direct {p1, p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView$7;-><init>(Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 346
    iget-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->circleEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private getEndListener(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .line 478
    new-instance v0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView$10;

    invoke-direct {v0, p0, p1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView$10;-><init>(Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private getMaxCircleSize()F
    .locals 4

    .line 243
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->tempPoint:[I

    invoke-virtual {p0, v0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->getLocationInWindow([I)V

    .line 244
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 245
    iget-object v1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->tempPoint:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget v2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->centerX:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 246
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 247
    iget-object v1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->tempPoint:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    iget v2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->centerY:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    float-to-double v2, v0

    float-to-double v0, v1

    .line 248
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private setCircleRadius(FZZ)V
    .locals 6

    .line 267
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->circleAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->circleWillBeHidden:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->circleAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->circleRadius:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    cmpl-float v1, p1, v1

    if-nez v1, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    if-eq v0, v4, :cond_4

    if-nez p3, :cond_4

    move p3, v2

    goto :goto_2

    :cond_4
    move p3, v3

    :goto_2
    if-nez p3, :cond_6

    .line 273
    iget-object p2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->circleAnimator:Landroid/animation/ValueAnimator;

    if-nez p2, :cond_5

    .line 274
    iput p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->circleRadius:F

    .line 275
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->updateIconColor()V

    .line 276
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->invalidate()V

    if-eqz v4, :cond_9

    .line 278
    iget-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->previewView:Landroid/view/View;

    if-eqz p1, :cond_9

    const/4 p2, 0x4

    .line 279
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 282
    :cond_5
    iget-boolean p3, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->circleWillBeHidden:Z

    if-nez p3, :cond_9

    .line 285
    iget p3, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->minBackgroundRadius:I

    int-to-float p3, p3

    sub-float p3, p1, p3

    .line 286
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    .line 287
    aget-object p2, p2, v3

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->circleStartValue:F

    add-float/2addr v1, p3

    aput v1, v0, v3

    aput p1, v0, v2

    invoke-virtual {p2, v0}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 288
    iget-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->circleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    goto/16 :goto_4

    .line 291
    :cond_6
    iget-object p3, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->circleAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, p3}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 292
    iget-object p3, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->previewClipper:Landroid/animation/Animator;

    invoke-direct {p0, p3}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 293
    invoke-direct {p0, p1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->getAnimatorToRadius(F)Landroid/animation/ValueAnimator;

    move-result-object p3

    if-nez v1, :cond_7

    .line 294
    sget-object v0, Lcom/android/incallui/answer/impl/utils/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    goto :goto_3

    :cond_7
    sget-object v0, Lcom/android/incallui/answer/impl/utils/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 298
    :goto_3
    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xfa

    if-nez p2, :cond_8

    .line 301
    iget p2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->circleRadius:F

    sub-float/2addr p2, p1

    .line 302
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget v1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->minBackgroundRadius:I

    int-to-float v1, v1

    div-float/2addr p2, v1

    const/high16 v1, 0x42a00000    # 80.0f

    mul-float/2addr p2, v1

    float-to-long v1, p2

    const-wide/16 v4, 0xc8

    .line 304
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 306
    :cond_8
    invoke-virtual {p3, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 307
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->start()V

    .line 308
    iget-object p2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->previewView:Landroid/view/View;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_9

    .line 309
    iget-object p2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->previewView:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 310
    iget-object p2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->previewView:Landroid/view/View;

    .line 313
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->getLeft()I

    move-result p3

    iget v3, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->centerX:I

    add-int/2addr p3, v3

    .line 314
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->getTop()I

    move-result v3

    iget v4, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->centerY:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->circleRadius:F

    .line 311
    invoke-static {p2, p3, v3, v4, p1}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->previewClipper:Landroid/animation/Animator;

    .line 317
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 318
    iget-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->previewClipper:Landroid/animation/Animator;

    invoke-virtual {p1, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 319
    iget-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->previewClipper:Landroid/animation/Animator;

    iget-object p2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->clipEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 320
    iget-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->previewClipper:Landroid/animation/Animator;

    new-instance p2, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView$6;

    invoke-direct {p2, p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView$6;-><init>(Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 327
    iget-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->previewClipper:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_9
    :goto_4
    return-void
.end method

.method private updateCircleColor()V
    .locals 5

    .line 174
    iget v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->circleRadius:F

    iget v1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->minBackgroundRadius:I

    int-to-float v2, v1

    sub-float/2addr v0, v2

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 179
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v3, 0x0

    .line 177
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v2

    .line 181
    iget-object v2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->previewView:Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 182
    iget v2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->circleRadius:F

    iget v4, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->circleStartRadius:F

    sub-float/2addr v2, v4

    .line 183
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v3, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->maxCircleSize:F

    iget v4, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->circleStartRadius:F

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    .line 186
    :cond_0
    iget v1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->circleColor:I

    .line 188
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iget v1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->circleColor:I

    .line 189
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget v2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->circleColor:I

    .line 190
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    iget v3, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->circleColor:I

    .line 191
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 187
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 192
    iget-object v1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private updateIconColor()V
    .locals 5

    .line 159
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 160
    iget v1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->circleRadius:F

    iget v2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->minBackgroundRadius:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    .line 161
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 162
    iget-object v2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->colorInterpolator:Landroid/animation/ArgbEvaluator;

    iget v3, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->normalColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->inverseColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 163
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method


# virtual methods
.method public finishAnimation(FLjava/lang/Runnable;)V
    .locals 9

    .line 196
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->circleAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 197
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->previewClipper:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->cancelAnimator(Landroid/animation/Animator;)V

    const/4 v0, 0x1

    .line 198
    iput-boolean v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->finishing:Z

    .line 199
    iget v1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->circleRadius:F

    iput v1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->circleStartRadius:F

    .line 200
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->getMaxCircleSize()F

    move-result v1

    .line 202
    invoke-direct {p0, v1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->getAnimatorToRadius(F)Landroid/animation/ValueAnimator;

    move-result-object v8

    .line 203
    iget-object v2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->flingAnimationUtils:Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;

    iget v4, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->circleRadius:F

    move-object v3, v8

    move v5, v1

    move v6, p1

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;->applyDismissing(Landroid/animation/Animator;FFFF)V

    .line 205
    new-instance v2, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView$5;

    invoke-direct {v2, p0, p2, v1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView$5;-><init>(Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;Ljava/lang/Runnable;F)V

    invoke-virtual {v8, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 217
    invoke-virtual {v8}, Landroid/animation/Animator;->start()V

    const/4 p2, 0x0

    .line 218
    invoke-virtual {p0, p2, v0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->setImageAlpha(FZ)V

    .line 219
    iget-object p2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->previewView:Landroid/view/View;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 220
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 221
    iget-object p2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->previewView:Landroid/view/View;

    .line 223
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->getLeft()I

    move-result v0

    iget v2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->centerX:I

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->getTop()I

    move-result v2

    iget v3, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->centerY:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->circleRadius:F

    .line 222
    invoke-static {p2, v0, v2, v3, v1}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->previewClipper:Landroid/animation/Animator;

    .line 224
    iget-object v2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->flingAnimationUtils:Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;

    iget v4, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->circleRadius:F

    move v5, v1

    move v6, p1

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;->applyDismissing(Landroid/animation/Animator;FFFF)V

    .line 226
    iget-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->previewClipper:Landroid/animation/Animator;

    iget-object p2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->clipEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 227
    iget-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->previewClipper:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_0
    return-void
.end method

.method public getCircleRadius()F
    .locals 1

    .line 496
    iget v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->circleRadius:F

    return v0
.end method

.method public getRestingAlpha()F
    .locals 1

    .line 412
    iget v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->restingAlpha:F

    return v0
.end method

.method public instantFinishAnimation()V
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->previewClipper:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 233
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->previewView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 234
    invoke-virtual {v0, v2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 235
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->previewView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 237
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->getMaxCircleSize()F

    move-result v0

    iput v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->circleRadius:F

    const/4 v0, 0x0

    .line 238
    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->setImageAlpha(FZ)V

    .line 239
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 143
    invoke-direct {p0, p1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->drawBackgroundCircle(Landroid/graphics/Canvas;)V

    .line 144
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 145
    iget v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->tmageScale:F

    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 146
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 147
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 135
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 136
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->centerX:I

    .line 137
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->centerY:I

    .line 138
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->getMaxCircleSize()F

    move-result p1

    iput p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->maxCircleSize:F

    return-void
.end method

.method public performClick()Z
    .locals 1

    .line 501
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCircleRadius(F)V
    .locals 1

    const/4 v0, 0x0

    .line 252
    invoke-direct {p0, p1, v0, v0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->setCircleRadius(FZZ)V

    return-void
.end method

.method public setCircleRadius(FZ)V
    .locals 1

    const/4 v0, 0x0

    .line 256
    invoke-direct {p0, p1, p2, v0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->setCircleRadius(FZZ)V

    return-void
.end method

.method public setCircleRadiusWithoutAnimation(F)V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->circleAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->cancelAnimator(Landroid/animation/Animator;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 261
    invoke-direct {p0, p1, v0, v1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->setCircleRadius(FZZ)V

    return-void
.end method

.method public setImageAlpha(FZ)V
    .locals 7

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 416
    invoke-virtual/range {v0 .. v6}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    return-void
.end method

.method public setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 7

    .line 434
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->alphaAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 435
    iget-boolean v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->launchingAffordance:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p1, v1

    :cond_0
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v2, p1, v0

    float-to-int v2, v2

    .line 437
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez p2, :cond_2

    if-eqz v3, :cond_1

    .line 440
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 442
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->setImageAlpha(I)V

    goto :goto_1

    .line 444
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->getImageAlpha()I

    move-result p2

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput p2, v4, v5

    const/4 v5, 0x1

    aput v2, v4, v5

    .line 445
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 446
    iput-object v4, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->alphaAnimator:Landroid/animation/ValueAnimator;

    .line 447
    new-instance v5, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView$9;

    invoke-direct {v5, p0, v3}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView$9;-><init>(Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 458
    iget-object v3, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->alphaEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v4, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-nez p5, :cond_4

    cmpl-float p1, p1, v1

    if-nez p1, :cond_3

    .line 460
    sget-object p1, Lcom/android/incallui/answer/impl/utils/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/android/incallui/answer/impl/utils/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    :goto_0
    move-object p5, p1

    .line 463
    :cond_4
    invoke-virtual {v4, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, -0x1

    cmp-long p1, p3, v5

    if-nez p1, :cond_5

    sub-int/2addr p2, v2

    .line 465
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    const/high16 p2, 0x3f800000    # 1.0f

    .line 466
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 p2, 0x43480000    # 200.0f

    mul-float/2addr p1, p2

    float-to-long p3, p1

    .line 469
    :cond_5
    invoke-virtual {v4, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p6, :cond_6

    .line 471
    invoke-direct {p0, p6}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->getEndListener(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 473
    :cond_6
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    :goto_1
    return-void
.end method

.method public setImageScale(FZ)V
    .locals 6

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 357
    invoke-virtual/range {v0 .. v5}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->setImageScale(FZJLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setImageScale(FZJLandroid/view/animation/Interpolator;)V
    .locals 2

    .line 371
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->scaleAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->cancelAnimator(Landroid/animation/Animator;)V

    if-nez p2, :cond_0

    .line 373
    iput p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->tmageScale:F

    .line 374
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->invalidate()V

    goto :goto_1

    :cond_0
    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v0, 0x0

    .line 376
    iget v1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->tmageScale:F

    aput v1, p2, v0

    const/4 v0, 0x1

    aput p1, p2, v0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 377
    iput-object p2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->scaleAnimator:Landroid/animation/ValueAnimator;

    .line 378
    new-instance v0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView$8;

    invoke-direct {v0, p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView$8;-><init>(Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 386
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->scaleEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-nez p5, :cond_2

    const/4 p5, 0x0

    cmpl-float p5, p1, p5

    if-nez p5, :cond_1

    .line 388
    sget-object p5, Lcom/android/incallui/answer/impl/utils/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_1
    sget-object p5, Lcom/android/incallui/answer/impl/utils/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 393
    :cond_2
    :goto_0
    invoke-virtual {p2, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, -0x1

    cmp-long p5, p3, v0

    if-nez p5, :cond_3

    .line 395
    iget p3, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->tmageScale:F

    sub-float/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p3, 0x3e4ccccc    # 0.19999999f

    div-float/2addr p1, p3

    const/high16 p3, 0x3f800000    # 1.0f

    .line 396
    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 p3, 0x43480000    # 200.0f

    mul-float/2addr p1, p3

    float-to-long p3, p1

    .line 399
    :cond_3
    invoke-virtual {p2, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 400
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    :goto_1
    return-void
.end method

.method public setLaunchingAffordance(Z)V
    .locals 0

    .line 505
    iput-boolean p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->launchingAffordance:Z

    return-void
.end method

.method public setPreviewView(Landroid/view/View;)V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->previewView:Landroid/view/View;

    .line 152
    iput-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->previewView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 154
    iget-boolean v1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->launchingAffordance:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setRestingAlpha(F)V
    .locals 1

    .line 405
    iput p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->restingAlpha:F

    const/4 v0, 0x0

    .line 408
    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->setImageAlpha(FZ)V

    return-void
.end method
