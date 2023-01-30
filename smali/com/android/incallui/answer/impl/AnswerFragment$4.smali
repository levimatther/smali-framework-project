.class Lcom/android/incallui/answer/impl/AnswerFragment$4;
.super Ljava/lang/Object;
.source "AnswerFragment.java"

# interfaces
.implements Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/answer/impl/AnswerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/answer/impl/AnswerFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/answer/impl/AnswerFragment;)V
    .locals 0

    .line 499
    iput-object p1, p0, Lcom/android/incallui/answer/impl/AnswerFragment$4;->this$0:Lcom/android/incallui/answer/impl/AnswerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAffordanceFalsingFactor()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getLeftIcon()Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment$4;->this$0:Lcom/android/incallui/answer/impl/AnswerFragment;

    invoke-static {v0}, Lcom/android/incallui/answer/impl/AnswerFragment;->access$500(Lcom/android/incallui/answer/impl/AnswerFragment;)Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    move-result-object v0

    return-object v0
.end method

.method public getLeftPreview()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaxTranslationDistance()F
    .locals 5

    .line 514
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment$4;->this$0:Lcom/android/incallui/answer/impl/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 518
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-double v3, v0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getRightIcon()Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment$4;->this$0:Lcom/android/incallui/answer/impl/AnswerFragment;

    invoke-static {v0}, Lcom/android/incallui/answer/impl/AnswerFragment;->access$700(Lcom/android/incallui/answer/impl/AnswerFragment;)Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    move-result-object v0

    return-object v0
.end method

.method public getRightPreview()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onAnimationToSideEnded(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 506
    iget-object p1, p0, Lcom/android/incallui/answer/impl/AnswerFragment$4;->this$0:Lcom/android/incallui/answer/impl/AnswerFragment;

    invoke-static {p1}, Lcom/android/incallui/answer/impl/AnswerFragment;->access$1000(Lcom/android/incallui/answer/impl/AnswerFragment;)V

    goto :goto_0

    .line 508
    :cond_0
    iget-object p1, p0, Lcom/android/incallui/answer/impl/AnswerFragment$4;->this$0:Lcom/android/incallui/answer/impl/AnswerFragment;

    invoke-static {p1}, Lcom/android/incallui/answer/impl/AnswerFragment;->access$900(Lcom/android/incallui/answer/impl/AnswerFragment;)V

    :goto_0
    return-void
.end method

.method public onAnimationToSideStarted(ZFF)V
    .locals 0

    return-void
.end method

.method public onIconClicked(Z)V
    .locals 3

    .line 529
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment$4;->this$0:Lcom/android/incallui/answer/impl/AnswerFragment;

    invoke-static {v0}, Lcom/android/incallui/answer/impl/AnswerFragment;->access$400(Lcom/android/incallui/answer/impl/AnswerFragment;)Lcom/android/incallui/answer/impl/AffordanceHolderLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/incallui/answer/impl/AffordanceHolderLayout;->startHintAnimation(ZLjava/lang/Runnable;)V

    .line 530
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment$4;->this$0:Lcom/android/incallui/answer/impl/AnswerFragment;

    invoke-static {v0}, Lcom/android/incallui/answer/impl/AnswerFragment;->access$1100(Lcom/android/incallui/answer/impl/AnswerFragment;)Lcom/android/incallui/answer/impl/answermethod/AnswerMethod;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/incallui/answer/impl/AnswerFragment$4;->this$0:Lcom/android/incallui/answer/impl/AnswerFragment;

    .line 533
    invoke-static {p1}, Lcom/android/incallui/answer/impl/AnswerFragment;->access$800(Lcom/android/incallui/answer/impl/AnswerFragment;)Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;

    move-result-object v1

    iget v1, v1, Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;->hintText:I

    invoke-virtual {p1, v1}, Lcom/android/incallui/answer/impl/AnswerFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/incallui/answer/impl/AnswerFragment$4;->this$0:Lcom/android/incallui/answer/impl/AnswerFragment;

    .line 534
    invoke-static {p1}, Lcom/android/incallui/answer/impl/AnswerFragment;->access$600(Lcom/android/incallui/answer/impl/AnswerFragment;)Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;

    move-result-object v1

    iget v1, v1, Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;->hintText:I

    invoke-virtual {p1, v1}, Lcom/android/incallui/answer/impl/AnswerFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 531
    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/incallui/answer/impl/answermethod/AnswerMethod;->setHintText(Ljava/lang/CharSequence;)V

    .line 535
    iget-object p1, p0, Lcom/android/incallui/answer/impl/AnswerFragment$4;->this$0:Lcom/android/incallui/answer/impl/AnswerFragment;

    invoke-static {p1}, Lcom/android/incallui/answer/impl/AnswerFragment;->access$1300(Lcom/android/incallui/answer/impl/AnswerFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment$4;->this$0:Lcom/android/incallui/answer/impl/AnswerFragment;

    invoke-static {v0}, Lcom/android/incallui/answer/impl/AnswerFragment;->access$1200(Lcom/android/incallui/answer/impl/AnswerFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 536
    iget-object p1, p0, Lcom/android/incallui/answer/impl/AnswerFragment$4;->this$0:Lcom/android/incallui/answer/impl/AnswerFragment;

    invoke-static {p1}, Lcom/android/incallui/answer/impl/AnswerFragment;->access$1300(Lcom/android/incallui/answer/impl/AnswerFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment$4;->this$0:Lcom/android/incallui/answer/impl/AnswerFragment;

    invoke-static {v0}, Lcom/android/incallui/answer/impl/AnswerFragment;->access$1200(Lcom/android/incallui/answer/impl/AnswerFragment;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onSwipingAborted()V
    .locals 0

    return-void
.end method

.method public onSwipingStarted(Z)V
    .locals 0

    return-void
.end method
