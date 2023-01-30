.class Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FlingUpDownTouchHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->fling(FIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field canceled:Z

.field final synthetic this$0:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;


# direct methods
.method constructor <init>(Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler$1;->this$0:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 416
    iput-boolean p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler$1;->canceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 421
    iget-object p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler$1;->this$0:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->access$002(Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 422
    iget-boolean p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler$1;->canceled:Z

    if-nez p1, :cond_0

    .line 423
    iget-object p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler$1;->this$0:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;

    invoke-static {p1}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->access$100(Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;)V

    :cond_0
    return-void
.end method
