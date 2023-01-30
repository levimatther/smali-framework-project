.class Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$6;
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
.field final synthetic this$0:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;


# direct methods
.method constructor <init>(Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;)V
    .locals 0

    .line 943
    iput-object p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$6;->this$0:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 952
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 953
    iget-object p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$6;->this$0:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;

    invoke-static {p1}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->access$900(Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$6;->this$0:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;

    invoke-static {v0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->access$900(Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 946
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 947
    iget-object p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$6;->this$0:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;

    invoke-static {p1}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->access$900(Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$6;->this$0:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;

    invoke-static {v0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->access$900(Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method
