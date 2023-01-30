.class Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler$2;
.super Ljava/lang/Object;
.source "FlingUpDownTouchHandler.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->createProgressAnimator(F)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;


# direct methods
.method constructor <init>(Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler$2;->this$0:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler$2;->this$0:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;->access$200(Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler;F)V

    return-void
.end method
