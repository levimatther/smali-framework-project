.class Lcom/android/dialershared/bubble/CheckableImageButton$1;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "CheckableImageButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialershared/bubble/CheckableImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialershared/bubble/CheckableImageButton;


# direct methods
.method constructor <init>(Lcom/android/dialershared/bubble/CheckableImageButton;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/dialershared/bubble/CheckableImageButton$1;->this$0:Lcom/android/dialershared/bubble/CheckableImageButton;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 58
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 59
    iget-object p1, p0, Lcom/android/dialershared/bubble/CheckableImageButton$1;->this$0:Lcom/android/dialershared/bubble/CheckableImageButton;

    invoke-virtual {p1}, Lcom/android/dialershared/bubble/CheckableImageButton;->isChecked()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    .line 65
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    const/4 p1, 0x1

    .line 66
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCheckable(Z)V

    .line 67
    iget-object p1, p0, Lcom/android/dialershared/bubble/CheckableImageButton$1;->this$0:Lcom/android/dialershared/bubble/CheckableImageButton;

    invoke-virtual {p1}, Lcom/android/dialershared/bubble/CheckableImageButton;->isChecked()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setChecked(Z)V

    return-void
.end method
