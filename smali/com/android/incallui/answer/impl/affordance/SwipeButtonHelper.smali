.class public Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;
.super Ljava/lang/Object;
.source "SwipeButtonHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;,
        Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$AnimationEndRunnable;
    }
.end annotation


# static fields
.field private static final BACKGROUND_RADIUS_SCALE_FACTOR:F = 0.25f

.field private static final HINT_CIRCLE_OPEN_DURATION:I = 0x1f4

.field public static final HINT_PHASE1_DURATION:J = 0xc8L

.field private static final HINT_PHASE2_DURATION:J = 0x15eL

.field public static final SWIPE_RESTING_ALPHA_AMOUNT:F = 0.87f


# instance fields
.field private final callback:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;

.field private final context:Landroid/content/Context;

.field private flingAnimationUtils:Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;

.field private flingEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private hintGrowAmount:I

.field private initialTouchX:F

.field private initialTouchY:F

.field private leftIcon:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

.field private minBackgroundRadius:I

.field private minFlingVelocity:I

.field private minTranslationAmount:I

.field private motionCancelled:Z

.field private rightIcon:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

.field private swipeAnimator:Landroid/animation/Animator;

.field private swipingInProgress:Z

.field private targetedView:Landroid/view/View;

.field private touchSlop:I

.field private touchSlopExeeded:Z

.field private touchTargetSize:I

.field private translation:F

.field private translationOnDown:F

.field private velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;Landroid/content/Context;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$1;-><init>(Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;)V

    iput-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->flingEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 88
    iput-object p2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->context:Landroid/content/Context;

    .line 89
    iput-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->callback:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;

    .line 90
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->init()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->swipeAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->swipingInProgress:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->targetedView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;)Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->callback:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;ZLjava/lang/Runnable;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->startUnlockHintAnimationPhase2(ZLjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;F)F
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->getTranslationFromRadius(F)F

    move-result p0

    return p0
.end method

.method static synthetic access$602(Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;F)F
    .locals 0

    .line 34
    iput p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->translation:F

    return p1
.end method

