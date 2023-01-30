.class final Lcom/android/dialer/calllog/ui/NewCallLogViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "NewCallLogViewHolder.java"


# instance fields
.field private final contactNameView:Landroid/widget/TextView;

.field private final dateFormat:Ljava/text/SimpleDateFormat;

.field private final timestampView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 37
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 31
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/ui/NewCallLogViewHolder;->dateFormat:Ljava/text/SimpleDateFormat;

    const v0, 0x7f0900df

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/calllog/ui/NewCallLogViewHolder;->contactNameView:Landroid/widget/TextView;

    const v0, 0x7f0902fe

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/dialer/calllog/ui/NewCallLogViewHolder;->timestampView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method bind(J)V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/android/dialer/calllog/ui/NewCallLogViewHolder;->contactNameView:Landroid/widget/TextView;

    const-string v1, "Contact Name Placeholder"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v0, p0, Lcom/android/dialer/calllog/ui/NewCallLogViewHolder;->timestampView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/dialer/calllog/ui/NewCallLogViewHolder;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
