.class final Lcom/android/dialer/animation/AnimUtils$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/animation/AnimUtils;->fadeOut(Landroid/view/View;ILcom/android/dialer/animation/AnimUtils$AnimationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/android/dialer/animation/AnimUtils$AnimationCallback;

.field final synthetic val$fadeOut:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/android/dialer/animation/AnimUtils$AnimationCallback;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/android/dialer/animation/AnimUtils$1;->val$fadeOut:Landroid/view/View;

    iput-object p2, p0, Lcom/android/dialer/animation/AnimUtils$1;->val$callback:Lcom/android/dialer/animation/AnimUtils$AnimationCallback;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 65
    iget-object p1, p0, Lcom/android/dialer/animation/AnimUtils$1;->val$fadeOut:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 66
    iget-object p1, p0, Lcom/android/dialer/animation/AnimUtils$1;->val$fadeOut:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 67
    iget-object p1, p0, Lcom/android/dialer/animation/AnimUtils$1;->val$callback:Lcom/android/dialer/animation/AnimUtils$AnimationCallback;

    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p1}, Lcom/android/dialer/animation/AnimUtils$AnimationCallback;->onAnimationCancel()V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 57
    iget-object p1, p0, Lcom/android/dialer/animation/AnimUtils$1;->val$fadeOut:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 58
    iget-object p1, p0, Lcom/android/dialer/animation/AnimUtils$1;->val$callback:Lcom/android/dialer/animation/AnimUtils$AnimationCallback;

    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p1}, Lcom/android/dialer/animation/AnimUtils$AnimationCallback;->onAnimationEnd()V

    :cond_0
    return-void
.end method
