.class public Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;
.super Lcom/android/incallui/answer/impl/answermethod/AnswerMethod;
.source "TwoButtonMethod.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# static fields
.field private static final STATE_HINT_TEXT:Ljava/lang/String; = "hintText"

.field private static final STATE_INCOMING_WILL_DISCONNECT:Ljava/lang/String; = "incomingWillDisconnect"


# instance fields
.field private answerButton:Landroid/view/View;

.field private answerLabel:Landroid/view/View;

.field private buttonClicked:Z

.field private declineButton:Landroid/view/View;

.field private declineLabel:Landroid/view/View;

.field private hintText:Ljava/lang/CharSequence;

.field private hintTextView:Landroid/widget/TextView;

.field private incomingWillDisconnect:Z

.field private touchHandler:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/AnswerMethod;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->answerCall()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->rejectCall()V

    return-void
.end method

.method private answerCall()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 197
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 198
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 199
    new-instance v1, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod$2;-><init>(Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 215
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 216
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->createViewHideAnimation()Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 217
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createViewHideAnimation()Landroid/animation/Animator;
    .locals 9

    .line 250
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->answerButton:Landroid/view/View;

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/animation/PropertyValuesHolder;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v5, v4, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 253
    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v6

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v4, [F

    aput v7, v5, v6

    .line 254
    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v4

    .line 251
    invoke-static {v0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 256
    iget-object v2, p0, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->declineButton:Landroid/view/View;

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v4, [F

    aput v7, v5, v6

    .line 259
    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v1, v6

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v4, [F

    aput v7, v5, v6

    .line 260
    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v1, v4

    .line 257
    invoke-static {v2, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 262
    iget-object v2, p0, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->answerLabel:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v4, [F

    aput v7, v5, v6

    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 264
    iget-object v3, p0, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->declineLabel:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v4, [F

    aput v7, v8, v6

    invoke-static {v3, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 266
    iget-object v5, p0, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->hintTextView:Landroid/widget/TextView;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v4, [F

    aput v7, v4, v6

    invoke-static {v5, v8, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 268
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 270
    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 271
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 272
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 273
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 274
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v5
.end method

.method private rejectCall()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 221
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 222
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 223
    new-instance v1, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod$3;

    invoke-direct {v1, p0}, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod$3;-><init>(Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 239
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 240
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->createViewHideAnimation()Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 241
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        -0x40800000    # -1.0f
    .end array-data
.end method

.method private updateHintText()V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->hintTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/dialer/compat/ActivityCompat;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 169
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->hintText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->buttonClicked:Z

    if-nez v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->hintTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->hintText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->hintTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 174
    :cond_2
    iget-boolean v0, p0, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->incomingWillDisconnect:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->buttonClicked:Z

    if-nez v0, :cond_3

    .line 175
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->hintTextView:Landroid/widget/TextView;

    const v2, 0x7f1100bd

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 176
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->hintTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 178
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->hintTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_1
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 246
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->getParent()Lcom/android/incallui/answer/impl/answermethod/AnswerMethodHolder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {v0, p1}, Lcom/android/incallui/answer/impl/answermethod/AnswerMethodHolder;->onAnswerProgressUpdate(F)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->answerButton:Landroid/view/View;

    const/4 v1, 0x0

    const-string v2, "TwoButtonMethod.onClick"

    if-ne p1, v0, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->answerCall()V

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Call answered"

    .line 186
    invoke-static {v2, v0, p1}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->declineButton:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 188
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->rejectCall()V

    new-array p1, v1, [Ljava/lang/Object;

    const-string/jumbo v0, "two_buttonMethod Call rejected"

    .line 189
    invoke-static {v2, v0, p1}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 191
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown click from view: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/common/Assert;->fail(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    .line 193
    iput-boolean p1, p0, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->buttonClicked:Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Lcom/android/incallui/answer/impl/answermethod/AnswerMethod;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "incomingWillDisconnect"

    .line 66
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->incomingWillDisconnect:Z

    const-string v0, "hintText"

    .line 67
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->hintText:Ljava/lang/CharSequence;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0110

    const/4 v0, 0x0

    .line 82
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09031b

    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->hintTextView:Landroid/widget/TextView;

    .line 85
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->updateHintText()V

    const p2, 0x7f090317

    .line 87
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->answerButton:Landroid/view/View;

    const p2, 0x7f090318

    .line 88
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->answerLabel:Landroid/view/View;

    const p2, 0x7f090319

    .line 89
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->declineButton:Landroid/view/View;

    const p2, 0x7f09031a

    .line 90
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->declineLabel:Landroid/view/View;

    .line 99
    iget-object p2, p0, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->answerButton:Landroid/view/View;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iget-object p2, p0, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->answerLabel:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 101
    iget-object p2, p0, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->declineButton:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 102
    iget-object p2, p0, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->declineLabel:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 106
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/incallui/util/AccessibilityUtil;->isTouchExplorationEnabled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 108
    new-instance p2, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod$1;

    invoke-direct {p2, p0}, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod$1;-><init>(Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;)V

    const/4 p3, 0x0

    .line 109
    invoke-static {p1, p2, p3}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->attach(Landroid/view/View;Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler$OnProgressChangedListener;Lcom/android/incallui/answer/impl/classifier/FalsingManager;)Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->touchHandler:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;

    .line 139
    invoke-virtual {p2, v0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->setFlingEnabled(Z)V

    :cond_0
    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 146
    invoke-super {p0}, Lcom/android/incallui/answer/impl/answermethod/AnswerMethod;->onDestroyView()V

    .line 147
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->touchHandler:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->detach()V

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->touchHandler:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 73
    invoke-super {p0, p1}, Lcom/android/incallui/answer/impl/answermethod/AnswerMethod;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 74
    iget-boolean v0, p0, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->incomingWillDisconnect:Z

    const-string v1, "incomingWillDisconnect"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 75
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->hintText:Ljava/lang/CharSequence;

    const-string v1, "hintText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setHintText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->hintText:Ljava/lang/CharSequence;

    .line 156
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->updateHintText()V

    return-void
.end method

.method public setShowIncomingWillDisconnect(Z)V
    .locals 0

    .line 161
    iput-boolean p1, p0, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->incomingWillDisconnect:Z

    .line 162
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->updateHintText()V

    return-void
.end method
