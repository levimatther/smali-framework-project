.class Lcom/android/incallui/answer/impl/affordance/SwipeButtonView$9;
.super Ljava/lang/Object;
.source "SwipeButtonView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

.field final synthetic val$background:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView$9;->this$0:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    iput-object p2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView$9;->val$background:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 451
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 452
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView$9;->val$background:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 453
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView$9;->this$0:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    invoke-virtual {v0, p1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->setImageAlpha(I)V

    return-void
.end method
