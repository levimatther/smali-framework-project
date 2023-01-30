.class public Lcom/android/dialer/contactsfragment/FastScroller;
.super Landroid/widget/RelativeLayout;
.source "FastScroller.java"


# instance fields
.field private adapter:Lcom/android/dialer/contactsfragment/ContactsAdapter;

.field private container:Landroid/widget/TextView;

.field private dragStarted:Z

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private scrollBar:Landroid/view/View;

.field private final touchTargetWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070156

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/dialer/contactsfragment/FastScroller;->touchTargetWidth:I

    return-void
.end method

.method private getScrolledPercentage(F)F
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/android/dialer/contactsfragment/FastScroller;->scrollBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return v1

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/contactsfragment/FastScroller;->scrollBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/dialer/contactsfragment/FastScroller;->scrollBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/dialer/contactsfragment/FastScroller;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    return p1

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/contactsfragment/FastScroller;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    return p1
.end method

.method private getValueInRange(III)I
    .locals 0

    .line 110
    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 111
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private setContainerAndScrollBarPosition(F)V
    .locals 6

    .line 124
    iget-object v0, p0, Lcom/android/dialer/contactsfragment/FastScroller;->scrollBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 125
    iget-object v1, p0, Lcom/android/dialer/contactsfragment/FastScroller;->container:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    .line 126
    iget-object v2, p0, Lcom/android/dialer/contactsfragment/FastScroller;->scrollBar:Landroid/view/View;

    .line 127
    invoke-virtual {p0}, Lcom/android/dialer/contactsfragment/FastScroller;->getHeight()I

    move-result v3

    sub-int/2addr v3, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    sub-float v4, p1, v4

    float-to-int v4, v4

    const/4 v5, 0x0

    invoke-direct {p0, v5, v3, v4}, Lcom/android/dialer/contactsfragment/FastScroller;->getValueInRange(III)I

    move-result v3

    int-to-float v3, v3

    .line 126
    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 128
    iget-object v2, p0, Lcom/android/dialer/contactsfragment/FastScroller;->container:Landroid/widget/TextView;

    .line 130
    invoke-virtual {p0}, Lcom/android/dialer/contactsfragment/FastScroller;->getHeight()I

    move-result v3

    sub-int/2addr v3, v1

    sub-int/2addr v3, v0

    int-to-float v0, v1

    sub-float/2addr p1, v0

    float-to-int p1, p1

    .line 129
    invoke-direct {p0, v5, v3, p1}, Lcom/android/dialer/contactsfragment/FastScroller;->getValueInRange(III)I

    move-result p1

    int-to-float p1, p1

    .line 128
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setY(F)V

    return-void
.end method

.method private setRecyclerViewPosition(F)V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/android/dialer/contactsfragment/FastScroller;->adapter:Lcom/android/dialer/contactsfragment/ContactsAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/contactsfragment/ContactsAdapter;->getItemCount()I

    move-result v0

    .line 92
    invoke-direct {p0, p1}, Lcom/android/dialer/contactsfragment/FastScroller;->getScrolledPercentage(F)F

    move-result p1

    int-to-float v1, v0

    mul-float/2addr p1, v1

    add-int/lit8 v0, v0, -0x1

    float-to-int p1, p1

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0, v1, v0, p1}, Lcom/android/dialer/contactsfragment/FastScroller;->getValueInRange(III)I

    move-result p1

    .line 94
    iget-object v0, p0, Lcom/android/dialer/contactsfragment/FastScroller;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 95
    iget-object v0, p0, Lcom/android/dialer/contactsfragment/FastScroller;->container:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/dialer/contactsfragment/FastScroller;->adapter:Lcom/android/dialer/contactsfragment/ContactsAdapter;

    invoke-virtual {v1, p1}, Lcom/android/dialer/contactsfragment/ContactsAdapter;->getHeaderString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 52
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f09015d

    .line 53
    invoke-virtual {p0, v0}, Lcom/android/dialer/contactsfragment/FastScroller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/contactsfragment/FastScroller;->container:Landroid/widget/TextView;

    const v0, 0x7f09015e

    .line 54
    invoke-virtual {p0, v0}, Lcom/android/dialer/contactsfragment/FastScroller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/contactsfragment/FastScroller;->scrollBar:Landroid/view/View;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 66
    iget-boolean v0, p0, Lcom/android/dialer/contactsfragment/FastScroller;->dragStarted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/contactsfragment/FastScroller;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/dialer/contactsfragment/FastScroller;->touchTargetWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 67
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 70
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    .line 87
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 82
    :cond_1
    iput-boolean v1, p0, Lcom/android/dialer/contactsfragment/FastScroller;->dragStarted:Z

    .line 83
    iget-object p1, p0, Lcom/android/dialer/contactsfragment/FastScroller;->container:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    iget-object p1, p0, Lcom/android/dialer/contactsfragment/FastScroller;->scrollBar:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    return v2

    .line 72
    :cond_2
    iput-boolean v2, p0, Lcom/android/dialer/contactsfragment/FastScroller;->dragStarted:Z

    .line 73
    iget-object v0, p0, Lcom/android/dialer/contactsfragment/FastScroller;->container:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/android/dialer/contactsfragment/FastScroller;->scrollBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 77
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/dialer/contactsfragment/FastScroller;->setContainerAndScrollBarPosition(F)V

    .line 78
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/dialer/contactsfragment/FastScroller;->setRecyclerViewPosition(F)V

    return v2
.end method

.method setup(Lcom/android/dialer/contactsfragment/ContactsAdapter;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/android/dialer/contactsfragment/FastScroller;->adapter:Lcom/android/dialer/contactsfragment/ContactsAdapter;

    .line 59
    iput-object p2, p0, Lcom/android/dialer/contactsfragment/FastScroller;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 p1, 0x0

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/dialer/contactsfragment/FastScroller;->setVisibility(I)V

    return-void
.end method

.method updateContainerAndScrollBarPosition(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/android/dialer/contactsfragment/FastScroller;->scrollBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    .line 117
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result p1

    int-to-float v0, v0

    int-to-float p1, p1

    .line 118
    invoke-virtual {p0}, Lcom/android/dialer/contactsfragment/FastScroller;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p1, v1

    div-float/2addr v0, p1

    .line 119
    invoke-virtual {p0}, Lcom/android/dialer/contactsfragment/FastScroller;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/android/dialer/contactsfragment/FastScroller;->setContainerAndScrollBarPosition(F)V

    :cond_0
    return-void
.end method
