.class Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeButtonHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->startUnlockHintAnimationPhase2(ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;

.field final synthetic val$onFinishedListener:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;Ljava/lang/Runnable;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$3;->this$0:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;

    iput-object p2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$3;->val$onFinishedListener:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 319
    iget-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$3;->this$0:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->access$002(Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 320
    iget-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$3;->this$0:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;

    invoke-static {p1, v0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->access$202(Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;Landroid/view/View;)Landroid/view/View;

    .line 321
    iget-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$3;->val$onFinishedListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 322
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
