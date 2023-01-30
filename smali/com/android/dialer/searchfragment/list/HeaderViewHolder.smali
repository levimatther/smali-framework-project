.class final Lcom/android/dialer/searchfragment/list/HeaderViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "HeaderViewHolder.java"


# instance fields
.field private final header:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 31
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f09017d

    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/dialer/searchfragment/list/HeaderViewHolder;->header:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public setHeader(Ljava/lang/String;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/android/dialer/searchfragment/list/HeaderViewHolder;->header:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
