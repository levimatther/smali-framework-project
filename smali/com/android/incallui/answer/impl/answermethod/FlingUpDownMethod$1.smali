.class Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "FlingUpDownMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;


# direct methods
.method constructor <init>(Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$1;->this$0:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 209
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 210
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$1;->this$0:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;

    const v1, 0x7f1100ac

    .line 213
    invoke-virtual {v0, v1}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090006

    invoke-direct {p1, v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 210
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 214
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$1;->this$0:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;

    const v1, 0x7f1100b1

    .line 217
    invoke-virtual {v0, v1}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090008

    invoke-direct {p1, v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 214
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    const/4 v0, 0x1

    const v1, 0x7f090006

    if-ne p2, v1, :cond_0

    .line 223
    iget-object p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$1;->this$0:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;

    invoke-static {p1}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->access$000(Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;)V

    return v0

    :cond_0
    const v1, 0x7f090008

    if-ne p2, v1, :cond_1

    .line 226
    iget-object p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$1;->this$0:Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;

    invoke-static {p1}, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;->access$100(Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;)V

    return v0

    .line 229
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
