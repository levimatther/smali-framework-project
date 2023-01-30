.class Lcom/android/dialer/enrichedcall/simulator/SessionViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SessionViewHolder.java"


# instance fields
.field private final sessionStringView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 32
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0902ad

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/dialer/enrichedcall/simulator/SessionViewHolder;->sessionStringView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method updateSession(Ljava/lang/String;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/android/dialer/enrichedcall/simulator/SessionViewHolder;->sessionStringView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
