.class Lcom/android/incallui/answer/impl/AnswerFragment$3;
.super Landroid/view/View$AccessibilityDelegate;
.source "AnswerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/answer/impl/AnswerFragment;
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

    .line 470
    iput-object p1, p0, Lcom/android/incallui/answer/impl/AnswerFragment$3;->this$0:Lcom/android/incallui/answer/impl/AnswerFragment;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 473
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 474
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment$3;->this$0:Lcom/android/incallui/answer/impl/AnswerFragment;

    invoke-static {v0}, Lcom/android/incallui/answer/impl/AnswerFragment;->access$500(Lcom/android/incallui/answer/impl/AnswerFragment;)Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    move-result-object v0

    const/16 v1, 0x10

    if-ne p1, v0, :cond_0

    .line 475
    iget-object p1, p0, Lcom/android/incallui/answer/impl/AnswerFragment$3;->this$0:Lcom/android/incallui/answer/impl/AnswerFragment;

    invoke-static {p1}, Lcom/android/incallui/answer/impl/AnswerFragment;->access$600(Lcom/android/incallui/answer/impl/AnswerFragment;)Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;

    move-result-object v0

    iget v0, v0, Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;->accessibilityLabel:I

    invoke-virtual {p1, v0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 476
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v0, v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_0

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment$3;->this$0:Lcom/android/incallui/answer/impl/AnswerFragment;

    invoke-static {v0}, Lcom/android/incallui/answer/impl/AnswerFragment;->access$700(Lcom/android/incallui/answer/impl/AnswerFragment;)Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 478
    iget-object p1, p0, Lcom/android/incallui/answer/impl/AnswerFragment$3;->this$0:Lcom/android/incallui/answer/impl/AnswerFragment;

    invoke-static {p1}, Lcom/android/incallui/answer/impl/AnswerFragment;->access$800(Lcom/android/incallui/answer/impl/AnswerFragment;)Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;

    move-result-object v0

    iget v0, v0, Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;->accessibilityLabel:I

    invoke-virtual {p1, v0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 479
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v0, v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    const/16 v0, 0x10

    if-ne p2, v0, :cond_1

    .line 486
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment$3;->this$0:Lcom/android/incallui/answer/impl/AnswerFragment;

    invoke-static {v0}, Lcom/android/incallui/answer/impl/AnswerFragment;->access$500(Lcom/android/incallui/answer/impl/AnswerFragment;)Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 487
    iget-object p1, p0, Lcom/android/incallui/answer/impl/AnswerFragment$3;->this$0:Lcom/android/incallui/answer/impl/AnswerFragment;

    invoke-static {p1}, Lcom/android/incallui/answer/impl/AnswerFragment;->access$900(Lcom/android/incallui/answer/impl/AnswerFragment;)V

    return v1

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment$3;->this$0:Lcom/android/incallui/answer/impl/AnswerFragment;

    invoke-static {v0}, Lcom/android/incallui/answer/impl/AnswerFragment;->access$700(Lcom/android/incallui/answer/impl/AnswerFragment;)Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 490
    iget-object p1, p0, Lcom/android/incallui/answer/impl/AnswerFragment$3;->this$0:Lcom/android/incallui/answer/impl/AnswerFragment;

    invoke-static {p1}, Lcom/android/incallui/answer/impl/AnswerFragment;->access$1000(Lcom/android/incallui/answer/impl/AnswerFragment;)V

    return v1

    .line 494
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
