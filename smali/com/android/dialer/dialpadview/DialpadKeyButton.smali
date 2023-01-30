.class public Lcom/android/dialer/dialpadview/DialpadKeyButton;
.super Landroid/widget/FrameLayout;
.source "DialpadKeyButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/dialpadview/DialpadKeyButton$OnPressedListener;
    }
.end annotation


# static fields
.field private static final LONG_HOVER_TIMEOUT:I


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mBackupContentDesc:Ljava/lang/CharSequence;

.field private mHoverBounds:Landroid/graphics/RectF;

.field private mLongHoverContentDesc:Ljava/lang/CharSequence;

.field private mLongHoverRunnable:Ljava/lang/Runnable;

.field private mLongHovered:Z

.field private mOnPressedListener:Lcom/android/dialer/dialpadview/DialpadKeyButton$OnPressedListener;

.field private mWasClickable:Z

.field private mWasLongClickable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/dialer/dialpadview/DialpadKeyButton;->LONG_HOVER_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/dialer/dialpadview/DialpadKeyButton;->mHoverBounds:Landroid/graphics/RectF;

    .line 79
    invoke-direct {p0, p1}, Lcom/android/dialer/dialpadview/DialpadKeyButton;->initForAccessibility(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/dialer/dialpadview/DialpadKeyButton;->mHoverBounds:Landroid/graphics/RectF;

    .line 84
    invoke-direct {p0, p1}, Lcom/android/dialer/dialpadview/DialpadKeyButton;->initForAccessibility(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/dialpadview/DialpadKeyButton;Z)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/dialer/dialpadview/DialpadKeyButton;->setLongHovered(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/dialer/dialpadview/DialpadKeyButton;)Ljava/lang/CharSequence;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/dialer/dialpadview/DialpadKeyButton;->mLongHoverContentDesc:Ljava/lang/CharSequence;

    return-object p0
.end method

.method private cancelLongHover()V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/android/dialer/dialpadview/DialpadKeyButton;->mLongHoverRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpadview/DialpadKeyButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x0

    .line 224
    invoke-direct {p0, v0}, Lcom/android/dialer/dialpadview/DialpadKeyButton;->setLongHovered(Z)V

    return-void
.end method

.method private initForAccessibility(Landroid/content/Context;)V
    .locals 1

    const-string v0, "accessibility"

    .line 93
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/android/dialer/dialpadview/DialpadKeyButton;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method private setLongHovered(Z)V
    .locals 1

    .line 207
    iget-boolean v0, p0, Lcom/android/dialer/dialpadview/DialpadKeyButton;->mLongHovered:Z

    if-eq v0, p1, :cond_1

    .line 208
    iput-boolean p1, p0, Lcom/android/dialer/dialpadview/DialpadKeyButton;->mLongHovered:Z

    if-eqz p1, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/android/dialer/dialpadview/DialpadKeyButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/dialpadview/DialpadKeyButton;->mBackupContentDesc:Ljava/lang/CharSequence;

    .line 213
    iget-object p1, p0, Lcom/android/dialer/dialpadview/DialpadKeyButton;->mLongHoverContentDesc:Ljava/lang/CharSequence;

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 215
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/dialpadview/DialpadKeyButton;->mBackupContentDesc:Ljava/lang/CharSequence;

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private simulateClickForAccessibility()V
    .locals 1

    .line 193
    invoke-virtual {p0}, Lcom/android/dialer/dialpadview/DialpadKeyButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 197
    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpadview/DialpadKeyButton;->setPressed(Z)V

    .line 201
    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpadview/DialpadKeyButton;->sendAccessibilityEvent(I)V

    const/4 v0, 0x0

    .line 203
    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpadview/DialpadKeyButton;->setPressed(Z)V

    return-void
.end method


# virtual methods
.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/android/dialer/dialpadview/DialpadKeyButton;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/dialer/dialpadview/DialpadKeyButton;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/dialpadview/DialpadKeyButton;->mHoverBounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    iget-boolean v0, p0, Lcom/android/dialer/dialpadview/DialpadKeyButton;->mLongHovered:Z

    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {p0}, Lcom/android/dialer/dialpadview/DialpadKeyButton;->performLongClick()Z

    goto :goto_0

    .line 173
    :cond_1
    invoke-direct {p0}, Lcom/android/dialer/dialpadview/DialpadKeyButton;->simulateClickForAccessibility()V

    .line 177
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/dialer/dialpadview/DialpadKeyButton;->cancelLongHover()V

    .line 178
    iget-boolean v0, p0, Lcom/android/dialer/dialpadview/DialpadKeyButton;->mWasClickable:Z

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpadview/DialpadKeyButton;->setClickable(Z)V

    .line 179
    iget-boolean v0, p0, Lcom/android/dialer/dialpadview/DialpadKeyButton;->mWasLongClickable:Z

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpadview/DialpadKeyButton;->setLongClickable(Z)V

    goto :goto_1

    .line 149
    :cond_3
    invoke-virtual {p0}, Lcom/android/dialer/dialpadview/DialpadKeyButton;->isClickable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dialer/dialpadview/DialpadKeyButton;->mWasClickable:Z

    .line 150
    invoke-virtual {p0}, Lcom/android/dialer/dialpadview/DialpadKeyButton;->isLongClickable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dialer/dialpadview/DialpadKeyButton;->mWasLongClickable:Z

    if-eqz v0, :cond_5

    .line 151
    iget-object v0, p0, Lcom/android/dialer/dialpadview/DialpadKeyButton;->mLongHoverContentDesc:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    .line 152
    iget-object v0, p0, Lcom/android/dialer/dialpadview/DialpadKeyButton;->mLongHoverRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_4

    .line 153
    new-instance v0, Lcom/android/dialer/dialpadview/DialpadKeyButton$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/dialpadview/DialpadKeyButton$1;-><init>(Lcom/android/dialer/dialpadview/DialpadKeyButton;)V

    iput-object v0, p0, Lcom/android/dialer/dialpadview/DialpadKeyButton;->mLongHoverRunnable:Ljava/lang/Runnable;

    .line 162
    :cond_4
    iget-object v0, p0, Lcom/android/dialer/dialpadview/DialpadKeyButton;->mLongHoverRunnable:Ljava/lang/Runnable;

    sget v1, Lcom/android/dialer/dialpadview/DialpadKeyButton;->LONG_HOVER_TIMEOUT:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/dialer/dialpadview/DialpadKeyButton;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    const/4 v0, 0x0

    .line 165
    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpadview/DialpadKeyButton;->setClickable(Z)V

    .line 166
    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpadview/DialpadKeyButton;->setLongClickable(Z)V

    .line 184
    :cond_6
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 123
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 125
    iget-object p3, p0, Lcom/android/dialer/dialpadview/DialpadKeyButton;->mHoverBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/dialer/dialpadview/DialpadKeyButton;->getPaddingLeft()I

    move-result p4

    int-to-float p4, p4

    iput p4, p3, Landroid/graphics/RectF;->left:F

    .line 126
    iget-object p3, p0, Lcom/android/dialer/dialpadview/DialpadKeyButton;->mHoverBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/dialer/dialpadview/DialpadKeyButton;->getPaddingRight()I

    move-result p4

    sub-int/2addr p1, p4

    int-to-float p1, p1

    iput p1, p3, Landroid/graphics/RectF;->right:F

    .line 127
    iget-object p1, p0, Lcom/android/dialer/dialpadview/DialpadKeyButton;->mHoverBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/dialer/dialpadview/DialpadKeyButton;->getPaddingTop()I

    move-result p3

    int-to-float p3, p3

    iput p3, p1, Landroid/graphics/RectF;->top:F

    .line 128
    iget-object p1, p0, Lcom/android/dialer/dialpadview/DialpadKeyButton;->mHoverBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/dialer/dialpadview/DialpadKeyButton;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p2, p3

    int-to-float p2, p2

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/android/dialer/dialpadview/DialpadKeyButton;->simulateClickForAccessibility()V

    const/4 p1, 0x1

    return p1

    .line 138
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/android/dialer/dialpadview/DialpadKeyButton;->mLongHovered:Z

    if-eqz v0, :cond_0

    .line 107
    iput-object p1, p0, Lcom/android/dialer/dialpadview/DialpadKeyButton;->mBackupContentDesc:Ljava/lang/CharSequence;

    goto :goto_0

    .line 109
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setLongHoverContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 97
    iput-object p1, p0, Lcom/android/dialer/dialpadview/DialpadKeyButton;->mLongHoverContentDesc:Ljava/lang/CharSequence;

    .line 99
    iget-boolean v0, p0, Lcom/android/dialer/dialpadview/DialpadKeyButton;->mLongHovered:Z

    if-eqz v0, :cond_0

    .line 100
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setOnPressedListener(Lcom/android/dialer/dialpadview/DialpadKeyButton$OnPressedListener;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/dialer/dialpadview/DialpadKeyButton;->mOnPressedListener:Lcom/android/dialer/dialpadview/DialpadKeyButton$OnPressedListener;

    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    .line 115
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setPressed(Z)V

    .line 116
    iget-object v0, p0, Lcom/android/dialer/dialpadview/DialpadKeyButton;->mOnPressedListener:Lcom/android/dialer/dialpadview/DialpadKeyButton$OnPressedListener;

    if-eqz v0, :cond_0

    .line 117
    invoke-interface {v0, p0, p1}, Lcom/android/dialer/dialpadview/DialpadKeyButton$OnPressedListener;->onPressed(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method
