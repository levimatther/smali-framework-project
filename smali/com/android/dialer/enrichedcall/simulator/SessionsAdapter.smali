.class Lcom/android/dialer/enrichedcall/simulator/SessionsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SessionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/dialer/enrichedcall/simulator/SessionViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private sessionStrings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/android/dialer/enrichedcall/simulator/SessionsAdapter;->sessionStrings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 29
    check-cast p1, Lcom/android/dialer/enrichedcall/simulator/SessionViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/enrichedcall/simulator/SessionsAdapter;->onBindViewHolder(Lcom/android/dialer/enrichedcall/simulator/SessionViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/dialer/enrichedcall/simulator/SessionViewHolder;I)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/dialer/enrichedcall/simulator/SessionsAdapter;->sessionStrings:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/dialer/enrichedcall/simulator/SessionViewHolder;->updateSession(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/enrichedcall/simulator/SessionsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/dialer/enrichedcall/simulator/SessionViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/dialer/enrichedcall/simulator/SessionViewHolder;
    .locals 3

    .line 40
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 41
    new-instance v0, Lcom/android/dialer/enrichedcall/simulator/SessionViewHolder;

    const v1, 0x7f0c00ff

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/dialer/enrichedcall/simulator/SessionViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method setSessionStrings(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/android/dialer/enrichedcall/simulator/SessionsAdapter;->sessionStrings:Ljava/util/List;

    return-void
.end method
