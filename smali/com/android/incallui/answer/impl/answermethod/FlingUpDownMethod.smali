.class public Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;
.super Lcom/android/incallui/answer/impl/answermethod/AnswerMethod;
.source "FlingUpDownMethod.java"

# interfaces
.implements Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler$OnProgressChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$VibrateInterpolator;,
        Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$AnimationState;
    }
.end annotation


# static fields
.field private static final ANIMATE_DURATION_LONG_MILLIS:J = 0x5dcL

.field private static final ANIMATE_DURATION_NORMAL_MILLIS:J = 0x535L

.field private static final ANIMATE_DURATION_SHORT_MILLIS:J = 0x29bL

.field private static final BOUNCE_ANIMATION_DELAY:J = 0xa7L

.field private static final HINT_DIP_DP:I = 0x8

.field private static final HINT_JUMP_DP:I = 0x3c

.field private static final HINT_REJECT_FADE_TRANSLATION_Y_DP:I = -0x8

.field private static final HINT_REJECT_SHOW_DURATION_MILLIS:I = 0x7d0

.field private static final HINT_SCALE_RATIO:F = 1.15f

.field private static final ICON_END_CALL_ROTATION_DEGREES:I = 0x87

.field private static final SETTLE_ANIMATION_DURATION_MILLIS:J = 0x64L

.field private static final SWIPE_LERP_PROGRESS_FACTOR:F = 0.5f

.field private static final SWIPE_TO_ANSWER_MAX_TRANSLATION_Y_DP:F = 150.0f

.field private static final SWIPE_TO_DECLINE_FADE_IN_DELAY_MILLIS:J = 0x14dL

.field private static final SWIPE_TO_REJECT_MAX_TRANSLATION_Y_DP:I = 0x18

.field private static final VIBRATION_TIME_MILLIS:J = 0x729L


# instance fields
.field private afterSettleAnimationState:I

.field private animationState:I

.field private answerHint:Lcom/android/incallui/answer/impl/hint/AnswerHint;

.field private contactPhoto:Landroid/graphics/drawable/Drawable;

.field private contactPuckBackground:Landroid/widget/ImageView;

.field private contactPuckContainer:Landroid/view/View;

.field private contactPuckIcon:Landroid/widget/ImageView;

.field private falsingManager:Lcom/android/incallui/answer/impl/classifier/FalsingManager;

.field private incomingDisconnectText:Landroid/view/View;

.field private incomingWillDisconnect:Z

.field private lockBounceAnim:Landroid/animation/Animator;

.field private lockEntryAnim:Landroid/animation/AnimatorSet;

.field private lockHintAnim:Landroid/animation/AnimatorSet;

.field private lockSettleAnim:Landroid/animation/AnimatorSet;

.field private rejectHintHide:Landroid/animation/Animator;

.field private spaceHolder:Landroid/view/View;

.field private swipeProgress:F

.field private swipeToAnswerText:Landroid/widget/TextView;

.field private swipeToRejectText:Landroid/widget/TextView;

.field private touchHandler:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;

.field private vibrationAnimator:Landroid/animation/Animator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/AnswerMethod;-><init>()V

    const/4 v0, 0x0

    .line 141
    iput v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->animationState:I

    .line 142
    iput v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->afterSettleAnimationState:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->performAccept()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->performReject()V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->rejectHintHide:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;)Landroid/view/View;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->incomingDisconnectText:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;)Landroid/view/View;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->spaceHolder:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;)Landroid/animation/Animator;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->lockBounceAnim:Landroid/animation/Animator;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->lockBounceAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->animationState:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;)Landroid/animation/Animator;
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->createBreatheAnimation()Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;)Lcom/android/incallui/answer/impl/hint/AnswerHint;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->answerHint:Lcom/android/incallui/answer/impl/hint/AnswerHint;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;I)I
    .locals 0

    .line 71
    iput p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->afterSettleAnimationState:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;)Landroid/view/View;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckContainer:Landroid/view/View;

    return-object p0
.end method

