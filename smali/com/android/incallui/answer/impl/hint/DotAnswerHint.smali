.class public Lcom/android/incallui/answer/impl/hint/DotAnswerHint;
.super Ljava/lang/Object;
.source "DotAnswerHint.java"

# interfaces
.implements Lcom/android/incallui/answer/impl/hint/AnswerHint;


# static fields
.field private static final ANSWER_HINT_LARGE_ALPHA:F = 0.2f

.field private static final ANSWER_HINT_MID_ALPHA:F = 0.5f

.field private static final ANSWER_HINT_SMALL_ALPHA:F = 0.8f

.field private static final FADE_IN_DELAY_ALPHA_MILLIS:J = 0x154L

.field private static final FADE_IN_DELAY_SCALE_MILLIS:J = 0x17cL

.field private static final FADE_IN_DURATION_ALPHA_MILLIS:J = 0x32L

.field private static final FADE_IN_DURATION_SCALE_MILLIS:J = 0xc8L

.field private static final FADE_OUT_DELAY_ALPHA_MILLIS:J = 0x82L

.field private static final FADE_OUT_DELAY_SCALE_LARGE_MILLIS:J = 0xaL

.field private static final FADE_OUT_DELAY_SCALE_MID_MILLIS:J = 0x46L

.field private static final FADE_OUT_DELAY_SCALE_SMALL_MILLIS:J = 0x5aL

.field private static final FADE_OUT_DURATION_ALPHA_MILLIS:J = 0xaaL

.field private static final FADE_OUT_DURATION_SCALE_MILLIS:J = 0x64L

.field private static final SWIPE_UP_DURATION_ALPHA_MILLIS:J = 0x1f4L


# instance fields
.field private answerGestureHintAnim:Landroid/animation/AnimatorSet;

.field private answerHintContainer:Landroid/view/View;

.field private answerHintLarge:Landroid/view/View;

.field private answerHintMid:Landroid/view/View;

.field private answerHintSmall:Landroid/view/View;

.field private final context:Landroid/content/Context;

.field private puck:Landroid/view/View;

.field private final puckUpDelayMillis:J

.field private final puckUpDurationMillis:J


# direct methods
.method public constructor <init>(Landroid/content/Context;JJ)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->context:Landroid/content/Context;

    .line 71
    iput-wide p2, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->puckUpDurationMillis:J

    .line 72
    iput-wide p4, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->puckUpDelayMillis:J

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/answer/impl/hint/DotAnswerHint;)Landroid/view/View;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->answerHintSmall:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/incallui/answer/impl/hint/DotAnswerHint;)Landroid/view/View;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->answerHintMid:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/incallui/answer/impl/hint/DotAnswerHint;)Landroid/view/View;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->answerHintLarge:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/incallui/answer/impl/hint/DotAnswerHint;I)F
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->getDimension(I)F

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/incallui/answer/impl/hint/DotAnswerHint;)Landroid/view/View;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->answerHintContainer:Landroid/view/View;

    return-object p0
.end method

