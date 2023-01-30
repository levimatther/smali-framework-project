.class public final Lcom/android/incallui/answer/impl/hint/PawAnswerHint;
.super Ljava/lang/Object;
.source "PawAnswerHint.java"

# interfaces
.implements Lcom/android/incallui/answer/impl/hint/AnswerHint;


# static fields
.field private static final FADE_IN_DELAY_ALPHA_MILLIS:J = 0x154L

.field private static final FADE_IN_DELAY_SCALE_MILLIS:J = 0x17cL

.field private static final FADE_IN_DURATION_ALPHA_MILLIS:J = 0x32L

.field private static final FADE_IN_DURATION_SCALE_MILLIS:J = 0xc8L

.field private static final FADE_OUT_DELAY_ALPHA_MILLIS:J = 0x82L

.field private static final FADE_OUT_DELAY_SCALE_SMALL_MILLIS:J = 0x5aL

.field private static final FADE_OUT_DURATION_ALPHA_MILLIS:J = 0xaaL

.field private static final FADE_OUT_DURATION_SCALE_MILLIS:J = 0x64L

.field private static final FADE_SCALE:F = 2.0f

.field private static final IMAGE_SCALE:F = 1.5f

.field private static final SWIPE_UP_DURATION_ALPHA_MILLIS:J = 0x1f4L


# instance fields
.field private answerGestureHintAnim:Landroid/animation/AnimatorSet;

.field private answerHintContainer:Landroid/view/View;

.field private final context:Landroid/content/Context;

.field private final payload:Landroid/graphics/drawable/Drawable;

.field private payloadView:Landroid/view/View;

.field private puck:Landroid/view/View;

.field private final puckUpDelayMillis:J

.field private final puckUpDurationMillis:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;JJ)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/incallui/answer/impl/hint/PawAnswerHint;->context:Landroid/content/Context;

    .line 77
    invoke-static {p2}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/android/incallui/answer/impl/hint/PawAnswerHint;->payload:Landroid/graphics/drawable/Drawable;

    .line 78
    iput-wide p3, p0, Lcom/android/incallui/answer/impl/hint/PawAnswerHint;->puckUpDurationMillis:J

    .line 79
    iput-wide p5, p0, Lcom/android/incallui/answer/impl/hint/PawAnswerHint;->puckUpDelayMillis:J

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/answer/impl/hint/PawAnswerHint;)Landroid/view/View;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/incallui/answer/impl/hint/PawAnswerHint;->payloadView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/incallui/answer/impl/hint/PawAnswerHint;I)F
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/incallui/answer/impl/hint/PawAnswerHint;->getDimension(I)F

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/incallui/answer/impl/hint/PawAnswerHint;)Landroid/view/View;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/incallui/answer/impl/hint/PawAnswerHint;->answerHintContainer:Landroid/view/View;

    return-object p0
.end method