.method static synthetic access$700(Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->updateIconsFromTranslation(Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;)V

    return-void
.end method

.method private cancelAnimation()V
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->swipeAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method private endMotion(ZFF)V
    .locals 2

    .line 242
    iget-boolean v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->swipingInProgress:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 243
    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->flingWithCurrentVelocity(ZFF)V

    goto :goto_0

    .line 245
    :cond_0
    iput-object v1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->targetedView:Landroid/view/View;

    .line 247
    :goto_0
    iget-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    .line 248
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 249
    iput-object v1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    return-void
.end method

.method private fling(FZZ)V
    .locals 5

    if-eqz p3, :cond_0

    .line 382
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->callback:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;

    .line 383
    invoke-interface {v0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;->getMaxTranslationDistance()F

    move-result v0

    neg-float v0, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->callback:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;

    invoke-interface {v0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;->getMaxTranslationDistance()F

    move-result v0

    :goto_0
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    .line 386
    iget v3, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->translation:F

    aput v3, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 387
    iget-object v3, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->flingAnimationUtils:Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;

    iget v4, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->translation:F

    invoke-virtual {v3, v1, v4, v0, p1}, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    .line 388
    new-instance v0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$5;

    invoke-direct {v0, p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$5;-><init>(Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 395
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->flingEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-nez p2, :cond_2

    const/high16 v0, 0x3ec00000    # 0.375f

    mul-float/2addr v0, p1

    .line 397
    new-instance v2, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$AnimationEndRunnable;

    invoke-direct {v2, p0, p3}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$AnimationEndRunnable;-><init>(Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;Z)V

    invoke-direct {p0, v0, v2, p3}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->startFinishingCircleAnimation(FLjava/lang/Runnable;Z)V

    .line 398
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->callback:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;

    iget v2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->translation:F

    invoke-interface {v0, p3, v2, p1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;->onAnimationToSideStarted(ZFF)V

    goto :goto_1

    .line 400
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->reset(Z)V

    .line 402
    :goto_1
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 403
    iput-object v1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->swipeAnimator:Landroid/animation/Animator;

    if-eqz p2, :cond_3

    .line 405
    iget-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->callback:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;

    invoke-interface {p1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;->onSwipingAborted()V

    :cond_3
    return-void
.end method

.method private flingWithCurrentVelocity(ZFF)V
    .locals 6

    .line 360
    invoke-direct {p0, p2, p3}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->getCurrentVelocity(FF)F

    move-result p2

    .line 363
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->isBelowFalsingThreshold()Z

    move-result p3

    .line 366
    iget v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->translation:F

    mul-float/2addr v0, p2

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 367
    :goto_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->minFlingVelocity:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    if-eqz v0, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    or-int/2addr p3, v4

    xor-int/2addr v0, p3

    if-eqz v0, :cond_2

    move p2, v1

    :cond_2
    if-nez p3, :cond_4

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move p1, v3

    goto :goto_3

    :cond_4
    :goto_2
    move p1, v2

    .line 369
    :goto_3
    iget p3, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->translation:F

    cmpg-float p3, p3, v1

    if-gez p3, :cond_5

    goto :goto_4

    :cond_5
    move v2, v3

    :goto_4
    invoke-direct {p0, p2, p1, v2}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->fling(FZZ)V

    return-void
.end method

.method private getAnimatorToRadius(ZI)Landroid/animation/ValueAnimator;
    .locals 4

    if-eqz p1, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->rightIcon:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->leftIcon:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    :goto_0
    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    .line 338
    invoke-virtual {v0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->getCircleRadius()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    int-to-float p2, p2

    aput p2, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 339
    new-instance v1, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$4;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$4;-><init>(Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;Z)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p2
.end method

.method private getCurrentVelocity(FF)F
    .locals 6

    .line 552
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 v1, 0x3e8

    .line 555
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 556
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 557
    iget-object v1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    .line 558
    iget v2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->initialTouchX:F

    sub-float/2addr p1, v2

    .line 559
    iget v2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->initialTouchY:F

    sub-float/2addr p2, v2

    float-to-double v2, p1

    float-to-double v4, p2

    .line 560
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v0, p1

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    div-float/2addr v0, v2

    .line 563
    iget-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->targetedView:Landroid/view/View;

    iget-object p2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->rightIcon:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    if-ne p1, p2, :cond_1

    neg-float v0, v0

    :cond_1
    return v0
.end method

.method private getIconAtPosition(FF)Landroid/view/View;
    .locals 1

    .line 221
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->leftSwipePossible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->leftIcon:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->isOnIcon(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->leftIcon:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    return-object p1

    .line 224
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->rightSwipePossible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->rightIcon:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->isOnIcon(Landroid/view/View;FF)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 225
    iget-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->rightIcon:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getMinTranslationAmount()I
    .locals 2

    .line 377
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->callback:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;

    invoke-interface {v0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;->getAffordanceFalsingFactor()F

    move-result v0

    .line 378
    iget v1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->minTranslationAmount:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method private getRadiusFromTranslation(F)F
    .locals 2

    .line 492
    iget v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->touchSlop:I

    int-to-float v1, v0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    int-to-float v0, v0

    sub-float/2addr p1, v0

    const/high16 v0, 0x3e800000    # 0.25f

    mul-float/2addr p1, v0

    .line 495
    iget v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->minBackgroundRadius:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    return p1
.end method

.method private getScale(FLcom/android/incallui/answer/impl/affordance/SwipeButtonView;)F
    .locals 0

    .line 534
    invoke-virtual {p2}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->getRestingAlpha()F

    move-result p2

    div-float/2addr p1, p2

    const p2, 0x3e4ccccd    # 0.2f

    mul-float/2addr p1, p2

    const p2, 0x3f4ccccd    # 0.8f

    add-float/2addr p1, p2

    const/high16 p2, 0x3fc00000    # 1.5f

    .line 535
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method private getTranslationFromRadius(F)F
    .locals 2

    .line 487
    iget v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->minBackgroundRadius:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    const/high16 v0, 0x3e800000    # 0.25f

    div-float/2addr p1, v0

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    .line 488
    iget v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->touchSlop:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    :cond_0
    return v0
.end method

.method private initDimens()V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->touchSlop:I

    .line 117
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->minFlingVelocity:I

    .line 118
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->context:Landroid/content/Context;

    .line 119
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->minTranslationAmount:I

    .line 120
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->context:Landroid/content/Context;

    .line 122
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07005d

    .line 123
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->minBackgroundRadius:I

    .line 124
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->context:Landroid/content/Context;

    .line 125
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->touchTargetSize:I

    .line 126
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->context:Landroid/content/Context;

    .line 127
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070177

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->hintGrowAmount:I

    .line 128
    new-instance v0, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;

    iget-object v1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->context:Landroid/content/Context;

    const v2, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->flingAnimationUtils:Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;

    return-void
.end method

.method private initIcons()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->callback:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;

    invoke-interface {v0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;->getLeftIcon()Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->leftIcon:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    .line 133
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->callback:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;

    invoke-interface {v0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;->getRightIcon()Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->rightIcon:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    .line 134
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->updatePreviews()V

    return-void
.end method

.method private initVelocityTracker()V
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 546
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 548
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->velocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method

.method private isBelowFalsingThreshold()Z
    .locals 3

    .line 373
    iget v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->translation:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->translationOnDown:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-direct {p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->getMinTranslationAmount()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isOnIcon(Landroid/view/View;FF)Z
    .locals 3

    .line 235
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 236
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    add-float/2addr v1, p1

    sub-float/2addr p2, v0

    float-to-double p1, p2

    sub-float/2addr p3, v1

    float-to-double v0, p3

    .line 237
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p1

    .line 238
    iget p3, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->touchTargetSize:I

    div-int/lit8 p3, p3, 0x2

    int-to-double v0, p3

    cmpg-double p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private leftSwipePossible()Z
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->leftIcon:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private rightSwipePossible()Z
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->rightIcon:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setTranslation(FZZ)V
    .locals 17

    move-object/from16 v8, p0

    .line 418
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->rightSwipePossible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move/from16 v0, p1

    goto :goto_0

    :cond_0
    move/from16 v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 419
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->leftSwipePossible()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_1
    move v9, v0

    .line 420
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 421
    iget v2, v8, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->translation:F

    cmpl-float v2, v9, v2

    if-nez v2, :cond_2

    if-eqz p2, :cond_b

    :cond_2
    cmpl-float v2, v9, v1

    if-lez v2, :cond_3

    .line 422
    iget-object v3, v8, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->leftIcon:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    goto :goto_2

    :cond_3
    iget-object v3, v8, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->rightIcon:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    :goto_2
    if-lez v2, :cond_4

    .line 423
    iget-object v2, v8, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->rightIcon:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    goto :goto_3

    :cond_4
    iget-object v2, v8, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->leftIcon:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    :goto_3
    move-object v10, v2

    .line 424
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->getMinTranslationAmount()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v0, v2

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v2

    .line 428
    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v11

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_5

    if-eqz p3, :cond_5

    move v12, v1

    goto :goto_4

    :cond_5
    move v12, v4

    :goto_4
    if-eqz p2, :cond_6

    if-nez p3, :cond_6

    move v13, v1

    goto :goto_5

    :cond_6
    move v13, v4

    .line 432
    :goto_5
    invoke-direct {v8, v0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->getRadiusFromTranslation(F)F

    move-result v5

    if-eqz p2, :cond_7

    .line 433
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->isBelowFalsingThreshold()Z

    move-result v0

    if-eqz v0, :cond_7

    move v14, v1

    goto :goto_6

    :cond_7
    move v14, v4

    :goto_6
    if-eqz v3, :cond_9

    if-nez p2, :cond_8

    .line 439
    invoke-virtual {v3}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->getRestingAlpha()F

    move-result v0

    mul-float/2addr v0, v11

    add-float v4, v2, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move v2, v5

    move v3, v4

    move v4, v6

    move v5, v7

    move v6, v15

    move/from16 v7, v16

    .line 436
    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->updateIcon(Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;FFZZZZ)V

    goto :goto_7

    :cond_8
    const/4 v2, 0x0

    .line 448
    invoke-virtual {v3}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->getRestingAlpha()F

    move-result v0

    mul-float v4, v11, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move v3, v4

    move v4, v12

    move v5, v14

    move v7, v13

    .line 445
    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->updateIcon(Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;FFZZZZ)V

    :cond_9
    :goto_7
    if-eqz v10, :cond_a

    const/4 v2, 0x0

    .line 459
    invoke-virtual {v10}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->getRestingAlpha()F

    move-result v0

    mul-float v3, v11, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    move v4, v12

    move v5, v14

    move v7, v13

    .line 456
    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->updateIcon(Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;FFZZZZ)V

    .line 466
    :cond_a
    iput v9, v8, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->translation:F

    :cond_b
    return-void
.end method

.method private startFinishingCircleAnimation(FLjava/lang/Runnable;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 411
    iget-object p3, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->rightIcon:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->leftIcon:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    :goto_0
    if-eqz p3, :cond_1

    .line 413
    invoke-virtual {p3, p1, p2}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->finishAnimation(FLjava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private startHintAnimationPhase1(ZLjava/lang/Runnable;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->rightIcon:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->leftIcon:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    .line 269
    :goto_0
    iget v1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->hintGrowAmount:I

    invoke-direct {p0, p1, v1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->getAnimatorToRadius(ZI)Landroid/animation/ValueAnimator;

    move-result-object v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_1

    .line 272
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void

    .line 276
    :cond_2
    new-instance v2, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$2;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$2;-><init>(Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;Ljava/lang/Runnable;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 298
    sget-object p1, Lcom/android/incallui/answer/impl/utils/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p1, 0xc8

    .line 299
    invoke-virtual {v1, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 300
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 301
    iput-object v1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->swipeAnimator:Landroid/animation/Animator;

    .line 302
    iput-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->targetedView:Landroid/view/View;

    return-void
.end method

.method private startSwiping(Landroid/view/View;)V
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->callback:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;

    iget-object v1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->rightIcon:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;->onSwipingStarted(Z)V

    .line 216
    iput-boolean v2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->swipingInProgress:Z

    .line 217
    iput-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->targetedView:Landroid/view/View;

    return-void
.end method

.method private startUnlockHintAnimationPhase2(ZLjava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x0

    .line 308
    invoke-direct {p0, p1, v0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->getAnimatorToRadius(ZI)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    .line 311
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    .line 315
    :cond_1
    new-instance v0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$3;

    invoke-direct {v0, p0, p2}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$3;-><init>(Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 326
    sget-object p2, Lcom/android/incallui/answer/impl/utils/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x15e

    .line 327
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1f4

    .line 328
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 329
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 330
    iput-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->swipeAnimator:Landroid/animation/Animator;

    return-void
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 540
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method private updateIcon(Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;FFZZZZ)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 515
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    if-nez p6, :cond_1

    return-void

    :cond_1
    if-eqz p7, :cond_2

    .line 519
    invoke-virtual {p1, p2}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->setCircleRadiusWithoutAnimation(F)V

    goto :goto_0

    .line 521
    :cond_2
    invoke-virtual {p1, p2, p5}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->setCircleRadius(FZ)V

    .line 523
    :goto_0
    invoke-direct {p0, p1, p3, p4}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->updateIconAlpha(Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;FZ)V

    return-void
.end method

.method private updateIconAlpha(Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;FZ)V
    .locals 2

    .line 527
    invoke-direct {p0, p2, p1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->getScale(FLcom/android/incallui/answer/impl/affordance/SwipeButtonView;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 528
    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 529
    invoke-virtual {p1, p2, p3}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->setImageAlpha(FZ)V

    .line 530
    invoke-virtual {p1, v0, p3}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->setImageScale(FZ)V

    return-void
.end method

.method private updateIconsFromTranslation(Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;)V
    .locals 4

    .line 471
    iget v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->translation:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 472
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->getMinTranslationAmount()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const/4 v2, 0x0

    .line 476
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 479
    iget-object v2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->rightIcon:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->leftIcon:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    .line 480
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->getRestingAlpha()F

    move-result v3

    mul-float/2addr v3, v1

    add-float/2addr v0, v3

    const/4 v3, 0x0

    invoke-direct {p0, p1, v0, v3}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->updateIconAlpha(Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;FZ)V

    if-eqz v2, :cond_1

    .line 482
    invoke-virtual {v2}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->getRestingAlpha()F

    move-result p1

    mul-float/2addr v1, p1

    invoke-direct {p0, v2, v1, v3}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->updateIconAlpha(Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;FZ)V

    :cond_1
    return-void
.end method


# virtual methods
.method public animateHideLeftRightIcon()V
    .locals 8

    .line 499
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->cancelAnimation()V

    .line 500
    iget-object v1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->rightIcon:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->updateIcon(Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;FFZZZZ)V

    .line 501
    iget-object v1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->leftIcon:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->updateIcon(Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;FFZZZZ)V

    return-void
.end method

.method public init()V
    .locals 9

    .line 94
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->initIcons()V

    .line 95
    iget-object v1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->leftIcon:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {v1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->getRestingAlpha()F

    move-result v0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v8

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    .line 95
    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->updateIcon(Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;FFZZZZ)V

    .line 103
    iget-object v1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->rightIcon:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    if-eqz v1, :cond_1

    .line 106
    invoke-virtual {v1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->getRestingAlpha()F

    move-result v0

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v8

    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    .line 103
    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->updateIcon(Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;FFZZZZ)V

    .line 111
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->initDimens()V

    return-void
.end method

.method public isOnAffordanceIcon(FF)Z
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->leftIcon:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->isOnIcon(Landroid/view/View;FF)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->rightIcon:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->isOnIcon(Landroid/view/View;FF)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isSwipingInProgress()Z
    .locals 1

    .line 589
    iget-boolean v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->swipingInProgress:Z

    return v0
.end method

.method public launchAffordance(ZZ)V
    .locals 10

    if-eqz p2, :cond_0

    .line 593
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->leftIcon:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->rightIcon:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    .line 594
    :goto_0
    iget-boolean v1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->swipingInProgress:Z

    if-nez v1, :cond_5

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    if-eqz p2, :cond_2

    .line 598
    iget-object v1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->rightIcon:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->leftIcon:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    :goto_1
    move-object v3, v1

    .line 599
    invoke-direct {p0, v0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->startSwiping(Landroid/view/View;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    xor-int/lit8 p2, p2, 0x1

    .line 601
    invoke-direct {p0, v1, p1, p2}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->fling(FZZ)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v2, p0

    .line 602
    invoke-direct/range {v2 .. v9}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->updateIcon(Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;FFZZZZ)V

    goto :goto_3

    .line 604
    :cond_3
    iget-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->callback:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;

    xor-int/lit8 v2, p2, 0x1

    iget v4, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->translation:F

    invoke-interface {p1, v2, v4, v1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;->onAnimationToSideStarted(ZFF)V

    if-eqz p2, :cond_4

    .line 605
    iget-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->callback:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;

    goto :goto_2

    .line 606
    :cond_4
    iget-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->callback:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;

    :goto_2
    invoke-interface {p1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;->getMaxTranslationDistance()F

    move-result p1

    iput p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->translation:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v2, p0

    .line 607
    invoke-direct/range {v2 .. v9}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->updateIcon(Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;FFZZZZ)V

    .line 608
    invoke-virtual {v0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->instantFinishAnimation()V

    .line 609
    iget-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->flingEndListener:Landroid/animation/AnimatorListenerAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 610
    new-instance p1, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$AnimationEndRunnable;

    xor-int/lit8 p2, p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$AnimationEndRunnable;-><init>(Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;Z)V

    invoke-virtual {p1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$AnimationEndRunnable;->run()V

    :cond_5
    :goto_3
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 0

    .line 570
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->initDimens()V

    .line 571
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->initIcons()V

    return-void
.end method

.method public onRtlPropertiesChanged()V
    .locals 0

    .line 575
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->initIcons()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 147
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 148
    iget-boolean v1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->motionCancelled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    return v2

    .line 151
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    const/4 v4, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v4, :cond_6

    const/4 v5, 0x2

    if-eq v0, v5, :cond_3

    const/4 v5, 0x3

    if-eq v0, v5, :cond_2

    const/4 p1, 0x5

    if-eq v0, p1, :cond_1

    goto/16 :goto_3

    .line 176
    :cond_1
    iput-boolean v4, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->motionCancelled:Z

    .line 177
    invoke-direct {p0, v4, v3, v1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->endMotion(ZFF)V

    goto/16 :goto_3

    :cond_2
    move v0, v2

    goto :goto_1

    .line 180
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->trackMovement(Landroid/view/MotionEvent;)V

    .line 181
    iget p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->initialTouchX:F

    sub-float/2addr v3, p1

    .line 182
    iget p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->initialTouchY:F

    sub-float/2addr v1, p1

    float-to-double v5, v3

    float-to-double v0, v1

    .line 183
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float p1, v0

    .line 184
    iget-boolean v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->touchSlopExeeded:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->touchSlop:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_4

    .line 185
    iput-boolean v4, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->touchSlopExeeded:Z

    .line 187
    :cond_4
    iget-boolean v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->swipingInProgress:Z

    if-eqz v0, :cond_b

    .line 188
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->targetedView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->rightIcon:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    const/4 v3, 0x0

    if-ne v0, v1, :cond_5

    .line 189
    iget v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->translationOnDown:F

    sub-float/2addr v0, p1

    .line 190
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_0

    .line 192
    :cond_5
    iget v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->translationOnDown:F

    add-float/2addr v0, p1

    .line 193
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 195
    :goto_0
    invoke-direct {p0, p1, v2, v2}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->setTranslation(FZZ)V

    goto :goto_3

    :cond_6
    move v0, v4

    .line 203
    :goto_1
    iget-object v5, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->targetedView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->rightIcon:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    if-ne v5, v6, :cond_7

    move v2, v4

    .line 204
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->trackMovement(Landroid/view/MotionEvent;)V

    xor-int/lit8 p1, v0, 0x1

    .line 205
    invoke-direct {p0, p1, v3, v1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->endMotion(ZFF)V

    .line 206
    iget-boolean p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->touchSlopExeeded:Z

    if-nez p1, :cond_b

    if-eqz v0, :cond_b

    .line 207
    iget-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->callback:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;

    invoke-interface {p1, v2}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;->onIconClicked(Z)V

    goto :goto_3

    .line 157
    :cond_8
    invoke-direct {p0, v3, v1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->getIconAtPosition(FF)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 158
    iget-object v5, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->targetedView:Landroid/view/View;

    if-eqz v5, :cond_9

    if-eq v5, v0, :cond_9

    goto :goto_4

    .line 162
    :cond_9
    iget-object v5, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->targetedView:Landroid/view/View;

    if-eqz v5, :cond_a

    .line 163
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->cancelAnimation()V

    goto :goto_2

    .line 165
    :cond_a
    iput-boolean v2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->touchSlopExeeded:Z

    .line 167
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->startSwiping(Landroid/view/View;)V

    .line 168
    iput v3, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->initialTouchX:F

    .line 169
    iput v1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->initialTouchY:F

    .line 170
    iget v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->translation:F

    iput v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->translationOnDown:F

    .line 171
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->initVelocityTracker()V

    .line 172
    invoke-direct {p0, p1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->trackMovement(Landroid/view/MotionEvent;)V

    .line 173
    iput-boolean v2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->motionCancelled:Z

    :cond_b
    :goto_3
    return v4

    .line 159
    :cond_c
    :goto_4
    iput-boolean v4, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->motionCancelled:Z

    return v2
.end method

.method public reset(Z)V
    .locals 2

    .line 579
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->cancelAnimation()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 580
    invoke-direct {p0, v0, v1, p1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->setTranslation(FZZ)V

    .line 581
    iput-boolean v1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->motionCancelled:Z

    .line 582
    iget-boolean p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->swipingInProgress:Z

    if-eqz p1, :cond_0

    .line 583
    iget-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->callback:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;

    invoke-interface {p1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;->onSwipingAborted()V

    const/4 p1, 0x0

    .line 584
    iput-boolean p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->swipingInProgress:Z

    :cond_0
    return-void
.end method

.method public startHintAnimation(ZLjava/lang/Runnable;)V
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->cancelAnimation()V

    .line 263
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->startHintAnimationPhase1(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public updatePreviews()V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->leftIcon:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    if-eqz v0, :cond_0

    .line 139
    iget-object v1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->callback:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;

    invoke-interface {v1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;->getLeftPreview()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->setPreviewView(Landroid/view/View;)V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->rightIcon:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    if-eqz v0, :cond_1

    .line 142
    iget-object v1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->callback:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;

    invoke-interface {v1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;->getRightPreview()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->setPreviewView(Landroid/view/View;)V

    :cond_1
    return-void
.end method
