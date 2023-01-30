.class Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeButtonHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;


# direct methods
.method constructor <init>(Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$1;->this$0:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 68
    iget-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$1;->this$0:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->access$002(Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 69
    iget-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$1;->this$0:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->access$102(Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;Z)Z

    .line 70
    iget-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$1;->this$0:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;

    invoke-static {p1, v0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->access$202(Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;Landroid/view/View;)Landroid/view/View;

    return-void
.end method
