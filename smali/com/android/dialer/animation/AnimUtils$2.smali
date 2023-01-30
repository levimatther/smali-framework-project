.class final Lcom/android/dialer/animation/AnimUtils$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/animation/AnimUtils;->fadeIn(Landroid/view/View;IILcom/android/dialer/animation/AnimUtils$AnimationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/android/dialer/animation/AnimUtils$AnimationCallback;

.field final synthetic val$fadeIn:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/android/dialer/animation/AnimUtils$AnimationCallback;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/android/dialer/animation/AnimUtils$2;->val$fadeIn:Landroid/view/View;

    iput-object p2, p0, Lcom/android/dialer/animation/AnimUtils$2;->val$callback:Lcom/android/dialer/animation/AnimUtils$AnimationCallback;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 101
    iget-object p1, p0, Lcom/android/dialer/animation/AnimUtils$2;->val$fadeIn:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 102
    iget-object p1, p0, Lcom/android/dialer/animation/AnimUtils$2;->val$callback:Lcom/android/dialer/animation/AnimUtils$AnimationCallback;

    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p1}, Lcom/android/dialer/animation/AnimUtils$AnimationCallback;->onAnimationCancel()V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 109
    iget-object p1, p0, Lcom/android/dialer/animation/AnimUtils$2;->val$callback:Lcom/android/dialer/animation/AnimUtils$AnimationCallback;

    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p1}, Lcom/android/dialer/animation/AnimUtils$AnimationCallback;->onAnimationEnd()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 96
    iget-object p1, p0, Lcom/android/dialer/animation/AnimUtils$2;->val$fadeIn:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
