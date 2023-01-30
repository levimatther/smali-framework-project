.class Lcom/android/dialershared/bubble/Bubble$2;
.super Ljava/lang/Object;
.source "Bubble.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialershared/bubble/Bubble;->primaryButtonClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialershared/bubble/Bubble;

.field final synthetic val$expandedView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/dialershared/bubble/Bubble;Landroid/view/View;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/android/dialershared/bubble/Bubble$2;->this$0:Lcom/android/dialershared/bubble/Bubble;

    iput-object p2, p0, Lcom/android/dialershared/bubble/Bubble$2;->val$expandedView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 436
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble$2;->val$expandedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 437
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble$2;->val$expandedView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/dialershared/bubble/Bubble$2;->this$0:Lcom/android/dialershared/bubble/Bubble;

    .line 438
    invoke-static {v1}, Lcom/android/dialershared/bubble/Bubble;->access$000(Lcom/android/dialershared/bubble/Bubble;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/dialershared/bubble/Bubble$2;->val$expandedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/dialershared/bubble/Bubble$2;->val$expandedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    :goto_0
    int-to-float v1, v1

    .line 437
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 439
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble$2;->val$expandedView:Landroid/view/View;

    .line 440
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;-><init>()V

    .line 441
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 442
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    return v0
.end method
