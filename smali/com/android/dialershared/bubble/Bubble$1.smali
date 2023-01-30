.class Lcom/android/dialershared/bubble/Bubble$1;
.super Ljava/lang/Object;
.source "Bubble.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialershared/bubble/Bubble;->lambda$showText$2(Ljava/lang/CharSequence;Lcom/android/dialershared/bubble/ChangeOnScreenBounds;Landroid/transition/TransitionValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialershared/bubble/Bubble;

.field final synthetic val$primaryButton:Landroid/widget/ViewAnimator;

.field final synthetic val$startValues:Landroid/transition/TransitionValues;

.field final synthetic val$transition:Lcom/android/dialershared/bubble/ChangeOnScreenBounds;


# direct methods
.method constructor <init>(Lcom/android/dialershared/bubble/Bubble;Landroid/widget/ViewAnimator;Lcom/android/dialershared/bubble/ChangeOnScreenBounds;Landroid/transition/TransitionValues;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/android/dialershared/bubble/Bubble$1;->this$0:Lcom/android/dialershared/bubble/Bubble;

    iput-object p2, p0, Lcom/android/dialershared/bubble/Bubble$1;->val$primaryButton:Landroid/widget/ViewAnimator;

    iput-object p3, p0, Lcom/android/dialershared/bubble/Bubble$1;->val$transition:Lcom/android/dialershared/bubble/ChangeOnScreenBounds;

    iput-object p4, p0, Lcom/android/dialershared/bubble/Bubble$1;->val$startValues:Landroid/transition/TransitionValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    .line 353
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble$1;->val$primaryButton:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 356
    new-instance v0, Landroid/transition/TransitionValues;

    invoke-direct {v0}, Landroid/transition/TransitionValues;-><init>()V

    .line 357
    iget-object v1, p0, Lcom/android/dialershared/bubble/Bubble$1;->val$primaryButton:Landroid/widget/ViewAnimator;

    iput-object v1, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 358
    iget-object v1, p0, Lcom/android/dialershared/bubble/Bubble$1;->val$transition:Lcom/android/dialershared/bubble/ChangeOnScreenBounds;

    iget-object v2, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/dialershared/bubble/ChangeOnScreenBounds;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 359
    iget-object v1, p0, Lcom/android/dialershared/bubble/Bubble$1;->val$transition:Lcom/android/dialershared/bubble/ChangeOnScreenBounds;

    invoke-virtual {v1, v0}, Lcom/android/dialershared/bubble/ChangeOnScreenBounds;->captureEndValues(Landroid/transition/TransitionValues;)V

    .line 362
    iget-object v1, p0, Lcom/android/dialershared/bubble/Bubble$1;->val$transition:Lcom/android/dialershared/bubble/ChangeOnScreenBounds;

    iget-object v2, p0, Lcom/android/dialershared/bubble/Bubble$1;->val$primaryButton:Landroid/widget/ViewAnimator;

    iget-object v3, p0, Lcom/android/dialershared/bubble/Bubble$1;->val$startValues:Landroid/transition/TransitionValues;

    .line 363
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/dialershared/bubble/ChangeOnScreenBounds;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v0

    .line 366
    iget-object v1, p0, Lcom/android/dialershared/bubble/Bubble$1;->this$0:Lcom/android/dialershared/bubble/Bubble;

    .line 367
    invoke-static {v1}, Lcom/android/dialershared/bubble/Bubble;->access$600(Lcom/android/dialershared/bubble/Bubble;)Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->getPrimaryText()Landroid/widget/TextView;

    move-result-object v1

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 369
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 370
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 371
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return v5
.end method
