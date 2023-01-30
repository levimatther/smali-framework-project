.class Lcom/android/incallui/answer/impl/AnswerFragment$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnswerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/answer/impl/AnswerFragment;->animateEntry(Landroid/view/View;)V
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

    .line 1284
    iput-object p1, p0, Lcom/android/incallui/answer/impl/AnswerFragment$8;->this$0:Lcom/android/incallui/answer/impl/AnswerFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1287
    iget-object p1, p0, Lcom/android/incallui/answer/impl/AnswerFragment$8;->this$0:Lcom/android/incallui/answer/impl/AnswerFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/incallui/answer/impl/AnswerFragment;->access$1502(Lcom/android/incallui/answer/impl/AnswerFragment;Z)Z

    return-void
.end method
