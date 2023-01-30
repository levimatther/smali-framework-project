.class public Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;
.super Ljava/lang/Object;
.source "FlingAnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$AnimatorProperties;,
        Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$VelocityInterpolator;,
        Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$InterpolatorInterpolator;
    }
.end annotation


# static fields
.field private static final HIGH_VELOCITY_DP_PER_SECOND:F = 3000.0f

.field private static final LINEAR_OUT_FASTER_IN_X2:F = 0.5f

.field private static final LINEAR_OUT_FASTER_IN_Y2_MAX:F = 0.5f

.field private static final LINEAR_OUT_FASTER_IN_Y2_MIN:F = 0.4f

.field private static final LINEAR_OUT_SLOW_IN_START_GRADIENT:F = 2.857143f

.field private static final LINEAR_OUT_SLOW_IN_X2:F = 0.35f

.field private static final MIN_VELOCITY_DP_PER_SECOND:F = 250.0f


# instance fields
.field private highVelocityPxPerSecond:F

.field private linearOutSlowIn:Landroid/view/animation/Interpolator;

.field private mAnimatorProperties:Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$AnimatorProperties;

.field private maxLengthSeconds:F

.field private minVelocityPxPerSecond:F


# direct methods
.method public constructor <init>(Landroid/content/Context;F)V
    .locals 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$AnimatorProperties;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$AnimatorProperties;-><init>(Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$1;)V

    iput-object v0, p0, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$AnimatorProperties;

    .line 47
    iput p2, p0, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;->maxLengthSeconds:F

    .line 48
    new-instance p2, Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    const v1, 0x3eb33333    # 0.35f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p2, v0, v0, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p2, p0, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;->linearOutSlowIn:Landroid/view/animation/Interpolator;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x437a0000    # 250.0f

    mul-float/2addr p2, v0

    iput p2, p0, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;->minVelocityPxPerSecond:F

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const p2, 0x453b8000    # 3000.0f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;->highVelocityPxPerSecond:F

    return-void
.end method

.method private calculateLinearOutFasterInY2(F)F
    .locals 2

    .line 235
    iget v0, p0, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;->minVelocityPxPerSecond:F

    sub-float/2addr p1, v0

    iget v1, p0, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;->highVelocityPxPerSecond:F

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 237
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    sub-float/2addr v0, p1

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    return v0
.end method

