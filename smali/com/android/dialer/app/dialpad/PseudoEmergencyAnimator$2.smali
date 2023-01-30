.class Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator$2;
.super Ljava/lang/Object;
.source "PseudoEmergencyAnimator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator$2;->this$0:Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator$2;->this$0:Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;

    .line 100
    invoke-static {v0}, Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;->access$000(Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090169

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 105
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator$2$1;

    invoke-direct {v1, p0}, Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator$2$1;-><init>(Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator$2;)V

    const-wide/16 v2, 0x3e8

    .line 106
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 3

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator$2;->this$0:Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;->access$100(Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :goto_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
