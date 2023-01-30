.class public Lcom/android/contacts/common/list/AutoScrollListView;
.super Landroid/widget/ListView;
.source "AutoScrollListView.java"


# static fields
.field private static final PREFERRED_SELECTION_OFFSET_FROM_TOP:F = 0.33f


# instance fields
.field private mRequestedScrollPosition:I

.field private mSmoothScrollRequested:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 33
    iput p1, p0, Lcom/android/contacts/common/list/AutoScrollListView;->mRequestedScrollPosition:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 33
    iput p1, p0, Lcom/android/contacts/common/list/AutoScrollListView;->mRequestedScrollPosition:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 33
    iput p1, p0, Lcom/android/contacts/common/list/AutoScrollListView;->mRequestedScrollPosition:I

    return-void
.end method


# virtual methods
.method protected layoutChildren()V
    .locals 5

    .line 63
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 64
    iget v0, p0, Lcom/android/contacts/common/list/AutoScrollListView;->mRequestedScrollPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 69
    :cond_0
    iput v1, p0, Lcom/android/contacts/common/list/AutoScrollListView;->mRequestedScrollPosition:I

    .line 71
    invoke-virtual {p0}, Lcom/android/contacts/common/list/AutoScrollListView;->getFirstVisiblePosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 72
    invoke-virtual {p0}, Lcom/android/contacts/common/list/AutoScrollListView;->getLastVisiblePosition()I

    move-result v2

    if-lt v0, v1, :cond_1

    if-gt v0, v2, :cond_1

    return-void

    .line 77
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/AutoScrollListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 78
    iget-boolean v4, p0, Lcom/android/contacts/common/list/AutoScrollListView;->mSmoothScrollRequested:Z

    if-nez v4, :cond_2

    .line 79
    invoke-virtual {p0, v0, v3}, Lcom/android/contacts/common/list/AutoScrollListView;->setSelectionFromTop(II)V

    .line 84
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    goto :goto_1

    :cond_2
    sub-int v4, v2, v1

    mul-int/lit8 v4, v4, 0x2

    if-ge v0, v1, :cond_4

    add-int/2addr v4, v0

    .line 93
    invoke-virtual {p0}, Lcom/android/contacts/common/list/AutoScrollListView;->getCount()I

    move-result v2

    if-lt v4, v2, :cond_3

    .line 94
    invoke-virtual {p0}, Lcom/android/contacts/common/list/AutoScrollListView;->getCount()I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    :cond_3
    if-ge v4, v1, :cond_6

    .line 97
    invoke-virtual {p0, v4}, Lcom/android/contacts/common/list/AutoScrollListView;->setSelection(I)V

    .line 98
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    goto :goto_0

    :cond_4
    sub-int v1, v0, v4

    if-gez v1, :cond_5

    const/4 v1, 0x0

    :cond_5
    if-le v1, v2, :cond_6

    .line 106
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/AutoScrollListView;->setSelection(I)V

    .line 107
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 111
    :cond_6
    :goto_0
    invoke-virtual {p0, v0, v3}, Lcom/android/contacts/common/list/AutoScrollListView;->smoothScrollToPositionFromTop(II)V

    :goto_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 117
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 120
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    if-eq p1, p2, :cond_0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x19

    if-ne p1, p2, :cond_1

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/AutoScrollListView;->layoutChildren()V

    :cond_1
    return-void
.end method

.method public requestPositionToScreen(IZ)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/android/contacts/common/list/AutoScrollListView;->mRequestedScrollPosition:I

    .line 57
    iput-boolean p2, p0, Lcom/android/contacts/common/list/AutoScrollListView;->mSmoothScrollRequested:Z

    .line 58
    invoke-virtual {p0}, Lcom/android/contacts/common/list/AutoScrollListView;->requestLayout()V

    return-void
.end method
