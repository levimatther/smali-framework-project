.class Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FlingUpDownMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->startSwipeToAnswerHintAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private canceled:Z

.field final synthetic this$0:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;


# direct methods
.method constructor <init>(Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;)V
    .locals 0

    .line 1020
    iput-object p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$7;->this$0:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1026
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    const/4 p1, 0x1

    .line 1027
    iput-boolean p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$7;->canceled:Z

    .line 1028
    iget-object p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$7;->this$0:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->access$1002(Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;Landroid/animation/Animator;)Landroid/animation/Animator;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1033
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1034
    iget-object p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$7;->this$0:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;

    iget-boolean v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$7;->canceled:Z

    invoke-virtual {p1, v0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->onHintAnimationDone(Z)V

    return-void
.end method
