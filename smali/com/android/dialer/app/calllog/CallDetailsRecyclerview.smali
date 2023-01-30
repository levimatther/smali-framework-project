.class public Lcom/android/dialer/app/calllog/CallDetailsRecyclerview;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "CallDetailsRecyclerview.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 6

    .line 26
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 28
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallDetailsRecyclerview;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    instance-of v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_1

    .line 29
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallDetailsRecyclerview;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 30
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v2

    .line 31
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallDetailsRecyclerview;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v4, v2, :cond_1

    const/4 v2, 0x0

    .line 37
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/calllog/CallDetailsRecyclerview;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/ClassCastException;->printStackTrace()V

    move p1, v2

    :goto_0
    const/16 v5, 0x21

    if-ne p2, v5, :cond_0

    if-ne p1, v4, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallDetailsRecyclerview;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-virtual {p0, p1}, Lcom/android/dialer/app/calllog/CallDetailsRecyclerview;->smoothScrollToPosition(I)V

    sub-int/2addr v3, v4

    .line 44
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_0
    const/16 v3, 0x82

    if-ne p2, v3, :cond_1

    .line 45
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallDetailsRecyclerview;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    sub-int/2addr p2, v4

    if-ne p1, p2, :cond_1

    .line 46
    invoke-virtual {p0, v2}, Lcom/android/dialer/app/calllog/CallDetailsRecyclerview;->smoothScrollToPosition(I)V

    .line 47
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    :cond_1
    :goto_1
    return-object v0
.end method
