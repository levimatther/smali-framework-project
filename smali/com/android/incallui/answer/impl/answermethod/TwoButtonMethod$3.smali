.class Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TwoButtonMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->rejectCall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private canceled:Z

.field final synthetic this$0:Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;


# direct methods
.method constructor <init>(Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod$3;->this$0:Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 229
    iput-boolean p1, p0, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod$3;->canceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 234
    iget-boolean p1, p0, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod$3;->canceled:Z

    if-nez p1, :cond_0

    .line 235
    iget-object p1, p0, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod$3;->this$0:Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;

    invoke-virtual {p1}, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->getParent()Lcom/android/incallui/answer/impl/answermethod/AnswerMethodHolder;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/incallui/answer/impl/answermethod/AnswerMethodHolder;->rejectFromMethod()V

    :cond_0
    return-void
.end method
