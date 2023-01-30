.class public Lcom/android/dialer/app/list/ContentChangedFilter;
.super Landroid/view/View$AccessibilityDelegate;
.source "ContentChangedFilter.java"


# instance fields
.field private mView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/dialer/app/list/ContentChangedFilter;->mView:Landroid/view/View;

    return-void
.end method

.method public static addToParent(Landroid/view/View;)V
    .locals 2

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 43
    new-instance v1, Lcom/android/dialer/app/list/ContentChangedFilter;

    invoke-direct {v1, p0}, Lcom/android/dialer/app/list/ContentChangedFilter;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method


# virtual methods
.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/android/dialer/app/list/ContentChangedFilter;->mView:Landroid/view/View;

    if-ne p2, v0, :cond_0

    .line 50
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 54
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method
