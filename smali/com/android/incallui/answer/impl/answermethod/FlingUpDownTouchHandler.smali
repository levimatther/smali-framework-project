.class Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;
.super Ljava/lang/Object;
.source "FlingUpDownTouchHandler.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler$FlingTarget;,
        Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler$OnProgressChangedListener;
    }
.end annotation


# static fields
.field private static final ACCEPT_THRESHOLD_DP:I = 0x96

.field private static final FALSING_THRESHOLD_DP:I = 0x28

.field private static final HINT_MOVE_THRESHOLD_RATIO:F = 0.1f

.field private static final PROGRESS_FLING_RECENTER:F = 0.1f

.field private static final PROGRESS_SWIPE_RECENTER:F = 0.8f

.field private static final REJECT_FLING_THRESHOLD_MODIFIER:F = 2.0f

.field private static final REJECT_THRESHOLD_DP:I = 0x96


# instance fields
.field private final acceptThresholdPx:F

.field private acceptThresholdY:F

.field private currentProgress:F

.field private final deadZoneTopPx:F

.field private final falsingManager:Lcom/android/incallui/answer/impl/classifier/FalsingManager;

.field private falsingThresholdPx:F

.field private flingAnimationUtils:Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;

.field private flingEnabled:Z

.field private hintDistanceExceeded:Z

.field private initialTouchY:F

.field private final listener:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler$OnProgressChangedListener;

.field private motionAborted:Z

.field private progressAnimator:Landroid/animation/Animator;

.field private final rejectThresholdPx:F

.field private rejectThresholdY:F

.field private final target:Landroid/view/View;

.field private touchAboveFalsingThreshold:Z

.field private touchEnabled:Z

.field private touchSlop:F

.field private touchSlopExceeded:Z

.field private touchUsesFalsing:Z

.field private tracking:Z

.field private trackingPointer:I

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private zeroY:F


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler$OnProgressChangedListener;Lcom/android/incallui/answer/impl/classifier/FalsingManager;)V
    .locals 1

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->touchEnabled:Z

    .line 148
    iput-boolean v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->flingEnabled:Z

    .line 178
    iput-object p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->target:Landroid/view/View;

    .line 179
    iput-object p2, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->listener:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler$OnProgressChangedListener;

    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 181
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->touchSlop:F

    .line 182
    new-instance p2, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;

    const v0, 0x3f19999a    # 0.6f

    invoke-direct {p2, p1, v0}, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object p2, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->flingAnimationUtils:Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;

    const/high16 p2, 0x42200000    # 40.0f

    .line 183
    invoke-static {p1, p2}, Lcom/android/dialer/common/DpUtil;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    iput p2, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->falsingThresholdPx:F

    const/high16 p2, 0x43160000    # 150.0f

    .line 184
    invoke-static {p1, p2}, Lcom/android/dialer/common/DpUtil;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->acceptThresholdPx:F

    .line 185
    invoke-static {p1, p2}, Lcom/android/dialer/common/DpUtil;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    iput p2, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->rejectThresholdPx:F

    .line 189
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07006c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iget p2, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->acceptThresholdPx:F

    .line 188
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->deadZoneTopPx:F

    .line 191
    iput-object p3, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->falsingManager:Lcom/android/incallui/answer/impl/classifier/FalsingManager;

    return-void
.end method

.method static synthetic access$002(Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->progressAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->onMoveEnded()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;F)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->setCurrentProgress(F)V

    return-void
.end method

.method public static attach(Landroid/view/View;Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler$OnProgressChangedListener;Lcom/android/incallui/answer/impl/classifier/FalsingManager;)Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;
    .locals 1

    .line 136
    new-instance v0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;-><init>(Landroid/view/View;Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler$OnProgressChangedListener;Lcom/android/incallui/answer/impl/classifier/FalsingManager;)V

    .line 137
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object v0
.end method

