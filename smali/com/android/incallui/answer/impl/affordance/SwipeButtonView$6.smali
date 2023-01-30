.class Lcom/android/incallui/answer/impl/affordance/SwipeButtonView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeButtonView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->setCircleRadius(FZZ)V
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

    .line 321
    iput-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView$6;->this$0:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 324
    iget-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView$6;->this$0:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    invoke-static {p1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->access$600(Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