.method private static createAlphaAnimator(Landroid/view/View;FFJJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;
    .locals 3

    .line 281
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 282
    invoke-virtual {p0, p3, p4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 283
    invoke-virtual {p0, p7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 284
    invoke-virtual {p0, p5, p6}, Landroid/animation/Animator;->setStartDelay(J)V

    return-object p0
.end method

.method private createFadeIn()Landroid/animation/Animator;
    .locals 6

    .line 140
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 141
    iget-object v1, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->answerHintSmall:Landroid/view/View;

    const v2, 0x7f070180

    const v3, 0x7f070181

    const v4, 0x3f4ccccd    # 0.8f

    .line 142
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->createFadeInScaleAndAlpha(Landroid/view/View;IIF)Landroid/animation/Animator;

    move-result-object v1

    .line 141
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->answerHintMid:Landroid/view/View;

    const v3, 0x7f07017b

    const v4, 0x7f07017c

    const/high16 v5, 0x3f000000    # 0.5f

    .line 148
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->createFadeInScaleAndAlpha(Landroid/view/View;IIF)Landroid/animation/Animator;

    move-result-object v2

    .line 147
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->answerHintLarge:Landroid/view/View;

    const v3, 0x7f070179

    const v4, 0x7f07017a

    const v5, 0x3e4ccccd    # 0.2f

    .line 154
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->createFadeInScaleAndAlpha(Landroid/view/View;IIF)Landroid/animation/Animator;

    move-result-object v2

    .line 153
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v0
.end method

.method private createFadeInScaleAndAlpha(Landroid/view/View;IIF)Landroid/animation/Animator;
    .locals 9

    .line 167
    invoke-direct {p0, p2}, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->getDimension(I)F

    move-result v1

    .line 168
    invoke-direct {p0, p2}, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->getDimension(I)F

    move-result v2

    .line 169
    invoke-direct {p0, p3}, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->getDimension(I)F

    move-result v3

    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    const-wide/16 v4, 0xc8

    const-wide/16 v6, 0x17c

    move-object v0, p1

    .line 165
    invoke-static/range {v0 .. v8}, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->createUniformScaleAnimator(Landroid/view/View;FFFJJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object p2

    .line 173
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    const/4 v1, 0x0

    const-wide/16 v3, 0x32

    const-wide/16 v5, 0x154

    move v2, p4

    .line 174
    invoke-static/range {v0 .. v7}, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->createAlphaAnimator(Landroid/view/View;FFJJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object p1

    .line 181
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 182
    invoke-virtual {p3, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object p3
.end method

.method private createFadeOut()Landroid/animation/Animator;
    .locals 9

    .line 187
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 188
    iget-object v2, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->answerHintSmall:Landroid/view/View;

    const v3, 0x7f070180

    const v4, 0x7f070181

    const-wide/16 v5, 0x5a

    const v7, 0x3f4ccccd    # 0.8f

    move-object v1, p0

    .line 189
    invoke-direct/range {v1 .. v7}, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->createFadeOutScaleAndAlpha(Landroid/view/View;IIJF)Landroid/animation/Animator;

    move-result-object v1

    .line 188
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->answerHintMid:Landroid/view/View;

    const v4, 0x7f07017b

    const v5, 0x7f07017c

    const-wide/16 v6, 0x46

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v2, p0

    .line 196
    invoke-direct/range {v2 .. v8}, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->createFadeOutScaleAndAlpha(Landroid/view/View;IIJF)Landroid/animation/Animator;

    move-result-object v2

    .line 195
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->answerHintLarge:Landroid/view/View;

    const v4, 0x7f070179

    const v5, 0x7f07017a

    const-wide/16 v6, 0xa

    const v8, 0x3e4ccccd    # 0.2f

    move-object v2, p0

    .line 203
    invoke-direct/range {v2 .. v8}, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->createFadeOutScaleAndAlpha(Landroid/view/View;IIJF)Landroid/animation/Animator;

    move-result-object v2

    .line 202
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v0
.end method

.method private createFadeOutScaleAndAlpha(Landroid/view/View;IIJF)Landroid/animation/Animator;
    .locals 9

    .line 221
    invoke-direct {p0, p2}, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->getDimension(I)F

    move-result v1

    .line 222
    invoke-direct {p0, p3}, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->getDimension(I)F

    move-result v2

    .line 223
    invoke-direct {p0, p2}, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->getDimension(I)F

    move-result v3

    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    const-wide/16 v4, 0x64

    move-object v0, p1

    move-wide v6, p4

    .line 219
    invoke-static/range {v0 .. v8}, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->createUniformScaleAnimator(Landroid/view/View;FFFJJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object p2

    .line 227
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    const/4 v2, 0x0

    const-wide/16 v3, 0xaa

    const-wide/16 v5, 0x82

    move v1, p6

    .line 228
    invoke-static/range {v0 .. v7}, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->createAlphaAnimator(Landroid/view/View;FFJJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object p1

    .line 235
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 236
    invoke-virtual {p3, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object p3
.end method

.method private static createUniformScaleAnimator(Landroid/view/View;FFFJJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;
    .locals 4

    div-float/2addr p2, p1

    div-float/2addr p3, p1

    .line 268
    sget-object p1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v3, 0x1

    aput p3, v1, v3

    invoke-static {p0, p1, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 269
    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v0, v0, [F

    aput p2, v0, v2

    aput p3, v0, v3

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 270
    invoke-virtual {p1, p4, p5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 271
    invoke-virtual {p0, p4, p5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 272
    invoke-virtual {p1, p8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 273
    invoke-virtual {p0, p8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 274
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 275
    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, p6, p7}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    return-object p2
.end method

.method private getDimension(I)F
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    return p1
.end method


# virtual methods
.method public onAnswered()V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/answer/impl/hint/AnswerHintFactory;->increaseAnsweredCount(Landroid/content/Context;)V

    return-void
.end method

.method public onBounceEnd()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->answerGestureHintAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    const/4 v0, 0x0

    .line 244
    iput-object v0, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->answerGestureHintAnim:Landroid/animation/AnimatorSet;

    .line 245
    iget-object v0, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->answerHintContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onBounceStart()V
    .locals 8

    .line 90
    iget-object v0, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->answerGestureHintAnim:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->answerGestureHintAnim:Landroid/animation/AnimatorSet;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 93
    iget-object v1, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->puck:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 94
    iget-object v1, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->answerHintContainer:Landroid/view/View;

    const/4 v2, 0x1

    aget v3, v0, v2

    int-to-float v3, v3

    const v4, 0x7f070178

    invoke-direct {p0, v4}, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->getDimension(I)F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/view/View;->setY(F)V

    .line 96
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->createFadeIn()Landroid/animation/Animator;

    move-result-object v1

    .line 98
    iget-object v3, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->answerHintContainer:Landroid/view/View;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v2, [F

    const/4 v6, 0x0

    aget v2, v0, v2

    int-to-float v2, v2

    const v7, 0x7f07017d

    .line 102
    invoke-direct {p0, v7}, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->getDimension(I)F

    move-result v7

    sub-float/2addr v2, v7

    aput v2, v5, v6

    .line 99
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 103
    new-instance v3, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v3}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x1f4

    .line 104
    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 106
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->createFadeOut()Landroid/animation/Animator;

    move-result-object v3

    .line 108
    iget-object v4, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->answerGestureHintAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->puckUpDelayMillis:J

    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    .line 109
    iget-object v4, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->answerGestureHintAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 112
    iget-object v2, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->answerGestureHintAnim:Landroid/animation/AnimatorSet;

    .line 113
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->puckUpDelayMillis:J

    iget-wide v5, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->puckUpDurationMillis:J

    add-long/2addr v3, v5

    const-wide/16 v5, 0x82

    sub-long/2addr v3, v5

    .line 114
    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    .line 116
    new-instance v2, Lcom/android/incallui/answer/impl/hint/DotAnswerHint$1;

    invoke-direct {v2, p0, v0}, Lcom/android/incallui/answer/impl/hint/DotAnswerHint$1;-><init>(Lcom/android/incallui/answer/impl/hint/DotAnswerHint;[I)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->answerGestureHintAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 1

    .line 78
    iput-object p3, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->puck:Landroid/view/View;

    const p3, 0x7f0c007d

    const/4 v0, 0x1

    .line 79
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090057

    .line 80
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->answerHintContainer:Landroid/view/View;

    const p2, 0x7f09005a

    .line 81
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->answerHintSmall:Landroid/view/View;

    const p2, 0x7f090059

    .line 82
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->answerHintMid:Landroid/view/View;

    const p2, 0x7f090058

    .line 83
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->answerHintLarge:Landroid/view/View;

    .line 84
    iget-object p1, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->context:Landroid/content/Context;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070182

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const/4 p2, 0x0

    .line 84
    invoke-virtual {p4, p2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method
