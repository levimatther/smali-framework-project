.class Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator$1;
.super Ljava/lang/Object;
.source "PseudoEmergencyAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 61
    iput-object p1, p0, Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator$1;->this$0:Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 65
    :try_start_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 66
    new-instance v1, Landroid/graphics/LightingColorFilter;

    const/high16 v2, -0x1000000

    invoke-direct {v1, v2, v0}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 68
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator$1;->this$0:Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;

    .line 69
    invoke-static {v0}, Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;->access$000(Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090169

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    :goto_0
    return-void
.end method
