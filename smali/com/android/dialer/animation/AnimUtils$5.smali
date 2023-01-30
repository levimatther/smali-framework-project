.class final Lcom/android/dialer/animation/AnimUtils$5;
.super Ljava/lang/Object;
.source "AnimUtils.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/animation/AnimUtils;->changeDimensions(Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$deltaHeight:I

.field final synthetic val$deltaWidth:I

.field final synthetic val$oldHeight:I

.field final synthetic val$oldWidth:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;IIII)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/android/dialer/animation/AnimUtils$5;->val$view:Landroid/view/View;

    iput p2, p0, Lcom/android/dialer/animation/AnimUtils$5;->val$deltaWidth:I

    iput p3, p0, Lcom/android/dialer/animation/AnimUtils$5;->val$oldWidth:I

    iput p4, p0, Lcom/android/dialer/animation/AnimUtils$5;->val$deltaHeight:I

    iput p5, p0, Lcom/android/dialer/animation/AnimUtils$5;->val$oldHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 231
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    .line 233
    iget-object v0, p0, Lcom/android/dialer/animation/AnimUtils$5;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/android/dialer/animation/AnimUtils$5;->val$deltaWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/dialer/animation/AnimUtils$5;->val$oldWidth:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 234
    iget-object v0, p0, Lcom/android/dialer/animation/AnimUtils$5;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v1, p0, Lcom/android/dialer/animation/AnimUtils$5;->val$deltaHeight:I

    int-to-float v1, v1

    mul-float/2addr p1, v1

    iget v1, p0, Lcom/android/dialer/animation/AnimUtils$5;->val$oldHeight:I

    int-to-float v1, v1

    add-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 235
    iget-object p1, p0, Lcom/android/dialer/animation/AnimUtils$5;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method