.method private getDismissingProperties(FFFF)Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$AnimatorProperties;
    .locals 6

    .line 195
    iget v0, p0, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;->maxLengthSeconds:F

    float-to-double v0, v0

    sub-float/2addr p2, p1

    .line 197
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, p4

    float-to-double v2, p1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 198
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 199
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    .line 200
    invoke-direct {p0, p3}, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;->calculateLinearOutFasterInY2(F)F

    move-result p4

    const/high16 v0, 0x3f000000    # 0.5f

    div-float v1, p4, v0

    .line 203
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v0, p4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    mul-float/2addr v1, p2

    div-float/2addr v1, p3

    cmpg-float p4, v1, p1

    if-gtz p4, :cond_0

    .line 206
    iget-object p1, p0, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$AnimatorProperties;

    iput-object v2, p1, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    move p1, v1

    goto :goto_0

    .line 207
    :cond_0
    iget p4, p0, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;->minVelocityPxPerSecond:F

    cmpl-float p4, p3, p4

    if-ltz p4, :cond_1

    .line 212
    new-instance p4, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$VelocityInterpolator;

    const/4 v0, 0x0

    invoke-direct {p4, p1, p3, p2, v0}, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$VelocityInterpolator;-><init>(FFFLcom/android/incallui/answer/impl/utils/FlingAnimationUtils$1;)V

    .line 214
    new-instance p2, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$InterpolatorInterpolator;

    iget-object p3, p0, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;->linearOutSlowIn:Landroid/view/animation/Interpolator;

    invoke-direct {p2, p4, v2, p3}, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$InterpolatorInterpolator;-><init>(Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    .line 216
    iget-object p3, p0, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$AnimatorProperties;

    iput-object p2, p3, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 221
    :cond_1
    iget-object p2, p0, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$AnimatorProperties;

    sget-object p3, Lcom/android/incallui/answer/impl/utils/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    iput-object p3, p2, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    .line 223
    :goto_0
    iget-object p2, p0, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$AnimatorProperties;

    const/high16 p3, 0x447a0000    # 1000.0f

    mul-float/2addr p1, p3

    float-to-long p3, p1

    iput-wide p3, p2, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$AnimatorProperties;->duration:J

    .line 224
    iget-object p1, p0, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$AnimatorProperties;

    return-object p1
.end method

.method private getProperties(FFFF)Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$AnimatorProperties;
    .locals 4

    .line 124
    iget v0, p0, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;->maxLengthSeconds:F

    float-to-double v0, v0

    sub-float/2addr p2, p1

    .line 125
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, p4

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 126
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 127
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    const p4, 0x4036db6e

    mul-float/2addr p4, p2

    div-float/2addr p4, p3

    cmpg-float v0, p4, p1

    if-gtz v0, :cond_0

    .line 130
    iget-object p1, p0, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$AnimatorProperties;

    iget-object p2, p0, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;->linearOutSlowIn:Landroid/view/animation/Interpolator;

    iput-object p2, p1, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    move p1, p4

    goto :goto_0

    .line 131
    :cond_0
    iget p4, p0, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;->minVelocityPxPerSecond:F

    cmpl-float p4, p3, p4

    if-ltz p4, :cond_1

    .line 135
    new-instance p4, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$VelocityInterpolator;

    const/4 v0, 0x0

    invoke-direct {p4, p1, p3, p2, v0}, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$VelocityInterpolator;-><init>(FFFLcom/android/incallui/answer/impl/utils/FlingAnimationUtils$1;)V

    .line 137
    iget-object p2, p0, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$AnimatorProperties;

    new-instance p3, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$InterpolatorInterpolator;

    iget-object v0, p0, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;->linearOutSlowIn:Landroid/view/animation/Interpolator;

    invoke-direct {p3, p4, v0, v0}, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$InterpolatorInterpolator;-><init>(Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    iput-object p3, p2, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 143
    :cond_1
    iget-object p2, p0, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$AnimatorProperties;

    sget-object p3, Lcom/android/incallui/answer/impl/utils/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object p3, p2, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    .line 145
    :goto_0
    iget-object p2, p0, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$AnimatorProperties;

    const/high16 p3, 0x447a0000    # 1000.0f

    mul-float/2addr p1, p3

    float-to-long p3, p1

    iput-wide p3, p2, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$AnimatorProperties;->duration:J

    .line 146
    iget-object p1, p0, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$AnimatorProperties;

    return-object p1
.end method


# virtual methods
.method public apply(Landroid/animation/Animator;FFF)V
    .locals 7

    sub-float v0, p3, p2

    .line 65
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    return-void
.end method

.method public apply(Landroid/animation/Animator;FFFF)V
    .locals 0

    .line 95
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;->getProperties(FFFF)Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$AnimatorProperties;

    move-result-object p2

    .line 96
    iget-wide p3, p2, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$AnimatorProperties;->duration:J

    invoke-virtual {p1, p3, p4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 97
    iget-object p2, p2, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public apply(Landroid/view/ViewPropertyAnimator;FFF)V
    .locals 7

    sub-float v0, p3, p2

    .line 79
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;->apply(Landroid/view/ViewPropertyAnimator;FFFF)V

    return-void
.end method

.method public apply(Landroid/view/ViewPropertyAnimator;FFFF)V
    .locals 0

    .line 117
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;->getProperties(FFFF)Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$AnimatorProperties;

    move-result-object p2

    .line 118
    iget-wide p3, p2, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$AnimatorProperties;->duration:J

    invoke-virtual {p1, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 119
    iget-object p2, p2, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public applyDismissing(Landroid/animation/Animator;FFFF)V
    .locals 0

    .line 164
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;->getDismissingProperties(FFFF)Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$AnimatorProperties;

    move-result-object p2

    .line 165
    iget-wide p3, p2, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$AnimatorProperties;->duration:J

    invoke-virtual {p1, p3, p4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 166
    iget-object p2, p2, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public applyDismissing(Landroid/view/ViewPropertyAnimator;FFFF)V
    .locals 0

    .line 188
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;->getDismissingProperties(FFFF)Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$AnimatorProperties;

    move-result-object p2

    .line 189
    iget-wide p3, p2, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$AnimatorProperties;->duration:J

    invoke-virtual {p1, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 190
    iget-object p2, p2, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public getMinVelocityPxPerSecond()F
    .locals 1

    .line 243
    iget v0, p0, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;->minVelocityPxPerSecond:F

    return v0
.end method
