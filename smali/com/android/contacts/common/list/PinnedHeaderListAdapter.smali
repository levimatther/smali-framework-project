.class public abstract Lcom/android/contacts/common/list/PinnedHeaderListAdapter;
.super Lcom/android/common/widget/CompositeCursorAdapter;
.source "PinnedHeaderListAdapter.java"

# interfaces
.implements Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;


# static fields
.field public static final PARTITION_HEADER_TYPE:I


# instance fields
.field private mHeaderVisibility:[Z

.field private mPinnedPartitionHeadersEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public configurePinnedHeaders(Lcom/android/contacts/common/list/PinnedHeaderListView;)V
    .locals 10

    .line 86
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->getPinnedPartitionHeadersEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->getPartitionCount()I

    move-result v0

    .line 93
    iget-object v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    if-eqz v1, :cond_1

    array-length v1, v1

    if-eq v1, v0, :cond_2

    .line 94
    :cond_1
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    :cond_2
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_4

    .line 97
    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->isPinnedPartitionHeaderVisible(I)Z

    move-result v4

    .line 98
    iget-object v5, p0, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    aput-boolean v4, v5, v2

    if-nez v4, :cond_3

    .line 100
    invoke-virtual {p1, v2, v3}, Lcom/android/contacts/common/list/PinnedHeaderListView;->setHeaderInvisible(IZ)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    :cond_4
    invoke-virtual {p1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v2

    const/4 v4, -0x1

    move v5, v1

    move v6, v5

    move v7, v4

    :goto_1
    if-ge v5, v0, :cond_7

    .line 110
    iget-object v8, p0, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    aget-boolean v8, v8, v5

    if-eqz v8, :cond_6

    .line 111
    invoke-virtual {p1, v6}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getPositionAt(I)I

    move-result v8

    sub-int/2addr v8, v2

    .line 112
    invoke-virtual {p0, v8}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->getPartitionForPosition(I)I

    move-result v8

    if-le v5, v8, :cond_5

    goto :goto_2

    .line 117
    :cond_5
    invoke-virtual {p1, v5, v6, v1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->setHeaderPinnedAtTop(IIZ)V

    .line 118
    invoke-virtual {p1, v5}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getPinnedHeaderHeight(I)I

    move-result v7

    add-int/2addr v6, v7

    move v7, v5

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 126
    :cond_7
    :goto_2
    invoke-virtual {p1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getHeight()I

    move-result v5

    move v6, v0

    move v8, v1

    :cond_8
    :goto_3
    add-int/2addr v0, v4

    if-le v0, v7, :cond_b

    .line 128
    iget-object v9, p0, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    aget-boolean v9, v9, v0

    if-eqz v9, :cond_8

    sub-int v9, v5, v8

    .line 129
    invoke-virtual {p1, v9}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getPositionAt(I)I

    move-result v9

    sub-int/2addr v9, v2

    if-gez v9, :cond_9

    goto :goto_4

    :cond_9
    add-int/lit8 v9, v9, -0x1

    .line 134
    invoke-virtual {p0, v9}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->getPartitionForPosition(I)I

    move-result v9

    if-eq v9, v4, :cond_b

    if-gt v0, v9, :cond_a

    goto :goto_4

    .line 139
    :cond_a
    invoke-virtual {p1, v0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getPinnedHeaderHeight(I)I

    move-result v6

    add-int/2addr v8, v6

    sub-int v6, v5, v8

    .line 142
    invoke-virtual {p1, v0, v6, v1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->setHeaderPinnedAtBottom(IIZ)V

    move v6, v0

    goto :goto_3

    :cond_b
    :goto_4
    add-int/2addr v7, v3

    :goto_5
    if-ge v7, v6, :cond_d

    .line 149
    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    aget-boolean v0, v0, v7

    if-eqz v0, :cond_c

    .line 150
    invoke-virtual {p0, v7}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->isPartitionEmpty(I)Z

    move-result v0

    invoke-virtual {p1, v7, v0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->setHeaderInvisible(IZ)V

    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_d
    return-void
.end method

.method public getPinnedHeaderCount()I
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->mPinnedPartitionHeadersEnabled:Z

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->getPartitionCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->hasHeader(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    .line 65
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    if-nez p2, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0, p2, p1, v1, p3}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    .line 72
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 73
    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 74
    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 76
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V

    .line 77
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutDirection(I)V

    return-object p2

    :cond_2
    return-object v1
.end method

.method public getPinnedPartitionHeadersEnabled()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->mPinnedPartitionHeadersEnabled:Z

    return v0
.end method

.method public getScrollPositionForHeader(I)I
    .locals 0

    .line 157
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->getPositionForPartition(I)I

    move-result p1

    return p1
.end method

.method protected isPinnedPartitionHeaderVisible(I)Z
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->getPinnedPartitionHeadersEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->hasHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->isPartitionEmpty(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setPinnedPartitionHeadersEnabled(Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->mPinnedPartitionHeadersEnabled:Z

    return-void
.end method
