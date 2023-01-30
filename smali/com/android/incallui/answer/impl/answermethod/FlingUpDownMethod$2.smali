.class Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FlingUpDownMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->setShowIncomingWillDisconnect(Z)V
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

    .line 388
    iput-object p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$2;->this$0:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 391
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 392
    iget-object p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$2;->this$0:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;

    invoke-static {p1}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->access$200(Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 393
    iget-object p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$2;->this$0:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;

    invoke-static {p1}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->access$300(Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
