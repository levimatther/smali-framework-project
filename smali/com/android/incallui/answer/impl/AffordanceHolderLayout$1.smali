.class Lcom/android/incallui/answer/impl/AffordanceHolderLayout$1;
.super Ljava/lang/Object;
.source "AffordanceHolderLayout.java"

# interfaces
.implements Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/answer/impl/AffordanceHolderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/answer/impl/AffordanceHolderLayout;


# direct methods
.method constructor <init>(Lcom/android/incallui/answer/impl/AffordanceHolderLayout;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/incallui/answer/impl/AffordanceHolderLayout$1;->this$0:Lcom/android/incallui/answer/impl/AffordanceHolderLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAffordanceFalsingFactor()F
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AffordanceHolderLayout$1;->this$0:Lcom/android/incallui/answer/impl/AffordanceHolderLayout;

    invoke-static {v0}, Lcom/android/incallui/answer/impl/AffordanceHolderLayout;->access$000(Lcom/android/incallui/answer/impl/AffordanceHolderLayout;)Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AffordanceHolderLayout$1;->this$0:Lcom/android/incallui/answer/impl/AffordanceHolderLayout;

    invoke-static {v0}, Lcom/android/incallui/answer/impl/AffordanceHolderLayout;->access$000(Lcom/android/incallui/answer/impl/AffordanceHolderLayout;)Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;->getAffordanceFalsingFactor()F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getLeftIcon()Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AffordanceHolderLayout$1;->this$0:Lcom/android/incallui/answer/impl/AffordanceHolderLayout;

    invoke-static {v0}, Lcom/android/incallui/answer/impl/AffordanceHolderLayout;->access$000(Lcom/android/incallui/answer/impl/AffordanceHolderLayout;)Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AffordanceHolderLayout$1;->this$0:Lcom/android/incallui/answer/impl/AffordanceHolderLayout;

    invoke-static {v0}, Lcom/android/incallui/answer/impl/AffordanceHolderLayout;->access$000(Lcom/android/incallui/answer/impl/AffordanceHolderLayout;)Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;->getLeftIcon()Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLeftPreview()Landroid/view/View;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AffordanceHolderLayout$1;->this$0:Lcom/android/incallui/answer/impl/AffordanceHolderLayout;

    invoke-static {v0}, Lcom/android/incallui/answer/impl/AffordanceHolderLayout;->access$000(Lcom/android/incallui/answer/impl/AffordanceHolderLayout;)Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AffordanceHolderLayout$1;->this$0:Lcom/android/incallui/answer/impl/AffordanceHolderLayout;

    invoke-static {v0}, Lcom/android/incallui/answer/impl/AffordanceHolderLayout;->access$000(Lcom/android/incallui/answer/impl/AffordanceHolderLayout;)Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;->getLeftPreview()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaxTranslationDistance()F
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AffordanceHolderLayout$1;->this$0:Lcom/android/incallui/answer/impl/AffordanceHolderLayout;

    invoke-static {v0}, Lcom/android/incallui/answer/impl/AffordanceHolderLayout;->access$000(Lcom/android/incallui/answer/impl/AffordanceHolderLayout;)Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AffordanceHolderLayout$1;->this$0:Lcom/android/incallui/answer/impl/AffordanceHolderLayout;

    invoke-static {v0}, Lcom/android/incallui/answer/impl/AffordanceHolderLayout;->access$000(Lcom/android/incallui/answer/impl/AffordanceHolderLayout;)Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;->getMaxTranslationDistance()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getRightIcon()Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AffordanceHolderLayout$1;->this$0:Lcom/android/incallui/answer/impl/AffordanceHolderLayout;

    invoke-static {v0}, Lcom/android/incallui/answer/impl/AffordanceHolderLayout;->access$000(Lcom/android/incallui/answer/impl/AffordanceHolderLayout;)Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AffordanceHolderLayout$1;->this$0:Lcom/android/incallui/answer/impl/AffordanceHolderLayout;

    invoke-static {v0}, Lcom/android/incallui/answer/impl/AffordanceHolderLayout;->access$000(Lcom/android/incallui/answer/impl/AffordanceHolderLayout;)Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;->getRightIcon()Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRightPreview()Landroid/view/View;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AffordanceHolderLayout$1;->this$0:Lcom/android/incallui/answer/impl/AffordanceHolderLayout;

    invoke-static {v0}, Lcom/android/incallui/answer/impl/AffordanceHolderLayout;->access$000(Lcom/android/incallui/answer/impl/AffordanceHolderLayout;)Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AffordanceHolderLayout$1;->this$0:Lcom/android/incallui/answer/impl/AffordanceHolderLayout;

    invoke-static {v0}, Lcom/android/incallui/answer/impl/AffordanceHolderLayout;->access$000(Lcom/android/incallui/answer/impl/AffordanceHolderLayout;)Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;->getRightPreview()Landroid/view/View;

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAnimationToSideEnded(Z)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AffordanceHolderLayout$1;->this$0:Lcom/android/incallui/answer/impl/AffordanceHolderLayout;

    invoke-static {v0}, Lcom/android/incallui/answer/impl/AffordanceHolderLayout;->access$000(Lcom/android/incallui/answer/impl/AffordanceHolderLayout;)Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AffordanceHolderLayout$1;->this$0:Lcom/android/incallui/answer/impl/AffordanceHolderLayout;

    invoke-static {v0}, Lcom/android/incallui/answer/impl/AffordanceHolderLayout;->access$000(Lcom/android/incallui/answer/impl/AffordanceHolderLayout;)Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;->onAnimationToSideEnded(Z)V

    :cond_0
    return-void
.end method

.method public onAnimationToSideStarted(ZFF)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AffordanceHolderLayout$1;->this$0:Lcom/android/incallui/answer/impl/AffordanceHolderLayout;

    invoke-static {v0}, Lcom/android/incallui/answer/impl/AffordanceHolderLayout;->access$000(Lcom/android/incallui/answer/impl/AffordanceHolderLayout;)Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AffordanceHolderLayout$1;->this$0:Lcom/android/incallui/answer/impl/AffordanceHolderLayout;

    invoke-static {v0}, Lcom/android/incallui/answer/impl/AffordanceHolderLayout;->access$000(Lcom/android/incallui/answer/impl/AffordanceHolderLayout;)Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;->onAnimationToSideStarted(ZFF)V

    :cond_0
    return-void
.end method

.method public onIconClicked(Z)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AffordanceHolderLayout$1;->this$0:Lcom/android/incallui/answer/impl/AffordanceHolderLayout;

    invoke-static {v0}, Lcom/android/incallui/answer/impl/AffordanceHolderLayout;->access$000(Lcom/android/incallui/answer/impl/AffordanceHolderLayout;)Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AffordanceHolderLayout$1;->this$0:Lcom/android/incallui/answer/impl/AffordanceHolderLayout;

    invoke-static {v0}, Lcom/android/incallui/answer/impl/AffordanceHolderLayout;->access$000(Lcom/android/incallui/answer/impl/AffordanceHolderLayout;)Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;->onIconClicked(Z)V

    :cond_0
    return-void
.end method

.method public onSwipingAborted()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AffordanceHolderLayout$1;->this$0:Lcom/android/incallui/answer/impl/AffordanceHolderLayout;

    invoke-static {v0}, Lcom/android/incallui/answer/impl/AffordanceHolderLayout;->access$000(Lcom/android/incallui/answer/impl/AffordanceHolderLayout;)Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AffordanceHolderLayout$1;->this$0:Lcom/android/incallui/answer/impl/AffordanceHolderLayout;

    invoke-static {v0}, Lcom/android/incallui/answer/impl/AffordanceHolderLayout;->access$000(Lcom/android/incallui/answer/impl/AffordanceHolderLayout;)Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;->onSwipingAborted()V

    :cond_0
    return-void
.end method

.method public onSwipingStarted(Z)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AffordanceHolderLayout$1;->this$0:Lcom/android/incallui/answer/impl/AffordanceHolderLayout;

    invoke-static {v0}, Lcom/android/incallui/answer/impl/AffordanceHolderLayout;->access$000(Lcom/android/incallui/answer/impl/AffordanceHolderLayout;)Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AffordanceHolderLayout$1;->this$0:Lcom/android/incallui/answer/impl/AffordanceHolderLayout;

    invoke-static {v0}, Lcom/android/incallui/answer/impl/AffordanceHolderLayout;->access$000(Lcom/android/incallui/answer/impl/AffordanceHolderLayout;)Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;->onSwipingStarted(Z)V

    :cond_0
    return-void
.end method
