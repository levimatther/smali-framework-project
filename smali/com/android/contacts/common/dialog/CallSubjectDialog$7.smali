.class Lcom/android/contacts/common/dialog/CallSubjectDialog$7;
.super Ljava/lang/Object;
.source "CallSubjectDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/dialog/CallSubjectDialog;->showCallHistory(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

.field final synthetic val$dialogStartingBottom:I

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/android/contacts/common/dialog/CallSubjectDialog;IZ)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    iput p2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->val$dialogStartingBottom:I

    iput-boolean p3, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 452
    iget v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->val$dialogStartingBottom:I

    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->access$800(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 457
    iget-object v2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v2}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->access$800(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/view/View;

    move-result-object v2

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 458
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->access$800(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/view/View;

    move-result-object v0

    .line 459
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 460
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v2, Lcom/android/dialer/animation/AnimUtils;->EASE_OUT_EASE_IN:Landroid/view/animation/Interpolator;

    .line 461
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    .line 462
    invoke-static {v2}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->access$900(Lcom/android/contacts/common/dialog/CallSubjectDialog;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 463
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 466
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->val$show:Z

    if-eqz v0, :cond_1

    .line 468
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->access$200(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v2}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->access$200(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setTranslationY(F)V

    .line 470
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->access$200(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/widget/ListView;

    move-result-object v0

    .line 471
    invoke-virtual {v0}, Landroid/widget/ListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 472
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/animation/AnimUtils;->EASE_OUT_EASE_IN:Landroid/view/animation/Interpolator;

    .line 473
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    .line 474
    invoke-static {v1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->access$900(Lcom/android/contacts/common/dialog/CallSubjectDialog;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/common/dialog/CallSubjectDialog$7$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog$7$1;-><init>(Lcom/android/contacts/common/dialog/CallSubjectDialog$7;)V

    .line 475
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 488
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->access$200(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTranslationY(F)V

    .line 493
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->access$200(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/widget/ListView;

    move-result-object v0

    .line 494
    invoke-virtual {v0}, Landroid/widget/ListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    .line 495
    invoke-static {v1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->access$200(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/animation/AnimUtils;->EASE_OUT_EASE_IN:Landroid/view/animation/Interpolator;

    .line 496
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    .line 497
    invoke-static {v1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->access$900(Lcom/android/contacts/common/dialog/CallSubjectDialog;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/common/dialog/CallSubjectDialog$7$2;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog$7$2;-><init>(Lcom/android/contacts/common/dialog/CallSubjectDialog$7;)V

    .line 498
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 511
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method
