.class Lcom/android/incallui/answer/impl/affordance/SwipeButtonView$8;
.super Ljava/lang/Object;
.source "SwipeButtonView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->setImageScale(FZJLandroid/view/animation/Interpolator;)V
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

    .line 379
    iput-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView$8;->this$0:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView$8;->this$0:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->access$802(Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;F)F

    .line 383
    iget-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView$8;->this$0:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    invoke-virtual {p1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->invalidate()V

    return-void
.end method
