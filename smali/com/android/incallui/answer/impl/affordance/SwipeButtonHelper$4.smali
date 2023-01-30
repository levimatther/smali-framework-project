.class Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$4;
.super Ljava/lang/Object;
.source "SwipeButtonHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->getAnimatorToRadius(ZI)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;

.field final synthetic val$right:Z

.field final synthetic val$targetView:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;


# direct methods
.method constructor <init>(Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;Z)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$4;->this$0:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;

    iput-object p2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$4;->val$targetView:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    iput-boolean p3, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$4;->val$right:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 343
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 344
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$4;->val$targetView:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    invoke-virtual {v0, p1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->setCircleRadiusWithoutAnimation(F)V

    .line 345
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$4;->this$0:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;

    invoke-static {v0, p1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->access$500(Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;F)F

    move-result p1

    .line 346
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$4;->this$0:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;

    iget-boolean v1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$4;->val$right:Z

    if-eqz v1, :cond_0

    neg-float p1, p1

    :cond_0
    invoke-static {v0, p1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->access$602(Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;F)F

    .line 347
    iget-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$4;->this$0:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;

    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$4;->val$targetView:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    invoke-static {p1, v0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->access$700(Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;)V

    return-void
.end method
