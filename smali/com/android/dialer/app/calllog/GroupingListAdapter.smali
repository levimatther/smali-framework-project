.class abstract Lcom/android/dialer/app/calllog/GroupingListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "GroupingListAdapter.java"


# instance fields
.field protected mChangeObserver:Landroid/database/ContentObserver;

.field private mCursor:Landroid/database/Cursor;

.field protected mDataSetObserver:Landroid/database/DataSetObserver;

.field private mGroupMetadata:Landroid/util/SparseIntArray;

.field private mItemCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 35
    new-instance v0, Lcom/android/dialer/app/calllog/GroupingListAdapter$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/app/calllog/GroupingListAdapter$1;-><init>(Lcom/android/dialer/app/calllog/GroupingListAdapter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/dialer/app/calllog/GroupingListAdapter;->mChangeObserver:Landroid/database/ContentObserver;

    .line 47
    new-instance v0, Lcom/android/dialer/app/calllog/GroupingListAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/dialer/app/calllog/GroupingListAdapter$2;-><init>(Lcom/android/dialer/app/calllog/GroupingListAdapter;)V

    iput-object v0, p0, Lcom/android/dialer/app/calllog/GroupingListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 64
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/GroupingListAdapter;->reset()V

    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    .line 150
    iput v0, p0, Lcom/android/dialer/app/calllog/GroupingListAdapter;->mItemCount:I

    .line 151
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/app/calllog/GroupingListAdapter;->mGroupMetadata:Landroid/util/SparseIntArray;

    return-void
.end method


# virtual methods
.method public addGroup(II)V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/android/dialer/app/calllog/GroupingListAdapter;->mGroupMetadata:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 107
    iget-object v1, p0, Lcom/android/dialer/app/calllog/GroupingListAdapter;->mGroupMetadata:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/calllog/GroupingListAdapter;->mGroupMetadata:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->append(II)V

    goto :goto_1

    .line 108
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/dialer/app/calllog/GroupingListAdapter;->mGroupMetadata:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    :goto_1
    return-void
.end method

.method protected abstract addGroups(Landroid/database/Cursor;)V
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/android/dialer/app/calllog/GroupingListAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 80
    iget-object v1, p0, Lcom/android/dialer/app/calllog/GroupingListAdapter;->mChangeObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 81
    iget-object v0, p0, Lcom/android/dialer/app/calllog/GroupingListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/dialer/app/calllog/GroupingListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 82
    iget-object v0, p0, Lcom/android/dialer/app/calllog/GroupingListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 86
    :cond_1
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/GroupingListAdapter;->reset()V

    .line 87
    iput-object p1, p0, Lcom/android/dialer/app/calllog/GroupingListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz p1, :cond_2

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/calllog/GroupingListAdapter;->addGroups(Landroid/database/Cursor;)V

    .line 93
    iget-object v0, p0, Lcom/android/dialer/app/calllog/GroupingListAdapter;->mGroupMetadata:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    iput v0, p0, Lcom/android/dialer/app/calllog/GroupingListAdapter;->mItemCount:I

    .line 95
    iget-object v0, p0, Lcom/android/dialer/app/calllog/GroupingListAdapter;->mChangeObserver:Landroid/database/ContentObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 96
    iget-object v0, p0, Lcom/android/dialer/app/calllog/GroupingListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/GroupingListAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public getGroupSize(I)I
    .locals 1

    if-ltz p1, :cond_1

    .line 125
    iget-object v0, p0, Lcom/android/dialer/app/calllog/GroupingListAdapter;->mGroupMetadata:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/calllog/GroupingListAdapter;->mGroupMetadata:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/android/dialer/app/calllog/GroupingListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/android/dialer/app/calllog/GroupingListAdapter;->mGroupMetadata:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/calllog/GroupingListAdapter;->mGroupMetadata:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p1

    .line 142
    iget-object v0, p0, Lcom/android/dialer/app/calllog/GroupingListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 143
    iget-object p1, p0, Lcom/android/dialer/app/calllog/GroupingListAdapter;->mCursor:Landroid/database/Cursor;

    return-object p1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public getItemCount()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/android/dialer/app/calllog/GroupingListAdapter;->mItemCount:I

    return v0
.end method

.method protected abstract onContentChanged()V
.end method
