.class public Lcom/android/dialer/animation/AnimUtils;
.super Ljava/lang/Object;
.source "AnimUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/animation/AnimUtils$AnimationCallback;
    }
.end annotation


# static fields
.field public static final DEFAULT_DURATION:I = -0x1

.field public static final EASE_IN:Landroid/view/animation/Interpolator;

.field public static final EASE_OUT:Landroid/view/animation/Interpolator;

.field public static final EASE_OUT_EASE_IN:Landroid/view/animation/Interpolator;

.field public static final NO_DELAY:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 32
    invoke-static {v0, v0, v1, v2}, Lcom/android/dialer/compat/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v3

    sput-object v3, Lcom/android/dialer/animation/AnimUtils;->EASE_IN:Landroid/view/animation/Interpolator;

    const v3, 0x3ecccccd    # 0.4f

    .line 33
    invoke-static {v3, v0, v2, v2}, Lcom/android/dialer/compat/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v4

    sput-object v4, Lcom/android/dialer/animation/AnimUtils;->EASE_OUT:Landroid/view/animation/Interpolator;

    .line 35
    invoke-static {v3, v0, v1, v2}, Lcom/android/dialer/compat/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/animation/AnimUtils;->EASE_OUT_EASE_IN:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeDimensions(Landroid/view/View;II)V
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 220
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 222
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 223
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int v3, p1, v4

    sub-int v5, p2, v6

    .line 227
    new-instance p1, Lcom/android/dialer/animation/AnimUtils$5;

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/dialer/animation/AnimUtils$5;-><init>(Landroid/view/View;IIII)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 238
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static crossFadeViews(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 38
    invoke-static {p0, p2}, Lcom/android/dialer/animation/AnimUtils;->fadeIn(Landroid/view/View;I)V

    .line 39
    invoke-static {p1, p2}, Lcom/android/dialer/animation/AnimUtils;->fadeOut(Landroid/view/View;I)V

    return-void
.end method

.method public static fadeIn(Landroid/view/View;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-static {p0, p1, v0, v1}, Lcom/android/dialer/animation/AnimUtils;->fadeIn(Landroid/view/View;IILcom/android/dialer/animation/AnimUtils$AnimationCallback;)V

    return-void
.end method

.method public static fadeIn(Landroid/view/View;IILcom/android/dialer/animation/AnimUtils$AnimationCallback;)V
    .locals 3

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    int-to-long v1, p2

    .line 88
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 90
    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 91
    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v1, Lcom/android/dialer/animation/AnimUtils$2;

    invoke-direct {v1, p0, p3}, Lcom/android/dialer/animation/AnimUtils$2;-><init>(Landroid/view/View;Lcom/android/dialer/animation/AnimUtils$AnimationCallback;)V

    .line 92
    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    int-to-long p0, p1

    .line 115
    invoke-virtual {v0, p0, p1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 117
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static fadeOut(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-static {p0, p1, v0}, Lcom/android/dialer/animation/AnimUtils;->fadeOut(Landroid/view/View;ILcom/android/dialer/animation/AnimUtils$AnimationCallback;)V

    return-void
.end method

.method public static fadeOut(Landroid/view/View;ILcom/android/dialer/animation/AnimUtils$AnimationCallback;)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 47
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v1, 0x0

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/dialer/animation/AnimUtils$1;

    invoke-direct {v2, p0, p2}, Lcom/android/dialer/animation/AnimUtils$1;-><init>(Landroid/view/View;Lcom/android/dialer/animation/AnimUtils$AnimationCallback;)V

    .line 53
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    int-to-long p0, p1

    .line 73
    invoke-virtual {v0, p0, p1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 75
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static scaleIn(Landroid/view/View;II)V
    .locals 7

    .line 128
    new-instance v5, Lcom/android/dialer/animation/AnimUtils$3;

    invoke-direct {v5, p0}, Lcom/android/dialer/animation/AnimUtils$3;-><init>(Landroid/view/View;)V

    .line 141
    sget-object v6, Lcom/android/dialer/animation/AnimUtils;->EASE_IN:Landroid/view/animation/Interpolator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Lcom/android/dialer/animation/AnimUtils;->scaleInternal(Landroid/view/View;IIIILandroid/animation/AnimatorListenerAdapter;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method private static scaleInternal(Landroid/view/View;IIIILandroid/animation/AnimatorListenerAdapter;Landroid/view/animation/Interpolator;)V
    .locals 0

    int-to-float p1, p1

    .line 191
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 192
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 194
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 195
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 198
    invoke-virtual {p0, p6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    int-to-float p2, p2

    .line 199
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 200
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 201
    invoke-virtual {p1, p5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 202
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    const/4 p1, -0x1

    if-eq p3, p1, :cond_0

    int-to-long p1, p3

    .line 205
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_0
    int-to-long p1, p4

    .line 207
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 209
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static scaleOut(Landroid/view/View;I)V
    .locals 7

    .line 158
    new-instance v5, Lcom/android/dialer/animation/AnimUtils$4;

    invoke-direct {v5, p0}, Lcom/android/dialer/animation/AnimUtils$4;-><init>(Landroid/view/View;)V

    .line 173
    sget-object v6, Lcom/android/dialer/animation/AnimUtils;->EASE_OUT:Landroid/view/animation/Interpolator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v3, p1

    invoke-static/range {v0 .. v6}, Lcom/android/dialer/animation/AnimUtils;->scaleInternal(Landroid/view/View;IIIILandroid/animation/AnimatorListenerAdapter;Landroid/view/animation/Interpolator;)V

    return-void
.end method
