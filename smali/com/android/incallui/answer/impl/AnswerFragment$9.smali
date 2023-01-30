.class Lcom/android/incallui/answer/impl/AnswerFragment$9;
.super Ljava/lang/Object;
.source "AnswerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/answer/impl/AnswerFragment;->showMessageMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/answer/impl/AnswerFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/answer/impl/AnswerFragment;)V
    .locals 0

    .line 1360
    iput-object p1, p0, Lcom/android/incallui/answer/impl/AnswerFragment$9;->this$0:Lcom/android/incallui/answer/impl/AnswerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1363
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment$9;->this$0:Lcom/android/incallui/answer/impl/AnswerFragment;

    invoke-static {v0}, Lcom/android/incallui/answer/impl/AnswerFragment;->access$400(Lcom/android/incallui/answer/impl/AnswerFragment;)Lcom/android/incallui/answer/impl/AffordanceHolderLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/answer/impl/AffordanceHolderLayout;->reset(Z)V

    .line 1364
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment$9;->this$0:Lcom/android/incallui/answer/impl/AnswerFragment;

    invoke-static {v0}, Lcom/android/incallui/answer/impl/AnswerFragment;->access$500(Lcom/android/incallui/answer/impl/AnswerFragment;)Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
