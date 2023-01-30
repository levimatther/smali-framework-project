.class Lcom/android/incallui/answer/impl/affordance/SwipeButtonView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeButtonView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->finishAnimation(FLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

.field final synthetic val$mAnimationEndRunnable:Ljava/lang/Runnable;

.field final synthetic val$maxCircleSize:F


# direct methods
.method constructor <init>(Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;Ljava/lang/Runnable;F)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView$5;->this$0:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    iput-object p2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView$5;->val$mAnimationEndRunnable:Ljava/lang/Runnable;

    iput p3, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView$5;->val$maxCircleSize:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 209
    iget-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView$5;->val$mAnimationEndRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 210
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 212
    :cond_0
    iget-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView$5;->this$0:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->access$402(Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;Z)Z

    .line 213
    iget-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView$5;->this$0:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    iget v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView$5;->val$maxCircleSize:F

    invoke-static {p1, v0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->access$502(Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;F)F

    .line 214
    iget-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView$5;->this$0:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    invoke-virtual {p1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->invalidate()V

    return-void
.end method
