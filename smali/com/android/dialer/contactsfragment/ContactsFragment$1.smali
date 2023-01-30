.class Lcom/android/dialer/contactsfragment/ContactsFragment$1;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "ContactsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/contactsfragment/ContactsFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/contactsfragment/ContactsFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/contactsfragment/ContactsFragment;Landroid/content/Context;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/android/dialer/contactsfragment/ContactsFragment$1;->this$0:Lcom/android/dialer/contactsfragment/ContactsFragment;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 135
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 136
    invoke-virtual {p0}, Lcom/android/dialer/contactsfragment/ContactsFragment$1;->findLastVisibleItemPosition()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/dialer/contactsfragment/ContactsFragment$1;->findFirstVisibleItemPosition()I

    move-result p2

    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x1

    .line 137
    iget-object p2, p0, Lcom/android/dialer/contactsfragment/ContactsFragment$1;->this$0:Lcom/android/dialer/contactsfragment/ContactsFragment;

    invoke-static {p2}, Lcom/android/dialer/contactsfragment/ContactsFragment;->access$000(Lcom/android/dialer/contactsfragment/ContactsFragment;)Lcom/android/dialer/contactsfragment/ContactsAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/dialer/contactsfragment/ContactsAdapter;->getItemCount()I

    move-result p2

    if-le p2, p1, :cond_0

    .line 138
    iget-object p1, p0, Lcom/android/dialer/contactsfragment/ContactsFragment$1;->this$0:Lcom/android/dialer/contactsfragment/ContactsFragment;

    invoke-static {p1}, Lcom/android/dialer/contactsfragment/ContactsFragment;->access$100(Lcom/android/dialer/contactsfragment/ContactsFragment;)Lcom/android/dialer/contactsfragment/FastScroller;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/dialer/contactsfragment/FastScroller;->setVisibility(I)V

    .line 139
    iget-object p1, p0, Lcom/android/dialer/contactsfragment/ContactsFragment$1;->this$0:Lcom/android/dialer/contactsfragment/ContactsFragment;

    invoke-static {p1}, Lcom/android/dialer/contactsfragment/ContactsFragment;->access$200(Lcom/android/dialer/contactsfragment/ContactsFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object p2, p0, Lcom/android/dialer/contactsfragment/ContactsFragment$1;->this$0:Lcom/android/dialer/contactsfragment/ContactsFragment;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    goto :goto_0

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/contactsfragment/ContactsFragment$1;->this$0:Lcom/android/dialer/contactsfragment/ContactsFragment;

    invoke-static {p1}, Lcom/android/dialer/contactsfragment/ContactsFragment;->access$100(Lcom/android/dialer/contactsfragment/ContactsFragment;)Lcom/android/dialer/contactsfragment/FastScroller;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/android/dialer/contactsfragment/FastScroller;->setVisibility(I)V

    :goto_0
    return-void
.end method
