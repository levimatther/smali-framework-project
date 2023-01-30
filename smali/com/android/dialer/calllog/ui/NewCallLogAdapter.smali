.class final Lcom/android/dialer/calllog/ui/NewCallLogAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "NewCallLogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/dialer/calllog/ui/NewCallLogViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final cursor:Landroid/database/Cursor;

.field private final timestampIndex:I


# direct methods
.method constructor <init>(Landroid/database/Cursor;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/dialer/calllog/ui/NewCallLogAdapter;->cursor:Landroid/database/Cursor;

    const-string v0, "timestamp"

    .line 34
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/dialer/calllog/ui/NewCallLogAdapter;->timestampIndex:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/android/dialer/calllog/ui/NewCallLogAdapter;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 27
    check-cast p1, Lcom/android/dialer/calllog/ui/NewCallLogViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/calllog/ui/NewCallLogAdapter;->onBindViewHolder(Lcom/android/dialer/calllog/ui/NewCallLogViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/dialer/calllog/ui/NewCallLogViewHolder;I)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/android/dialer/calllog/ui/NewCallLogAdapter;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 47
    iget-object p2, p0, Lcom/android/dialer/calllog/ui/NewCallLogAdapter;->cursor:Landroid/database/Cursor;

    iget v0, p0, Lcom/android/dialer/calllog/ui/NewCallLogAdapter;->timestampIndex:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 48
    invoke-virtual {p1, v0, v1}, Lcom/android/dialer/calllog/ui/NewCallLogViewHolder;->bind(J)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/calllog/ui/NewCallLogAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/dialer/calllog/ui/NewCallLogViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/dialer/calllog/ui/NewCallLogViewHolder;
    .locals 3

    .line 39
    new-instance p2, Lcom/android/dialer/calllog/ui/NewCallLogViewHolder;

    .line 40
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00c7

    const/4 v2, 0x0

    .line 41
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/dialer/calllog/ui/NewCallLogViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
