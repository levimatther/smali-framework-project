.class Lcom/android/incallui/answer/impl/hint/DotAnswerHint$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DotAnswerHint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->onBounceStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/answer/impl/hint/DotAnswerHint;

.field final synthetic val$puckLocation:[I


# direct methods
.method constructor <init>(Lcom/android/incallui/answer/impl/hint/DotAnswerHint;[I)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint$1;->this$0:Lcom/android/incallui/answer/impl/hint/DotAnswerHint;

    iput-object p2, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint$1;->val$puckLocation:[I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 120
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 121
    iget-object p1, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint$1;->this$0:Lcom/android/incallui/answer/impl/hint/DotAnswerHint;

    invoke-static {p1}, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->access$000(Lcom/android/incallui/answer/impl/hint/DotAnswerHint;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 122
    iget-object p1, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint$1;->this$0:Lcom/android/incallui/answer/impl/hint/DotAnswerHint;

    invoke-static {p1}, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->access$000(Lcom/android/incallui/answer/impl/hint/DotAnswerHint;)Landroid/view/View;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 123
    iget-object p1, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint$1;->this$0:Lcom/android/incallui/answer/impl/hint/DotAnswerHint;

    invoke-static {p1}, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->access$000(Lcom/android/incallui/answer/impl/hint/DotAnswerHint;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 124
    iget-object p1, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint$1;->this$0:Lcom/android/incallui/answer/impl/hint/DotAnswerHint;

    invoke-static {p1}, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->access$100(Lcom/android/incallui/answer/impl/hint/DotAnswerHint;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 125
    iget-object p1, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint$1;->this$0:Lcom/android/incallui/answer/impl/hint/DotAnswerHint;

    invoke-static {p1}, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->access$100(Lcom/android/incallui/answer/impl/hint/DotAnswerHint;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 126
    iget-object p1, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint$1;->this$0:Lcom/android/incallui/answer/impl/hint/DotAnswerHint;

    invoke-static {p1}, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->access$100(Lcom/android/incallui/answer/impl/hint/DotAnswerHint;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 127
    iget-object p1, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint$1;->this$0:Lcom/android/incallui/answer/impl/hint/DotAnswerHint;

    invoke-static {p1}, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->access$200(Lcom/android/incallui/answer/impl/hint/DotAnswerHint;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 128
    iget-object p1, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint$1;->this$0:Lcom/android/incallui/answer/impl/hint/DotAnswerHint;

    invoke-static {p1}, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->access$200(Lcom/android/incallui/answer/impl/hint/DotAnswerHint;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 129
    iget-object p1, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint$1;->this$0:Lcom/android/incallui/answer/impl/hint/DotAnswerHint;

    invoke-static {p1}, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->access$200(Lcom/android/incallui/answer/impl/hint/DotAnswerHint;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 130
    iget-object p1, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint$1;->this$0:Lcom/android/incallui/answer/impl/hint/DotAnswerHint;

    invoke-static {p1}, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->access$400(Lcom/android/incallui/answer/impl/hint/DotAnswerHint;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint$1;->val$puckLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint$1;->this$0:Lcom/android/incallui/answer/impl/hint/DotAnswerHint;

    const v2, 0x7f070178

    invoke-static {v1, v2}, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->access$300(Lcom/android/incallui/answer/impl/hint/DotAnswerHint;I)F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setY(F)V

    .line 131
    iget-object p1, p0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint$1;->this$0:Lcom/android/incallui/answer/impl/hint/DotAnswerHint;

    invoke-static {p1}, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;->access$400(Lcom/android/incallui/answer/impl/hint/DotAnswerHint;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
