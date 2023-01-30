.class Lcom/android/incallui/answer/impl/affordance/SwipeButtonView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeButtonView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;


# direct methods
.method constructor <init>(Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView$2;->this$0:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 86
    iget-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView$2;->this$0:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->access$102(Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method
