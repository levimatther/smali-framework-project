.class Lcom/android/dialer/searchfragment/list/SearchAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private query:Ljava/lang/String;

.field private final searchCursorManager:Lcom/android/dialer/searchfragment/list/SearchCursorManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 41
    new-instance v0, Lcom/android/dialer/searchfragment/list/SearchCursorManager;

    invoke-direct {v0}, Lcom/android/dialer/searchfragment/list/SearchCursorManager;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/searchfragment/list/SearchAdapter;->searchCursorManager:Lcom/android/dialer/searchfragment/list/SearchCursorManager;

    .line 42
    iput-object p1, p0, Lcom/android/dialer/searchfragment/list/SearchAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/dialer/searchfragment/list/SearchAdapter;->searchCursorManager:Lcom/android/dialer/searchfragment/list/SearchCursorManager;

    invoke-virtual {v0}, Lcom/android/dialer/searchfragment/list/SearchCursorManager;->clear()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/dialer/searchfragment/list/SearchAdapter;->searchCursorManager:Lcom/android/dialer/searchfragment/list/SearchCursorManager;

    invoke-virtual {v0}, Lcom/android/dialer/searchfragment/list/SearchCursorManager;->getCount()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/dialer/searchfragment/list/SearchAdapter;->searchCursorManager:Lcom/android/dialer/searchfragment/list/SearchCursorManager;

    invoke-virtual {v0, p1}, Lcom/android/dialer/searchfragment/list/SearchCursorManager;->getRowType(I)I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 72
    instance-of v0, p1, Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/dialer/searchfragment/list/SearchAdapter;->searchCursorManager:Lcom/android/dialer/searchfragment/list/SearchCursorManager;

    invoke-virtual {v0, p2}, Lcom/android/dialer/searchfragment/list/SearchCursorManager;->getCursor(I)Landroid/database/Cursor;

    move-result-object p2

    .line 74
    check-cast p1, Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;

    iget-object v0, p0, Lcom/android/dialer/searchfragment/list/SearchAdapter;->query:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;->bind(Landroid/database/Cursor;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_0
    instance-of v0, p1, Lcom/android/dialer/searchfragment/nearbyplaces/NearbyPlaceViewHolder;

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/android/dialer/searchfragment/list/SearchAdapter;->searchCursorManager:Lcom/android/dialer/searchfragment/list/SearchCursorManager;

    invoke-virtual {v0, p2}, Lcom/android/dialer/searchfragment/list/SearchCursorManager;->getCursor(I)Landroid/database/Cursor;

    move-result-object p2

    .line 77
    check-cast p1, Lcom/android/dialer/searchfragment/nearbyplaces/NearbyPlaceViewHolder;

    iget-object v0, p0, Lcom/android/dialer/searchfragment/list/SearchAdapter;->query:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/android/dialer/searchfragment/nearbyplaces/NearbyPlaceViewHolder;->bind(Landroid/database/Cursor;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_1
    instance-of v0, p1, Lcom/android/dialer/searchfragment/list/HeaderViewHolder;

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/android/dialer/searchfragment/list/SearchAdapter;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/dialer/searchfragment/list/SearchAdapter;->searchCursorManager:Lcom/android/dialer/searchfragment/list/SearchCursorManager;

    invoke-virtual {v1, p2}, Lcom/android/dialer/searchfragment/list/SearchCursorManager;->getHeaderText(I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 80
    check-cast p1, Lcom/android/dialer/searchfragment/list/HeaderViewHolder;

    invoke-virtual {p1, p2}, Lcom/android/dialer/searchfragment/list/HeaderViewHolder;->setHeader(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 82
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid ViewHolder: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/common/Assert;->createIllegalStateFailException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const/4 v0, 0x1

    const v1, 0x7f0c00f8

    const/4 v2, 0x0

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid RowType: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/common/Assert;->createIllegalStateFailException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    .line 52
    :cond_1
    new-instance p2, Lcom/android/dialer/searchfragment/nearbyplaces/NearbyPlaceViewHolder;

    iget-object v0, p0, Lcom/android/dialer/searchfragment/list/SearchAdapter;->context:Landroid/content/Context;

    .line 53
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/dialer/searchfragment/nearbyplaces/NearbyPlaceViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 56
    :cond_2
    :goto_0
    new-instance p2, Lcom/android/dialer/searchfragment/list/HeaderViewHolder;

    iget-object v0, p0, Lcom/android/dialer/searchfragment/list/SearchAdapter;->context:Landroid/content/Context;

    .line 57
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00a5

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/dialer/searchfragment/list/HeaderViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 49
    :cond_3
    new-instance p2, Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;

    iget-object v0, p0, Lcom/android/dialer/searchfragment/list/SearchAdapter;->context:Landroid/content/Context;

    .line 50
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method setContactsCursor(Landroid/database/Cursor;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/dialer/searchfragment/list/SearchAdapter;->searchCursorManager:Lcom/android/dialer/searchfragment/list/SearchCursorManager;

    invoke-virtual {v0, p1}, Lcom/android/dialer/searchfragment/list/SearchCursorManager;->setContactsCursor(Landroid/database/Cursor;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/dialer/searchfragment/list/SearchAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setNearbyPlacesCursor(Landroid/database/Cursor;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/dialer/searchfragment/list/SearchAdapter;->searchCursorManager:Lcom/android/dialer/searchfragment/list/SearchCursorManager;

    invoke-virtual {v0, p1}, Lcom/android/dialer/searchfragment/list/SearchCursorManager;->setNearbyPlacesCursor(Landroid/database/Cursor;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/dialer/searchfragment/list/SearchAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 1

    .line 101
    iput-object p1, p0, Lcom/android/dialer/searchfragment/list/SearchAdapter;->query:Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/android/dialer/searchfragment/list/SearchAdapter;->searchCursorManager:Lcom/android/dialer/searchfragment/list/SearchCursorManager;

    invoke-virtual {v0, p1}, Lcom/android/dialer/searchfragment/list/SearchCursorManager;->setQuery(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/dialer/searchfragment/list/SearchAdapter;->notifyDataSetChanged()V

    return-void
.end method