.method private static createAlphaAnimator(Landroid/view/View;FFJJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;
    .locals 3

    .line 233
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 234
    invoke-virtual {p0, p3, p4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 235
    invoke-virtual {p0, p7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 236
    invoke-virtual {p0, p5, p6}, Landroid/animation/Animator;->setStartDelay(J)V

    return-object p0
.end method

.method private createFadeIn()Landroid/animation/Animator;
    .locals 2

    .line 140
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 141
    iget-object v1, p0, Lcom/android/incallui/answer/impl/hint/PawAnswerHint;->payloadView:Landroid/view/View;

    invoke-static {v1}, Lcom/android/incallui/answer/impl/hint/PawAnswerHint;->createFadeInScaleAndAlpha(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v0
.end method

.method private static createFadeInScaleAndAlpha(Landroid/view/View;)Landroid/animation/Animator;
    .locals 9

    .line 146
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x3fc00000    # 1.5f

    const-wide/16 v3, 0xc8

    const-wide/16 v5, 0x17c

    move-object v0, p0

    .line 147
    invoke-static/range {v0 .. v7}, Lcom/android/incallui/answer/impl/hint/PawAnswerHint;->createUniformScaleAnimator(Landroid/view/View;FFJJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v0

    .line 154
    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v4, 0x32

    const-wide/16 v6, 0x154

    move-object v1, p0

    .line 155
    invoke-static/range {v1 .. v8}, Lcom/android/incallui/answer/impl/hint/PawAnswerHint;->createAlphaAnimator(Landroid/view/View;FFJJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object p0

    .line 162
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 163
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v1
.end method

.method private createFadeOut()Landroid/animation/Animator;
    .locals 4

    .line 168
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 169
    iget-object v1, p0, Lcom/android/incallui/answer/impl/hint/PawAnswerHint;->payloadView:Landroid/view/View;

    const-wide/16 v2, 0x5a

    invoke-static {v1, v2, v3}, Lcom/android/incallui/answer/impl/hint/PawAnswerHint;->createFadeOutScaleAndAlpha(Landroid/view/View;J)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v0
.end method

.method private static createFadeOutScaleAndAlpha(Landroid/view/View;J)Landroid/animation/Animator;
    .locals 8

    .line 174
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    const/high16 v1, 0x3fc00000    # 1.5f

    const/high16 v2, 0x40000000    # 2.0f

    const-wide/16 v3, 0x64

    move-object v0, p0

    move-wide v5, p1

    .line 175
    invoke-static/range {v0 .. v7}, Lcom/android/incallui/answer/impl/hint/PawAnswerHint;->createUniformScaleAnimator(Landroid/view/View;FFJJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object p1

    .line 182
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const-wide/16 v3, 0xaa

    const-wide/16 v5, 0x82

    .line 183
    invoke-static/range {v0 .. v7}, Lcom/android/incallui/answer/impl/hint/PawAnswerHint;->createAlphaAnimator(Landroid/view/View;FFJJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object p0

    .line 190
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 191
    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object p2
.end method

.method private static createUniformScaleAnimator(Landroid/view/View;FFJJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;
    .locals 5

    .line 220
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v4, 0x1

    aput p2, v2, v4

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 221
    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v1, v1, [F

    aput p1, v1, v3

    aput p2, v1, v4

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 222
    invoke-virtual {v0, p3, p4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 223
    invoke-virtual {p0, p3, p4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 224
    invoke-virtual {v0, p7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 225
    invoke-virtual {p0, p7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 226
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 227
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, p5, p6}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    return-object p1
.end method

.method private getDimension(I)F
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/android/incallui/answer/impl/hint/PawAnswerHint;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    return p1
.end method


# virtual methods
.method public onAnswered()V
    .locals 0

    return-void
.end method

.method public onBounceEnd()V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/android/incallui/answer/impl/hint/PawAnswerHint;->answerGestureHintAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    const/4 v0, 0x0

    .line 199
    iput-object v0, p0, Lcom/android/incallui/answer/impl/hint/PawAnswerHint;->answerGestureHintAnim:Landroid/animation/AnimatorSet;

    .line 200
    iget-object v0, p0, Lcom/android/incallui/answer/impl/hint/PawAnswerHint;->answerHintContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onBounceStart()V
    .locals 8

    .line 96
    iget-object v0, p0, Lcom/android/incallui/answer/impl/hint/PawAnswerHint;->answerGestureHintAnim:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/answer/impl/hint/PawAnswerHint;->answerGestureHintAnim:Landroid/animation/AnimatorSet;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 99
    iget-object v1, p0, Lcom/android/incallui/answer/impl/hint/PawAnswerHint;->puck:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 100
    iget-object v1, p0, Lcom/android/incallui/answer/impl/hint/PawAnswerHint;->answerHintContainer:Landroid/view/View;

    const/4 v2, 0x1

    aget v3, v0, v2

    int-to-float v3, v3

    const v4, 0x7f070178

    invoke-direct {p0, v4}, Lcom/android/incallui/answer/impl/hint/PawAnswerHint;->getDimension(I)F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/view/View;->setY(F)V

    .line 102
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/hint/PawAnswerHint;->createFadeIn()Landroid/animation/Animator;

    move-result-object v1

    .line 104
    iget-object v3, p0, Lcom/android/incallui/answer/impl/hint/PawAnswerHint;->answerHintContainer:Landroid/view/View;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v2, [F

    const/4 v6, 0x0

    aget v2, v0, v2

    int-to-float v2, v2

    const v7, 0x7f07017d

    .line 108
    invoke-direct {p0, v7}, Lcom/android/incallui/answer/impl/hint/PawAnswerHint;->getDimension(I)F

    move-result v7

    sub-float/2addr v2, v7

    aput v2, v5, v6

    .line 105
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 109
    new-instance v3, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v3}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x1f4

    .line 110
    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 112
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/hint/PawAnswerHint;->createFadeOut()Landroid/animation/Animator;

    move-result-object v3

    .line 114
    iget-object v4, p0, Lcom/android/incallui/answer/impl/hint/PawAnswerHint;->answerGestureHintAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/incallui/answer/impl/hint/PawAnswerHint;->puckUpDelayMillis:J

    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    .line 115
    iget-object v4, p0, Lcom/android/incallui/answer/impl/hint/PawAnswerHint;->answerGestureHintAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 118
    iget-object v2, p0, Lcom/android/incallui/answer/impl/hint/PawAnswerHint;->answerGestureHintAnim:Landroid/animation/AnimatorSet;

    .line 119
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/incallui/answer/impl/hint/PawAnswerHint;->puckUpDelayMillis:J

    iget-wide v5, p0, Lcom/android/incallui/answer/impl/hint/PawAnswerHint;->puckUpDurationMillis:J

    add-long/2addr v3, v5

    const-wide/16 v5, 0x82

    sub-long/2addr v3, v5

    .line 120
    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    .line 122
    new-instance v2, Lcom/android/incallui/answer/impl/hint/PawAnswerHint$1;

    invoke-direct {v2, p0, v0}, Lcom/android/incallui/answer/impl/hint/PawAnswerHint$1;-><init>(Lcom/android/incallui/answer/impl/hint/PawAnswerHint;[I)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/answer/impl/hint/PawAnswerHint;->answerGestureHintAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 1

    .line 85
    iput-object p3, p0, Lcom/android/incallui/answer/impl/hint/PawAnswerHint;->puck:Landroid/view/View;

    const p3, 0x7f0c00d9

    const/4 v0, 0x1

    .line 86
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090057

    .line 87
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/answer/impl/hint/PawAnswerHint;->answerHintContainer:Landroid/view/View;

    const p2, 0x7f090232

    .line 88
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/answer/impl/hint/PawAnswerHint;->payloadView:Landroid/view/View;

    .line 89
    iget-object p1, p0, Lcom/android/incallui/answer/impl/hint/PawAnswerHint;->context:Landroid/content/Context;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070182

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const/4 p2, 0x0

    .line 89
    invoke-virtual {p4, p2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 91
    iget-object p1, p0, Lcom/android/incallui/answer/impl/hint/PawAnswerHint;->payloadView:Landroid/view/View;

    check-cast p1, Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/android/incallui/answer/impl/hint/PawAnswerHint;->payload:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