.method private addVibrationAnimator(Landroid/animation/AnimatorSet;)V
    .locals 3

    .line 1098
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->vibrationAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 1099
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 1104
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckContainer:Landroid/view/View;

    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    .line 1105
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->vibrationAnimator:Landroid/animation/Animator;

    const-wide/16 v1, 0x729

    .line 1107
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1108
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->vibrationAnimator:Landroid/animation/Animator;

    new-instance v1, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$VibrateInterpolator;

    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$VibrateInterpolator;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1110
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->vibrationAnimator:Landroid/animation/Animator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private clearSwipeToAnswerUi()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FlingUpDownMethod.clearSwipeToAnswerUi"

    const-string v2, "Clear swipe animation."

    .line 1049
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1050
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->endAnimation()V

    .line 1051
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->swipeToAnswerText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1052
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private createBreatheAnimation()Landroid/animation/Animator;
    .locals 21

    move-object/from16 v7, p0

    .line 746
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 747
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42280000    # 42.0f

    invoke-static {v0, v1}, Lcom/android/dialer/common/DpUtil;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    .line 748
    iget-object v2, v7, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->swipeToAnswerText:Landroid/widget/TextView;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v5, v4, [F

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v5, v9

    neg-float v0, v0

    const/4 v11, 0x1

    aput v0, v5, v11

    .line 749
    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 751
    new-instance v2, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v2}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v12, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v13, 0x535

    .line 752
    invoke-virtual {v12, v13, v14}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 754
    iget-object v2, v7, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->swipeToAnswerText:Landroid/widget/TextView;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v4, [F

    aput v0, v5, v9

    aput v10, v5, v11

    .line 755
    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 756
    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v15, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 757
    invoke-virtual {v15, v13, v14}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 760
    iget-object v0, v7, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->swipeToRejectText:Landroid/widget/TextView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v11, [F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v9

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 761
    new-instance v0, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;-><init>()V

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x29b

    .line 762
    invoke-virtual {v6, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    const-wide/16 v1, 0x14d

    .line 763
    invoke-virtual {v6, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 766
    iget-object v1, v7, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->swipeToRejectText:Landroid/widget/TextView;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v4, [F

    .line 770
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v0, -0x3f000000    # -8.0f

    invoke-static {v4, v0}, Lcom/android/dialer/common/DpUtil;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    aput v0, v3, v9

    aput v10, v3, v11

    .line 767
    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 772
    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v4, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 773
    invoke-virtual {v4, v13, v14}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 776
    iget-object v0, v7, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->swipeToRejectText:Landroid/widget/TextView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v11, [F

    aput v10, v2, v9

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 777
    new-instance v0, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;-><init>()V

    invoke-virtual {v3, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x29b

    .line 778
    invoke-virtual {v3, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    const v0, 0x3ecccccd    # 0.4f

    .line 781
    invoke-static {v0, v10, v10, v5}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v5

    .line 783
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42280000    # 42.0f

    invoke-static {v0, v1}, Lcom/android/dialer/common/DpUtil;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    .line 784
    iget-object v1, v7, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckContainer:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v13, v11, [F

    neg-float v0, v0

    aput v0, v13, v9

    invoke-static {v1, v2, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 785
    invoke-virtual {v13, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x5dc

    .line 786
    invoke-virtual {v13, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 789
    iget-object v1, v7, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckBackground:Landroid/widget/ImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f880000    # 1.0625f

    const-wide/16 v16, 0x535

    move-object/from16 v0, p0

    move-object/from16 v18, v3

    move v3, v14

    move-object v14, v4

    move-object/from16 v19, v5

    move-wide/from16 v4, v16

    move-object/from16 v20, v6

    move-object/from16 v6, v19

    .line 790
    invoke-direct/range {v0 .. v6}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->createUniformScaleAnimators(Landroid/view/View;FFJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v6

    .line 797
    iget-object v0, v7, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckContainer:Landroid/view/View;

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v11, [F

    aput v10, v2, v9

    .line 798
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 799
    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v9, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x535

    .line 800
    invoke-virtual {v9, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 802
    iget-object v1, v7, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckBackground:Landroid/widget/ImageView;

    new-instance v10, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v10}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    const/high16 v2, 0x3f880000    # 1.0625f

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v4, 0x535

    move-object/from16 v0, p0

    move-object v11, v6

    move-object v6, v10

    .line 803
    invoke-direct/range {v0 .. v6}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->createUniformScaleAnimators(Landroid/view/View;FFJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v0

    .line 812
    invoke-virtual {v8, v12}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    move-object/from16 v2, v18

    .line 813
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 814
    invoke-virtual {v1, v13}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 815
    invoke-virtual {v1, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    const-wide/16 v2, 0xa7

    .line 816
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    .line 820
    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 821
    invoke-virtual {v1, v15}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 822
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    move-object/from16 v1, v20

    .line 823
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 824
    invoke-virtual {v0, v14}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 825
    invoke-virtual {v0, v13}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 828
    invoke-direct {v7, v8}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->addVibrationAnimator(Landroid/animation/AnimatorSet;)V

    return-object v8
.end method

.method private createFadeAnimation(Landroid/view/View;FJ)Landroid/animation/ObjectAnimator;
    .locals 3

    .line 904
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 905
    invoke-virtual {p1, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method private createUniformScaleAnimators(Landroid/view/View;FFJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/animation/PropertyValuesHolder;

    .line 1087
    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v0, [F

    const/4 v4, 0x0

    aput p2, v3, v4

    const/4 v5, 0x1

    aput p3, v3, v5

    .line 1090
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v0, v0, [F

    aput p2, v0, v4

    aput p3, v0, v5

    .line 1091
    invoke-static {v2, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    aput-object p2, v1, v5

    .line 1088
    invoke-static {p1, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 1092
    invoke-virtual {p1, p4, p5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1093
    invoke-virtual {p1, p6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method private endAnimation()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FlingUpDownMethod.endAnimation"

    const-string v2, "End animations."

    .line 1056
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1057
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->lockSettleAnim:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1058
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1059
    iput-object v1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->lockSettleAnim:Landroid/animation/AnimatorSet;

    .line 1061
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->lockBounceAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 1062
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1063
    iput-object v1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->lockBounceAnim:Landroid/animation/Animator;

    .line 1065
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->lockEntryAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 1066
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1067
    iput-object v1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->lockEntryAnim:Landroid/animation/AnimatorSet;

    .line 1069
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->lockHintAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    .line 1070
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1071
    iput-object v1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->lockHintAnim:Landroid/animation/AnimatorSet;

    .line 1073
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->rejectHintHide:Landroid/animation/Animator;

    if-eqz v0, :cond_4

    .line 1074
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1075
    iput-object v1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->rejectHintHide:Landroid/animation/Animator;

    .line 1077
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->vibrationAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_5

    .line 1078
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 1079
    iput-object v1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->vibrationAnimator:Landroid/animation/Animator;

    .line 1081
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->answerHint:Lcom/android/incallui/answer/impl/hint/AnswerHint;

    invoke-interface {v0}, Lcom/android/incallui/answer/impl/hint/AnswerHint;->onBounceEnd()V

    return-void
.end method

.method private static fadeToward(Landroid/view/View;F)V
    .locals 2

    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, p1, v1}, Lcom/android/dialer/common/MathUtil;->lerp(FFF)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private makeRoundedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 356
    invoke-static {p1, p2, p3, p3}, Lcom/android/dialer/util/DrawableConverter;->getRoundedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private static moveTowardX(Landroid/view/View;F)V
    .locals 2

    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, p1, v1}, Lcom/android/dialer/common/MathUtil;->lerp(FFF)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method private static moveTowardY(Landroid/view/View;F)V
    .locals 2

    .line 115
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, p1, v1}, Lcom/android/dialer/common/MathUtil;->lerp(FFF)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private performAccept()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FlingUpDownMethod.performAccept"

    const/4 v2, 0x0

    .line 1114
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1115
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->swipeToAnswerText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1116
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x6

    .line 1119
    invoke-virtual {p0, v0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->setAnimationState(I)V

    .line 1120
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->getParent()Lcom/android/incallui/answer/impl/answermethod/AnswerMethodHolder;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/answer/impl/answermethod/AnswerMethodHolder;->answerFromMethod()V

    return-void
.end method

.method private performReject()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FlingUpDownMethod.performReject"

    const/4 v2, 0x0

    .line 1124
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1125
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->swipeToAnswerText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1126
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x6

    .line 1129
    invoke-virtual {p0, v0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->setAnimationState(I)V

    .line 1130
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->getParent()Lcom/android/incallui/answer/impl/answermethod/AnswerMethodHolder;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/answer/impl/answermethod/AnswerMethodHolder;->rejectFromMethod()V

    return-void
.end method

.method private resetTouchState()V
    .locals 4

    .line 491
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 496
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 497
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 498
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 499
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckBackground:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 500
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 501
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckIcon:Landroid/widget/ImageView;

    .line 502
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0600f2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 501
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 503
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    .line 505
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->getParent()Lcom/android/incallui/answer/impl/answermethod/AnswerMethodHolder;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/answer/impl/answermethod/AnswerMethodHolder;->resetAnswerProgress()V

    .line 506
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->setPuckTouchState()V

    .line 509
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->swipeToAnswerText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 510
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 511
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 512
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->shouldShowPhotoInPuck()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private static rotateToward(Landroid/view/View;F)V
    .locals 2

    .line 127
    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, p1, v1}, Lcom/android/dialer/common/MathUtil;->lerp(FFF)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method private setPuckTouchState()V
    .locals 2

    .line 487
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckBackground:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->touchHandler:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;

    invoke-virtual {v1}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->isTracking()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setActivated(Z)V

    return-void
.end method

.method private shouldShowPhotoInPuck()Z
    .locals 1

    .line 360
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->getParent()Lcom/android/incallui/answer/impl/answermethod/AnswerMethodHolder;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/answer/impl/answermethod/AnswerMethodHolder;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->getParent()Lcom/android/incallui/answer/impl/answermethod/AnswerMethodHolder;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/answer/impl/answermethod/AnswerMethodHolder;->isVideoUpgradeRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showSwipeHint()V
    .locals 1

    const/4 v0, 0x5

    .line 401
    invoke-virtual {p0, v0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->setAnimationState(I)V

    return-void
.end method

.method private startSwipeToAnswerBounceAnimation()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FlingUpDownMethod.startSwipeToAnswerBounceAnimation"

    const-string v2, "Swipe bounce animation."

    .line 700
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 701
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->endAnimation()V

    .line 703
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/util/ViewUtil;->areAnimationsDisabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->swipeToAnswerText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 705
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 706
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckBackground:Landroid/widget/ImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 707
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 708
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->swipeToRejectText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 709
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->swipeToRejectText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    return-void

    .line 713
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->createBreatheAnimation()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->lockBounceAnim:Landroid/animation/Animator;

    .line 715
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->answerHint:Lcom/android/incallui/answer/impl/hint/AnswerHint;

    invoke-interface {v0}, Lcom/android/incallui/answer/impl/hint/AnswerHint;->onBounceStart()V

    .line 716
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->lockBounceAnim:Landroid/animation/Animator;

    new-instance v1, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$4;

    invoke-direct {v1, p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$4;-><init>(Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 742
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->lockBounceAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private startSwipeToAnswerEntryAnimation()V
    .locals 16

    move-object/from16 v7, p0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "FlingUpDownMethod.startSwipeToAnswerEntryAnimation"

    const-string v3, "Swipe entry animation."

    .line 586
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 587
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->endAnimation()V

    .line 589
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, v7, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->lockEntryAnim:Landroid/animation/AnimatorSet;

    .line 590
    iget-object v1, v7, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->swipeToAnswerText:Landroid/widget/TextView;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v4, v3, [F

    .line 594
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x43400000    # 192.0f

    invoke-static {v5, v6}, Lcom/android/dialer/common/DpUtil;->dpToPx(Landroid/content/Context;F)F

    move-result v5

    aput v5, v4, v0

    .line 595
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, -0x3e600000    # -20.0f

    invoke-static {v5, v6}, Lcom/android/dialer/common/DpUtil;->dpToPx(Landroid/content/Context;F)F

    move-result v5

    const/4 v8, 0x1

    aput v5, v4, v8

    .line 591
    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const-wide/16 v1, 0x535

    .line 596
    invoke-virtual {v9, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 597
    new-instance v4, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {v4}, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;-><init>()V

    invoke-virtual {v9, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 599
    iget-object v4, v7, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->swipeToAnswerText:Landroid/widget/TextView;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v10, v3, [F

    .line 603
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v6}, Lcom/android/dialer/common/DpUtil;->dpToPx(Landroid/content/Context;F)F

    move-result v6

    aput v6, v10, v0

    const/4 v6, 0x0

    aput v6, v10, v8

    .line 600
    invoke-static {v4, v5, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 605
    invoke-virtual {v10, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 606
    new-instance v4, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v4}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v9, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 609
    iget-object v4, v7, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->swipeToRejectText:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setAlpha(F)V

    .line 610
    iget-object v4, v7, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->swipeToRejectText:Landroid/widget/TextView;

    new-array v5, v3, [Landroid/animation/PropertyValuesHolder;

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v12, v8, [F

    const/high16 v13, 0x3f800000    # 1.0f

    aput v13, v12, v0

    .line 613
    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    aput-object v11, v5, v0

    sget-object v11, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v12, v3, [F

    .line 616
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->getContext()Landroid/content/Context;

    move-result-object v14

    const/high16 v15, -0x3f000000    # -8.0f

    invoke-static {v14, v15}, Lcom/android/dialer/common/DpUtil;->dpToPx(Landroid/content/Context;F)F

    move-result v14

    aput v14, v12, v0

    aput v6, v12, v8

    .line 614
    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    aput-object v11, v5, v8

    .line 611
    invoke-static {v4, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 618
    new-instance v4, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;

    invoke-direct {v4}, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;-><init>()V

    invoke-virtual {v11, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x29b

    .line 619
    invoke-virtual {v11, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    const-wide/16 v4, 0x14d

    .line 620
    invoke-virtual {v11, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 622
    iget-object v4, v7, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckContainer:Landroid/view/View;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v12, v3, [F

    .line 626
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->getContext()Landroid/content/Context;

    move-result-object v14

    const/high16 v15, 0x43c80000    # 400.0f

    invoke-static {v14, v15}, Lcom/android/dialer/common/DpUtil;->dpToPx(Landroid/content/Context;F)F

    move-result v14

    aput v14, v12, v0

    .line 627
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->getContext()Landroid/content/Context;

    move-result-object v14

    const/high16 v15, -0x3ec00000    # -12.0f

    invoke-static {v14, v15}, Lcom/android/dialer/common/DpUtil;->dpToPx(Landroid/content/Context;F)F

    move-result v14

    aput v14, v12, v8

    .line 623
    invoke-static {v4, v5, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    const-wide/16 v4, 0x5dc

    .line 628
    invoke-virtual {v12, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 630
    invoke-static {v6, v6, v6, v13}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v4

    .line 629
    invoke-virtual {v12, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 633
    iget-object v4, v7, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckContainer:Landroid/view/View;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v3, [F

    .line 637
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v15}, Lcom/android/dialer/common/DpUtil;->dpToPx(Landroid/content/Context;F)F

    move-result v14

    aput v14, v3, v0

    aput v6, v3, v8

    .line 634
    invoke-static {v4, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 639
    invoke-virtual {v8, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 640
    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v8, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 642
    iget-object v1, v7, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckBackground:Landroid/widget/ImageView;

    const v0, 0x3ecccccd    # 0.4f

    .line 648
    invoke-static {v0, v6, v6, v13}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v6

    const v2, 0x3ea8f5c3    # 0.33f

    const v3, 0x3f8ccccd    # 1.1f

    const-wide/16 v4, 0x535

    move-object/from16 v0, p0

    .line 643
    invoke-direct/range {v0 .. v6}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->createUniformScaleAnimators(Landroid/view/View;FFJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v13

    .line 650
    iget-object v1, v7, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckBackground:Landroid/widget/ImageView;

    new-instance v6, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v6}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    const v2, 0x3f8ccccd    # 1.1f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 651
    invoke-direct/range {v0 .. v6}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->createUniformScaleAnimators(Landroid/view/View;FFJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v0

    .line 659
    iget-object v1, v7, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->lockEntryAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 662
    iget-object v1, v7, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->lockEntryAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 664
    iget-object v0, v7, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->lockEntryAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 667
    iget-object v0, v7, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->lockEntryAnim:Landroid/animation/AnimatorSet;

    invoke-direct {v7, v0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->addVibrationAnimator(Landroid/animation/AnimatorSet;)V

    .line 669
    iget-object v0, v7, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->lockEntryAnim:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$3;

    invoke-direct {v1, v7}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$3;-><init>(Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 688
    iget-object v0, v7, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->lockEntryAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private startSwipeToAnswerHintAnimation()V
    .locals 26

    move-object/from16 v7, p0

    .line 910
    iget-object v0, v7, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->rejectHintHide:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 911
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 914
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->endAnimation()V

    .line 915
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->resetTouchState()V

    .line 917
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/util/ViewUtil;->areAnimationsDisabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_1

    .line 918
    invoke-virtual {v7, v8}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->onHintAnimationDone(Z)V

    return-void

    .line 922
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, v7, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->lockHintAnim:Landroid/animation/AnimatorSet;

    .line 923
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42700000    # 60.0f

    invoke-static {v0, v1}, Lcom/android/dialer/common/DpUtil;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    .line 924
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Lcom/android/dialer/common/DpUtil;->dpToPx(Landroid/content/Context;F)F

    move-result v9

    const v1, 0x3e199998    # 0.14999998f

    .line 926
    iget-object v2, v7, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckBackground:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    .line 928
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x10e0000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 930
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 933
    iget-object v3, v7, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckContainer:Landroid/view/View;

    const/4 v11, 0x2

    new-array v4, v11, [Landroid/animation/PropertyValuesHolder;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v12, 0x1

    new-array v6, v12, [F

    const v13, 0x3f733333    # 0.95f

    aput v13, v6, v8

    .line 936
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v4, v8

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v12, [F

    const v13, 0x3f866666    # 1.05f

    aput v13, v6, v8

    .line 937
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v4, v12

    .line 934
    invoke-static {v3, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 938
    invoke-virtual {v13, v12}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 939
    invoke-virtual {v13, v11}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 940
    div-int/lit8 v3, v2, 0x2

    int-to-long v3, v3

    invoke-virtual {v13, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 941
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v13, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 942
    new-instance v5, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$6;

    invoke-direct {v5, v7}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$6;-><init>(Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;)V

    invoke-virtual {v13, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 958
    iget-object v5, v7, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckContainer:Landroid/view/View;

    new-array v6, v11, [Landroid/animation/PropertyValuesHolder;

    sget-object v14, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v15, v12, [F

    const/16 v16, 0x0

    aput v16, v15, v8

    .line 961
    invoke-static {v14, v15}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    aput-object v14, v6, v8

    sget-object v14, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v15, v12, [F

    aput v16, v15, v8

    .line 962
    invoke-static {v14, v15}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    aput-object v14, v6, v12

    .line 959
    invoke-static {v5, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 963
    invoke-virtual {v14, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 964
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v13, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 966
    iget-object v3, v7, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->swipeToAnswerText:Landroid/widget/TextView;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v12, [F

    neg-float v1, v1

    aput v1, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 967
    new-instance v1, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;-><init>()V

    invoke-virtual {v15, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v4, v2

    .line 968
    invoke-virtual {v15, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 970
    iget-object v1, v7, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckContainer:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v12, [F

    neg-float v0, v0

    aput v0, v3, v8

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 971
    new-instance v0, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;-><init>()V

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 972
    invoke-virtual {v6, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 974
    iget-object v1, v7, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckBackground:Landroid/widget/ImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    new-instance v17, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;

    invoke-direct/range {v17 .. v17}, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;-><init>()V

    const v3, 0x3f933333    # 1.15f

    move-object/from16 v0, p0

    move-wide/from16 v18, v4

    move-object/from16 v20, v6

    move-object/from16 v6, v17

    .line 975
    invoke-direct/range {v0 .. v6}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->createUniformScaleAnimators(Landroid/view/View;FFJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v6

    .line 978
    iget-object v0, v7, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->swipeToRejectText:Landroid/widget/TextView;

    new-array v1, v11, [Landroid/animation/PropertyValuesHolder;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v12, [F

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v8

    .line 981
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v8

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v12, [F

    aput v16, v3, v8

    .line 982
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v12

    .line 979
    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    move-wide/from16 v4, v18

    .line 983
    invoke-virtual {v11, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 985
    iget-object v0, v7, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->swipeToRejectText:Landroid/widget/TextView;

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v12, [F

    aput v9, v2, v8

    .line 986
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 987
    new-instance v0, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;-><init>()V

    invoke-virtual {v9, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 988
    invoke-virtual {v9, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 990
    iget-object v0, v7, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->swipeToAnswerText:Landroid/widget/TextView;

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v12, [F

    aput v16, v2, v8

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 991
    new-instance v0, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;-><init>()V

    invoke-virtual {v3, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v1, v10

    .line 992
    invoke-virtual {v3, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 994
    iget-object v0, v7, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckContainer:Landroid/view/View;

    sget-object v10, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    move-object/from16 v17, v3

    new-array v3, v12, [F

    aput v16, v3, v8

    invoke-static {v0, v10, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 995
    new-instance v0, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    .line 996
    invoke-virtual {v10, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 997
    invoke-virtual {v10, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 999
    iget-object v3, v7, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckBackground:Landroid/widget/ImageView;

    const/high16 v18, 0x3f800000    # 1.0f

    new-instance v19, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;

    invoke-direct/range {v19 .. v19}, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;-><init>()V

    const v21, 0x3f933333    # 1.15f

    move-object/from16 v0, p0

    move-wide/from16 v22, v1

    move-object v1, v3

    move/from16 v2, v21

    move-object/from16 v24, v17

    move/from16 v3, v18

    move-object/from16 v25, v6

    move-object/from16 v6, v19

    .line 1000
    invoke-direct/range {v0 .. v6}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->createUniformScaleAnimators(Landroid/view/View;FFJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v0

    .line 1003
    iget-object v1, v7, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->swipeToRejectText:Landroid/widget/TextView;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v12, [F

    aput v16, v3, v8

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1004
    new-instance v2, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {v2}, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-wide/from16 v2, v22

    .line 1005
    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1007
    iget-object v2, v7, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->lockHintAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    move-object/from16 v3, v20

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1008
    iget-object v2, v7, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->lockHintAnim:Landroid/animation/AnimatorSet;

    .line 1009
    invoke-virtual {v2, v15}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 1010
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    move-object/from16 v4, v25

    .line 1011
    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 1012
    invoke-virtual {v2, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 1013
    invoke-virtual {v2, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1014
    iget-object v2, v7, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->lockHintAnim:Landroid/animation/AnimatorSet;

    move-object/from16 v4, v24

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1015
    iget-object v0, v7, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->lockHintAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1017
    iget-object v0, v7, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->swipeToRejectText:Landroid/widget/TextView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v12, [F

    aput v16, v2, v8

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, v7, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->rejectHintHide:Landroid/animation/Animator;

    const-wide/16 v1, 0x7d0

    .line 1018
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1019
    iget-object v0, v7, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->rejectHintHide:Landroid/animation/Animator;

    new-instance v1, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$7;

    invoke-direct {v1, v7}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$7;-><init>(Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1037
    iget-object v0, v7, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->rejectHintHide:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private startSwipeToAnswerSettleAnimation()V
    .locals 15

    .line 834
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->endAnimation()V

    .line 836
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckBackground:Landroid/widget/ImageView;

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/animation/PropertyValuesHolder;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v5, v4, [F

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v5, v6

    .line 839
    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v6

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v4, [F

    aput v7, v5, v6

    .line 840
    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v4

    .line 837
    invoke-static {v0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    .line 841
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 843
    iget-object v5, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckIcon:Landroid/widget/ImageView;

    sget-object v8, Landroid/view/View;->ROTATION:Landroid/util/Property;

    new-array v9, v4, [F

    const/4 v10, 0x0

    aput v10, v9, v6

    invoke-static {v5, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 844
    invoke-virtual {v5, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 846
    iget-object v8, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->swipeToAnswerText:Landroid/widget/TextView;

    .line 847
    invoke-direct {p0, v8, v7, v2, v3}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->createFadeAnimation(Landroid/view/View;FJ)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 849
    iget-object v9, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckContainer:Landroid/view/View;

    .line 850
    invoke-direct {p0, v9, v7, v2, v3}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->createFadeAnimation(Landroid/view/View;FJ)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 852
    iget-object v11, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckBackground:Landroid/widget/ImageView;

    .line 853
    invoke-direct {p0, v11, v7, v2, v3}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->createFadeAnimation(Landroid/view/View;FJ)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 855
    iget-object v12, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckIcon:Landroid/widget/ImageView;

    .line 857
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->shouldShowPhotoInPuck()Z

    move-result v13

    if-eqz v13, :cond_0

    move v7, v10

    .line 856
    :cond_0
    invoke-direct {p0, v12, v7, v2, v3}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->createFadeAnimation(Landroid/view/View;FJ)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 859
    iget-object v12, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckContainer:Landroid/view/View;

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    sget-object v13, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v14, v4, [F

    aput v10, v14, v6

    .line 862
    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    aput-object v13, v1, v6

    sget-object v13, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v14, v4, [F

    aput v10, v14, v6

    .line 863
    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v1, v4

    .line 860
    invoke-static {v12, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 864
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 866
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->lockSettleAnim:Landroid/animation/AnimatorSet;

    .line 868
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 869
    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 870
    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 871
    invoke-virtual {v0, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 872
    invoke-virtual {v0, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 873
    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 874
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 876
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->lockSettleAnim:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$5;

    invoke-direct {v1, p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$5;-><init>(Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 889
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->lockSettleAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private startSwipeToAnswerSwipeAnimation()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FlingUpDownMethod.startSwipeToAnswerSwipeAnimation"

    const-string v2, "Start swipe animation."

    .line 481
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 482
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->resetTouchState()V

    .line 483
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->endAnimation()V

    return-void
.end method

.method private updateAnimationState()V
    .locals 3

    .line 557
    iget v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->animationState:I

    packed-switch v0, :pswitch_data_0

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected animation state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->animationState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "FlingUpDownMethod.updateAnimationState"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 571
    :pswitch_0
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->clearSwipeToAnswerUi()V

    goto :goto_0

    .line 574
    :pswitch_1
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->startSwipeToAnswerHintAnimation()V

    goto :goto_0

    .line 568
    :pswitch_2
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->startSwipeToAnswerSettleAnimation()V

    goto :goto_0

    .line 565
    :pswitch_3
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->startSwipeToAnswerSwipeAnimation()V

    goto :goto_0

    .line 562
    :pswitch_4
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->startSwipeToAnswerBounceAnimation()V

    goto :goto_0

    .line 559
    :pswitch_5
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->startSwipeToAnswerEntryAnimation()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateContactPuck()V
    .locals 4

    .line 328
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 331
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->getParent()Lcom/android/incallui/answer/impl/answermethod/AnswerMethodHolder;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/answer/impl/answermethod/AnswerMethodHolder;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->getParent()Lcom/android/incallui/answer/impl/answermethod/AnswerMethodHolder;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/answer/impl/answermethod/AnswerMethodHolder;->isVideoUpgradeRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckIcon:Landroid/widget/ImageView;

    const v1, 0x7f0801b5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 332
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckIcon:Landroid/widget/ImageView;

    const v1, 0x7f0801f7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 337
    :goto_1
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckBackground:Landroid/widget/ImageView;

    .line 339
    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 341
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->shouldShowPhotoInPuck()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f070064

    goto :goto_2

    :cond_3
    const v1, 0x7f070063

    .line 340
    :goto_2
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 344
    iget-object v1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckBackground:Landroid/widget/ImageView;

    .line 345
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->shouldShowPhotoInPuck()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckBackground:Landroid/widget/ImageView;

    .line 346
    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPhoto:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->makeRoundedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    .line 344
    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 348
    iget-object v1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckBackground:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 349
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 350
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 351
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckIcon:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->shouldShowPhotoInPuck()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    goto :goto_4

    :cond_5
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private updateSwipeTextAndPuckForTouch()V
    .locals 9

    .line 406
    iget v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->swipeProgress:F

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/android/dialer/common/MathUtil;->clamp(FFF)F

    move-result v0

    .line 407
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 411
    :goto_0
    iget-object v5, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->swipeToAnswerText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 412
    iget-object v5, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckIcon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 424
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x41100000    # 9.0f

    mul-float/2addr v5, v6

    sub-float v5, v2, v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 425
    iget-object v6, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->swipeToAnswerText:Landroid/widget/TextView;

    invoke-static {v6, v5}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->fadeToward(Landroid/view/View;F)V

    .line 427
    iget-object v6, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->swipeToRejectText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getAlpha()F

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v6, v7}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->fadeToward(Landroid/view/View;F)V

    .line 429
    iget-object v6, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->incomingDisconnectText:Landroid/view/View;

    iget-boolean v7, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->incomingWillDisconnect:Z

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    invoke-static {v6, v5}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->fadeToward(Landroid/view/View;F)V

    .line 432
    iget-object v5, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->swipeToAnswerText:Landroid/widget/TextView;

    invoke-static {v5, v3}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->moveTowardX(Landroid/view/View;F)V

    .line 433
    iget-object v5, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->swipeToAnswerText:Landroid/widget/TextView;

    invoke-static {v5, v3}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->moveTowardY(Landroid/view/View;F)V

    .line 438
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v4, :cond_2

    const v6, 0x7f06004e

    goto :goto_2

    :cond_2
    const v6, 0x7f060053

    .line 439
    :goto_2
    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float v7, v1, v6

    float-to-int v7, v7

    .line 442
    invoke-static {v5, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    .line 443
    iget-object v7, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckBackground:Landroid/widget/ImageView;

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 444
    iget-object v7, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckBackground:Landroid/widget/ImageView;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 445
    iget-object v7, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckBackground:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    if-nez v4, :cond_4

    .line 448
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->getParent()Lcom/android/incallui/answer/impl/answermethod/AnswerMethodHolder;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/incallui/answer/impl/answermethod/AnswerMethodHolder;->isVideoCall()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->getParent()Lcom/android/incallui/answer/impl/answermethod/AnswerMethodHolder;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/incallui/answer/impl/answermethod/AnswerMethodHolder;->isVideoUpgradeRequest()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    .line 451
    :cond_3
    iget-object v3, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckIcon:Landroid/widget/ImageView;

    const/high16 v5, 0x43070000    # 135.0f

    mul-float/2addr v5, v1

    invoke-static {v3, v5}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->rotateToward(Landroid/view/View;F)V

    goto :goto_4

    .line 449
    :cond_4
    :goto_3
    iget-object v5, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckIcon:Landroid/widget/ImageView;

    invoke-static {v5, v3}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->rotateToward(Landroid/view/View;F)V

    .line 455
    :goto_4
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->shouldShowPhotoInPuck()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 456
    iget-object v3, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckIcon:Landroid/widget/ImageView;

    invoke-static {v3, v1}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->fadeToward(Landroid/view/View;F)V

    :cond_5
    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v1, v3

    .line 458
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 460
    iget-object v3, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckIcon:Landroid/widget/ImageView;

    .line 462
    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0600f2

    invoke-virtual {v3, v5}, Landroid/content/Context;->getColor(I)I

    move-result v3

    sub-float/2addr v2, v1

    mul-float/2addr v2, v6

    float-to-int v1, v2

    .line 461
    invoke-static {v3, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    .line 464
    iget-object v2, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckIcon:Landroid/widget/ImageView;

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    if-eqz v4, :cond_6

    .line 468
    iget-object v1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckContainer:Landroid/view/View;

    neg-float v2, v0

    .line 470
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x43160000    # 150.0f

    invoke-static {v3, v4}, Lcom/android/dialer/common/DpUtil;->dpToPx(Landroid/content/Context;F)F

    move-result v3

    mul-float/2addr v2, v3

    .line 468
    invoke-static {v1, v2}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->moveTowardY(Landroid/view/View;F)V

    goto :goto_5

    .line 472
    :cond_6
    iget-object v1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckContainer:Landroid/view/View;

    neg-float v2, v0

    .line 474
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-static {v3, v4}, Lcom/android/dialer/common/DpUtil;->dpToPx(Landroid/content/Context;F)F

    move-result v3

    mul-float/2addr v2, v3

    .line 472
    invoke-static {v1, v2}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->moveTowardY(Landroid/view/View;F)V

    .line 477
    :goto_5
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->getParent()Lcom/android/incallui/answer/impl/answermethod/AnswerMethodHolder;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/incallui/answer/impl/answermethod/AnswerMethodHolder;->onAnswerProgressUpdate(F)V

    return-void
.end method


# virtual methods
.method getAnimationState()I
    .locals 1

    .line 553
    iget v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->animationState:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 156
    invoke-super {p0, p1}, Lcom/android/incallui/answer/impl/answermethod/AnswerMethod;->onCreate(Landroid/os/Bundle;)V

    .line 157
    new-instance p1, Lcom/android/incallui/answer/impl/classifier/FalsingManager;

    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/incallui/answer/impl/classifier/FalsingManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->falsingManager:Lcom/android/incallui/answer/impl/classifier/FalsingManager;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const p3, 0x7f0c010c

    const/4 v0, 0x0

    .line 191
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0901a8

    .line 193
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckContainer:Landroid/view/View;

    const p3, 0x7f0901a7

    .line 194
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckBackground:Landroid/widget/ImageView;

    const p3, 0x7f0901a9

    .line 195
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckIcon:Landroid/widget/ImageView;

    const p3, 0x7f0901b1

    .line 196
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->swipeToAnswerText:Landroid/widget/TextView;

    const p3, 0x7f0901b2

    .line 197
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->swipeToRejectText:Landroid/widget/TextView;

    const p3, 0x7f0901b4

    .line 198
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->incomingDisconnectText:Landroid/view/View;

    .line 199
    iget-boolean v1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->incomingWillDisconnect:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 200
    iget-object p3, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->incomingDisconnectText:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->incomingWillDisconnect:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {p3, v1}, Landroid/view/View;->setAlpha(F)V

    const p3, 0x7f0901a6

    .line 201
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->spaceHolder:Landroid/view/View;

    .line 202
    iget-boolean v1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->incomingWillDisconnect:Z

    if-eqz v1, :cond_2

    move v0, v2

    :cond_2
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    const p3, 0x7f0901b0

    .line 204
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    new-instance v0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$1;-><init>(Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;)V

    .line 205
    invoke-virtual {p3, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 233
    iput v3, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->swipeProgress:F

    .line 235
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->updateContactPuck()V

    .line 237
    iget-object p3, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->falsingManager:Lcom/android/incallui/answer/impl/classifier/FalsingManager;

    invoke-static {p2, p0, p3}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->attach(Landroid/view/View;Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler$OnProgressChangedListener;Lcom/android/incallui/answer/impl/classifier/FalsingManager;)Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;

    move-result-object p3

    iput-object p3, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->touchHandler:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;

    .line 239
    new-instance v0, Lcom/android/incallui/answer/impl/hint/AnswerHintFactory;

    new-instance p3, Lcom/android/incallui/answer/impl/hint/PawImageLoaderImpl;

    invoke-direct {p3}, Lcom/android/incallui/answer/impl/hint/PawImageLoaderImpl;-><init>()V

    invoke-direct {v0, p3}, Lcom/android/incallui/answer/impl/hint/AnswerHintFactory;-><init>(Lcom/android/incallui/answer/impl/hint/PawImageLoader;)V

    .line 241
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->getContext()Landroid/content/Context;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    const-wide/16 v4, 0xa7

    invoke-virtual/range {v0 .. v5}, Lcom/android/incallui/answer/impl/hint/AnswerHintFactory;->create(Landroid/content/Context;JJ)Lcom/android/incallui/answer/impl/hint/AnswerHint;

    move-result-object p3

    iput-object p3, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->answerHint:Lcom/android/incallui/answer/impl/hint/AnswerHint;

    const v0, 0x7f090181

    .line 244
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->swipeToAnswerText:Landroid/widget/TextView;

    .line 242
    invoke-interface {p3, p1, v0, v1, v2}, Lcom/android/incallui/answer/impl/hint/AnswerHint;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/TextView;)V

    return-object p2
.end method

.method public onDestroyView()V
    .locals 1

    .line 258
    invoke-super {p0}, Lcom/android/incallui/answer/impl/answermethod/AnswerMethod;->onDestroyView()V

    .line 259
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->touchHandler:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->detach()V

    const/4 v0, 0x0

    .line 261
    iput-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->touchHandler:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;

    :cond_0
    return-void
.end method

.method onEntryAnimationDone()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FlingUpDownMethod.onEntryAnimationDone"

    const-string v2, "Swipe entry anim ends."

    .line 693
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 694
    iget v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->animationState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 695
    invoke-virtual {p0, v0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->setAnimationState(I)V

    :cond_0
    return-void
.end method

.method onHintAnimationDone(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 1042
    iget p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->animationState:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    .line 1043
    invoke-virtual {p0, p1}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->setAnimationState(I)V

    :cond_0
    const/4 p1, 0x0

    .line 1045
    iput-object p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->rejectHintHide:Landroid/animation/Animator;

    return-void
.end method

.method public onMoveFinish(Z)V
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->touchHandler:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->setTouchEnabled(Z)V

    .line 295
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->answerHint:Lcom/android/incallui/answer/impl/hint/AnswerHint;

    invoke-interface {v0}, Lcom/android/incallui/answer/impl/hint/AnswerHint;->onAnswered()V

    if-eqz p1, :cond_0

    .line 297
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->performAccept()V

    goto :goto_0

    .line 299
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->performReject()V

    :goto_0
    return-void
.end method

.method public onMoveReset(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 284
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->showSwipeHint()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 286
    invoke-virtual {p0, p1}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->setAnimationState(I)V

    .line 288
    :goto_0
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->resetTouchState()V

    .line 289
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->getParent()Lcom/android/incallui/answer/impl/answermethod/AnswerMethodHolder;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/incallui/answer/impl/answermethod/AnswerMethodHolder;->resetAnswerProgress()V

    return-void
.end method

.method public onProgressChanged(F)V
    .locals 1

    .line 267
    iput p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->swipeProgress:F

    .line 268
    iget p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->animationState:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 269
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->updateSwipeTextAndPuckForTouch()V

    :cond_0
    return-void
.end method

.method onSettleAnimationDone()V
    .locals 2

    .line 894
    iget v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->afterSettleAnimationState:I

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 896
    iput v1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->afterSettleAnimationState:I

    const/4 v1, 0x0

    .line 897
    iput-object v1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->lockSettleAnim:Landroid/animation/AnimatorSet;

    .line 899
    invoke-virtual {p0, v0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->setAnimationState(I)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 162
    invoke-super {p0}, Lcom/android/incallui/answer/impl/answermethod/AnswerMethod;->onStart()V

    .line 163
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->falsingManager:Lcom/android/incallui/answer/impl/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/incallui/answer/impl/classifier/FalsingManager;->onScreenOn()V

    .line 164
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 165
    iget v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->animationState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 172
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->startSwipeToAnswerEntryAnimation()V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 166
    iput v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->swipeProgress:F

    .line 167
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->updateContactPuck()V

    const/4 v0, 0x0

    .line 168
    invoke-virtual {p0, v0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->onMoveReset(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 179
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->endAnimation()V

    .line 180
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->falsingManager:Lcom/android/incallui/answer/impl/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/incallui/answer/impl/classifier/FalsingManager;->onScreenOff()V

    .line 181
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    .line 182
    invoke-virtual {p0, v0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->setAnimationState(I)V

    .line 184
    :cond_0
    invoke-super {p0}, Lcom/android/incallui/answer/impl/answermethod/AnswerMethod;->onStop()V

    return-void
.end method

.method public onTrackingStart()V
    .locals 1

    const/4 v0, 0x3

    .line 275
    invoke-virtual {p0, v0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->setAnimationState(I)V

    return-void
.end method

.method public onTrackingStopped()V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 252
    invoke-super {p0, p1, p2}, Lcom/android/incallui/answer/impl/answermethod/AnswerMethod;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 253
    invoke-virtual {p0, p1}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->setAnimationState(I)V

    return-void
.end method

.method setAnimationState(I)V
    .locals 5

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 517
    iget v1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->animationState:I

    if-ne v1, p1, :cond_0

    return-void

    .line 521
    :cond_0
    iget v1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->animationState:I

    const/4 v2, 0x6

    const/4 v3, 0x0

    const-string v4, "FlingUpDownMethod.setAnimationState"

    if-ne v1, v2, :cond_1

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Animation loop has completed. Cannot switch to new state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v4, p1, v0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 529
    :cond_2
    iget v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->animationState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 530
    iput p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->afterSettleAnimationState:I

    const/4 p1, 0x4

    .line 535
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animation state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 536
    iput p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->animationState:I

    .line 539
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 542
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->animationState:I

    if-ne v0, p1, :cond_4

    .line 543
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->updateAnimationState()V

    goto :goto_0

    .line 545
    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->endAnimation()V

    :cond_5
    :goto_0
    return-void
.end method

.method public setContactPhoto(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPhoto:Landroid/graphics/drawable/Drawable;

    .line 324
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->updateContactPuck()V

    return-void
.end method

.method public setHintText(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    .line 367
    iget-object p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->swipeToAnswerText:Landroid/widget/TextView;

    const v0, 0x7f1100b7

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 368
    iget-object p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->swipeToRejectText:Landroid/widget/TextView;

    const v0, 0x7f1100bb

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->swipeToAnswerText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget-object p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->swipeToRejectText:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setShowIncomingWillDisconnect(Z)V
    .locals 1

    .line 377
    iput-boolean p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->incomingWillDisconnect:Z

    .line 378
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->incomingDisconnectText:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 380
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 381
    iget-object p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->spaceHolder:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 382
    iget-object p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->incomingDisconnectText:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 385
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    .line 386
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$2;-><init>(Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;)V

    .line 387
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_1
    :goto_0
    return-void
.end method

.method public shouldUseFalsing(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 305
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckContainer:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 309
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v0, v2

    .line 310
    iget-object v2, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 311
    iget-object v3, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->contactPuckContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-double v3, v3

    .line 316
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v5, v0

    float-to-double v5, v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p1, v2

    float-to-double v9, p1

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    add-double/2addr v5, v9

    .line 317
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    cmpl-double p1, v5, v2

    if-ltz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
