.class Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeButtonHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->startHintAnimationPhase1(ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;

.field final synthetic val$onFinishedListener:Ljava/lang/Runnable;

.field final synthetic val$right:Z


# direct methods
.method constructor <init>(Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;Ljava/lang/Runnable;Z)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$2;->this$0:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;

    iput-object p2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$2;->val$onFinishedListener:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$2;->val$right:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 282
    iput-boolean p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$2;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 287
    iget-boolean p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$2;->mCancelled:Z

    if-eqz p1, :cond_0

    .line 288
    iget-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$2;->this$0:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->access$002(Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 289
    iget-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$2;->this$0:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;

    invoke-static {p1, v0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->access$202(Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;Landroid/view/View;)Landroid/view/View;

    .line 290
    iget-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$2;->val$onFinishedListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 291
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 294
    :cond_0
    iget-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$2;->this$0:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;

    iget-boolean v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$2;->val$right:Z

    iget-object v1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$2;->val$onFinishedListener:Ljava/lang/Runnable;

    invoke-static {p1, v0, v1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->access$400(Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;ZLjava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