.method private cancelProgressAnimator()V
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->progressAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method private createProgressAnimator(F)Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 440
    iget v1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->currentProgress:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 441
    new-instance v0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler$2;-><init>(Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method private endMotionEvent(Landroid/view/MotionEvent;FZ)V
    .locals 7

    const/4 v0, -0x1

    .line 295
    iput v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->trackingPointer:I

    .line 296
    iget-boolean v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->tracking:Z

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->touchSlopExceeded:Z

    if-nez v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->initialTouchY:F

    sub-float v0, p2, v0

    .line 297
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->touchSlop:F

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_2

    .line 298
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v1, :cond_2

    if-eqz p3, :cond_1

    goto :goto_0

    .line 324
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->onTrackingStopped()V

    .line 325
    invoke-direct {p0, v2}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->setCurrentProgress(F)V

    .line 326
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->onMoveEnded()V

    goto :goto_5

    .line 302
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_3

    const/16 v2, 0x3e8

    .line 303
    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 304
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    .line 305
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->velocityTracker:Landroid/view/VelocityTracker;

    .line 307
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    float-to-double v3, v0

    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-double v5, v0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v0, v3

    .line 306
    invoke-static {v0, v2}, Ljava/lang/Math;->copySign(FF)F

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v2

    .line 311
    :goto_1
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->isFalseTouch()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_5

    .line 312
    iget-boolean v5, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->touchSlopExceeded:Z

    if-eqz v5, :cond_5

    if-nez p3, :cond_5

    .line 316
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    move p1, v4

    goto :goto_3

    :cond_5
    :goto_2
    const/4 p1, 0x1

    :goto_3
    if-eqz p1, :cond_6

    goto :goto_4

    .line 319
    :cond_6
    invoke-direct {p0, p2, v0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->getFlingTarget(FF)I

    move-result v4

    .line 321
    :goto_4
    invoke-direct {p0, v2, v4, v3}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->fling(FIZ)V

    .line 322
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->onTrackingStopped()V

    .line 329
    :goto_5
    iget-object p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_7

    .line 330
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 331
    iput-object p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_7
    return-void
.end method

.method private fling(FIZ)V
    .locals 7

    int-to-float v3, p2

    .line 397
    invoke-direct {p0, v3}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->createProgressAnimator(F)Landroid/animation/ValueAnimator;

    move-result-object v6

    if-nez p2, :cond_0

    .line 399
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->flingAnimationUtils:Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;

    iget v1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->currentProgress:F

    invoke-virtual {v0, v6, v1, v3, p1}, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    goto :goto_0

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->flingAnimationUtils:Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;

    iget v2, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->currentProgress:F

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v1, v6

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;->applyDismissing(Landroid/animation/Animator;FFFF)V

    :goto_0
    const/4 v0, 0x0

    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    move p1, v0

    :cond_1
    cmpl-float p1, p1, v0

    if-nez p1, :cond_2

    const-wide/16 p1, 0x15e

    .line 407
    invoke-virtual {v6, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 410
    :cond_2
    new-instance p1, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler$1;

    invoke-direct {p1, p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler$1;-><init>(Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;)V

    invoke-virtual {v6, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 427
    iput-object v6, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->progressAnimator:Landroid/animation/Animator;

    .line 428
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private getFlingTarget(FF)I
    .locals 6

    .line 337
    invoke-direct {p0, p1}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->pointerYToProgress(F)F

    move-result p1

    .line 339
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->flingAnimationUtils:Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;

    invoke-virtual {v0}, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, p2, v1

    if-lez v2, :cond_0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    .line 343
    :cond_0
    iget-boolean v2, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->flingEnabled:Z

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_7

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v0, v2, v0

    if-gez v0, :cond_1

    goto :goto_3

    :cond_1
    cmpg-float p2, p2, v1

    if-gez p2, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v5

    :goto_0
    cmpl-float v1, p1, v1

    if-lez v1, :cond_3

    move v1, v4

    goto :goto_1

    :cond_3
    move v1, v5

    :goto_1
    if-ne v0, v1, :cond_4

    move v0, v4

    goto :goto_2

    :cond_4
    move v0, v5

    :goto_2
    if-nez v0, :cond_5

    .line 354
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x3dcccccd    # 0.1f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_5

    return v5

    :cond_5
    if-gez p2, :cond_6

    move v3, v4

    :cond_6
    return v3

    .line 345
    :cond_7
    :goto_3
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const v0, 0x3f4ccccd    # 0.8f

    cmpl-float p2, p2, v0

    if-lez p2, :cond_9

    cmpl-float p1, p1, v1

    if-lez p1, :cond_8

    move v3, v4

    :cond_8
    return v3

    :cond_9
    return v5
.end method

.method private initVelocityTracker()V
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 453
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 455
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->velocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method

.method private isFalseTouch()Z
    .locals 4

    .line 372
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->falsingManager:Lcom/android/incallui/answer/impl/classifier/FalsingManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/answer/impl/classifier/FalsingManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 373
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->falsingManager:Lcom/android/incallui/answer/impl/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/incallui/answer/impl/classifier/FalsingManager;->isFalseTouch()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 374
    iget-boolean v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->touchUsesFalsing:Z

    const-string v3, "FlingUpDownTouchHandler.isFalseTouch"

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "rejecting false touch"

    .line 375
    invoke-static {v3, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Suspected false touch, but not using false touch rejection for this gesture"

    .line 378
    invoke-static {v3, v1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return v2

    .line 387
    :cond_2
    iget-boolean v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->touchAboveFalsingThreshold:Z

    xor-int/2addr v0, v1

    return v0
.end method

.method private onMoveEnded()V
    .locals 4

    .line 432
    iget v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->currentProgress:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 433
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->listener:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler$OnProgressChangedListener;

    iget-boolean v1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->hintDistanceExceeded:Z

    xor-int/2addr v1, v3

    invoke-interface {v0, v1}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler$OnProgressChangedListener;->onMoveReset(Z)V

    goto :goto_1

    .line 435
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->listener:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler$OnProgressChangedListener;

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2, v3}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler$OnProgressChangedListener;->onMoveFinish(Z)V

    :goto_1
    return-void
.end method

.method private onTrackingStarted()V
    .locals 1

    const/4 v0, 0x1

    .line 476
    iput-boolean v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->tracking:Z

    .line 477
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->listener:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler$OnProgressChangedListener;

    invoke-interface {v0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler$OnProgressChangedListener;->onTrackingStart()V

    return-void
.end method

.method private onTrackingStopped()V
    .locals 1

    const/4 v0, 0x0

    .line 481
    iput-boolean v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->tracking:Z

    .line 482
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->listener:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler$OnProgressChangedListener;

    invoke-interface {v0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler$OnProgressChangedListener;->onTrackingStopped()V

    return-void
.end method

.method private pointerYToProgress(F)F
    .locals 4

    .line 364
    iget v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->zeroY:F

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 365
    iget v2, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->rejectThresholdY:F

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->acceptThresholdY:F

    .line 367
    :goto_1
    iget v3, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->zeroY:F

    sub-float/2addr p1, v3

    sub-float/2addr v2, v3

    div-float/2addr p1, v2

    if-eqz v0, :cond_2

    const/4 v1, -0x1

    :cond_2
    int-to-float v0, v1

    mul-float/2addr p1, v0

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 368
    invoke-static {p1, v0, v1}, Lcom/android/dialer/common/MathUtil;->clamp(FFF)F

    move-result p1

    return p1
.end method

.method private setCurrentProgress(F)V
    .locals 2

    .line 492
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 493
    iput-boolean v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->hintDistanceExceeded:Z

    .line 495
    :cond_0
    iput p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->currentProgress:F

    .line 496
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->listener:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler$OnProgressChangedListener;

    invoke-interface {v0, p1}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler$OnProgressChangedListener;->onProgressChanged(F)V

    return-void
.end method

.method private startMotion(FZF)V
    .locals 4

    .line 459
    iput p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->initialTouchY:F

    const/4 v0, 0x0

    .line 460
    iput-boolean v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->hintDistanceExceeded:Z

    float-to-double v0, p3

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .line 463
    iget v1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->acceptThresholdPx:F

    sub-float/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->acceptThresholdY:F

    .line 464
    iget-object p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->target:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->initialTouchY:F

    iget v1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->rejectThresholdPx:F

    add-float/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->rejectThresholdY:F

    .line 465
    iget p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->initialTouchY:F

    iput p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->zeroY:F

    :cond_0
    if-eqz p2, :cond_1

    const/4 p1, 0x1

    .line 469
    iput-boolean p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->touchSlopExceeded:Z

    .line 470
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->onTrackingStarted()V

    .line 471
    invoke-direct {p0, p3}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->setCurrentProgress(F)V

    :cond_1
    return-void
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public detach()V
    .locals 1

    .line 219
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->cancelProgressAnimator()V

    const/4 v0, 0x0

    .line 220
    invoke-virtual {p0, v0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->setTouchEnabled(Z)V

    return-void
.end method

.method public isTracking()Z
    .locals 1

    .line 196
    iget-boolean v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->tracking:Z

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 225
    iget-object p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->falsingManager:Lcom/android/incallui/answer/impl/classifier/FalsingManager;

    if-eqz p1, :cond_0

    .line 226
    invoke-virtual {p1, p2}, Lcom/android/incallui/answer/impl/classifier/FalsingManager;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 228
    :cond_0
    iget-boolean p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->touchEnabled:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 231
    :cond_1
    iget-boolean p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->motionAborted:Z

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_2

    return v0

    .line 235
    :cond_2
    iget p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->trackingPointer:I

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    if-gez p1, :cond_3

    .line 238
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->trackingPointer:I

    move p1, v0

    .line 240
    :cond_3
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 242
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_b

    if-eq v1, v2, :cond_a

    const/4 v3, 0x2

    if-eq v1, v3, :cond_7

    const/4 v3, 0x3

    if-eq v1, v3, :cond_a

    const/4 v3, 0x5

    if-eq v1, v3, :cond_6

    const/4 p1, 0x6

    if-eq v1, p1, :cond_4

    goto/16 :goto_1

    .line 260
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    .line 261
    iget v1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->trackingPointer:I

    if-ne v1, p1, :cond_f

    .line 263
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    if-eq v1, p1, :cond_5

    goto :goto_0

    :cond_5
    move v0, v2

    .line 264
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 265
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p2

    iput p2, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->trackingPointer:I

    .line 266
    iget p2, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->currentProgress:F

    invoke-direct {p0, p1, v2, p2}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->startMotion(FZF)V

    goto :goto_1

    .line 270
    :cond_6
    iput-boolean v2, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->motionAborted:Z

    .line 271
    invoke-direct {p0, p2, p1, v2}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->endMotionEvent(Landroid/view/MotionEvent;FZ)V

    return v0

    .line 274
    :cond_7
    iget v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->initialTouchY:F

    sub-float v0, p1, v0

    .line 276
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v3, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->touchSlop:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_8

    .line 277
    iput-boolean v2, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->touchSlopExceeded:Z

    .line 279
    :cond_8
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->falsingThresholdPx:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_9

    .line 280
    iput-boolean v2, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->touchAboveFalsingThreshold:Z

    .line 282
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->pointerYToProgress(F)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->setCurrentProgress(F)V

    .line 283
    invoke-direct {p0, p2}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->trackMovement(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 288
    :cond_a
    invoke-direct {p0, p2}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->trackMovement(Landroid/view/MotionEvent;)V

    .line 289
    invoke-direct {p0, p2, p1, v0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->endMotionEvent(Landroid/view/MotionEvent;FZ)V

    goto :goto_1

    .line 244
    :cond_b
    iget v1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->deadZoneTopPx:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_c

    return v0

    .line 247
    :cond_c
    iput-boolean v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->motionAborted:Z

    .line 248
    iget v1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->currentProgress:F

    invoke-direct {p0, p1, v0, v1}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->startMotion(FZF)V

    .line 249
    iput-boolean v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->touchAboveFalsingThreshold:Z

    .line 250
    iget-object p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->listener:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler$OnProgressChangedListener;

    invoke-interface {p1, p2}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler$OnProgressChangedListener;->shouldUseFalsing(Landroid/view/MotionEvent;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->touchUsesFalsing:Z

    .line 251
    iget-object p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez p1, :cond_d

    .line 252
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->initVelocityTracker()V

    .line 254
    :cond_d
    invoke-direct {p0, p2}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->trackMovement(Landroid/view/MotionEvent;)V

    .line 255
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->cancelProgressAnimator()V

    .line 256
    iget-object p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->progressAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_e

    move v0, v2

    :cond_e
    iput-boolean v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->touchSlopExceeded:Z

    .line 257
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->onTrackingStarted()V

    :cond_f
    :goto_1
    return v2
.end method

.method public setFlingEnabled(Z)V
    .locals 0

    .line 215
    iput-boolean p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->flingEnabled:Z

    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 0

    .line 205
    iput-boolean p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->touchEnabled:Z

    return-void
.end method
