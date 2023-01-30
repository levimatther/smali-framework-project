.class Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FlingUpDownMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->startSwipeToAnswerBounceAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field firstPass:Z

.field final synthetic this$0:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;


# direct methods
.method constructor <init>(Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;)V
    .locals 0

    .line 717
    iput-object p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$4;->this$0:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x1

    .line 718
    iput-boolean p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$4;->firstPass:Z

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 722
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 723
    iget-object p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$4;->this$0:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;

    invoke-virtual {p1}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$4;->this$0:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;

    .line 724
    invoke-static {p1}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->access$400(Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$4;->this$0:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;

    .line 725
    invoke-static {p1}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->access$500(Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "FlingUpDownMethod.onAnimationEnd"

    const-string v2, "Bounce again."

    .line 728
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 732
    iget-boolean v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$4;->firstPass:Z

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$4;->this$0:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;

    invoke-static {v0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->access$600(Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;)Landroid/animation/Animator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->access$402(Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 734
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$4;->this$0:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;

    invoke-static {v0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->access$400(Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 736
    :cond_0
    iput-boolean p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$4;->firstPass:Z

    .line 737
    iget-object p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$4;->this$0:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;

    invoke-static {p1}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->access$700(Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;)Lcom/android/incallui/answer/impl/hint/AnswerHint;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/incallui/answer/impl/hint/AnswerHint;->onBounceStart()V

    .line 738
    iget-object p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$4;->this$0:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;

    invoke-static {p1}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->access$400(Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_1
    return-void
.end method
