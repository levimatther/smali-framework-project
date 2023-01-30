.class final Lcom/android/dialer/calldetails/CallDetailsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CallDetailsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final CALL_ENTRY_VIEW_TYPE:I = 0x2

.field private static final FOOTER_VIEW_TYPE:I = 0x3

.field private static final HEADER_VIEW_TYPE:I = 0x1


# instance fields
.field private final TAG:Ljava/lang/String;

.field private callDetailsEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final callTypeHelper:Lcom/android/dialer/calllogutils/CallTypeHelper;

.field private final contact:Lcom/android/dialer/dialercontact/DialerContact;

.field private final listener:Lcom/android/dialer/calldetails/CallDetailsFooterViewHolder$ReportCallIdListener;

.field private verstat:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/dialer/dialercontact/DialerContact;Ljava/util/List;ILcom/android/dialer/calldetails/CallDetailsFooterViewHolder$ReportCallIdListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/dialer/dialercontact/DialerContact;",
            "Ljava/util/List<",
            "Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;",
            ">;I",
            "Lcom/android/dialer/calldetails/CallDetailsFooterViewHolder$ReportCallIdListener;",
            ")V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const-string v0, "CallDetailsAdapter"

    .line 39
    iput-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsAdapter;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/android/dialer/calldetails/CallDetailsAdapter;->verstat:I

    .line 57
    invoke-static {p2}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/dialer/dialercontact/DialerContact;

    iput-object p2, p0, Lcom/android/dialer/calldetails/CallDetailsAdapter;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    .line 58
    iput-object p3, p0, Lcom/android/dialer/calldetails/CallDetailsAdapter;->callDetailsEntries:Ljava/util/List;

    .line 59
    iput-object p5, p0, Lcom/android/dialer/calldetails/CallDetailsAdapter;->listener:Lcom/android/dialer/calldetails/CallDetailsFooterViewHolder$ReportCallIdListener;

    .line 60
    iput p4, p0, Lcom/android/dialer/calldetails/CallDetailsAdapter;->verstat:I

    .line 61
    new-instance p2, Lcom/android/dialer/calllogutils/CallTypeHelper;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/dialer/calllogutils/CallTypeHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object p2, p0, Lcom/android/dialer/calldetails/CallDetailsAdapter;->callTypeHelper:Lcom/android/dialer/calllogutils/CallTypeHelper;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getItemCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsAdapter;->callDetailsEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallDetailsAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsAdapter;->callDetailsEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    const-string v0, "CallDetailsAdapter"

    if-nez p1, :cond_0

    const-string p1, "getItemViewType: 1"

    .line 118
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "getItemViewType: 2"

    .line 125
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    const-string v0, "CallDetailsAdapter"

    if-nez p2, :cond_0

    const-string p2, "onBindViewHolder: 1"

    .line 91
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    check-cast p1, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;

    iget p2, p0, Lcom/android/dialer/calldetails/CallDetailsAdapter;->verstat:I

    iput p2, p1, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;->verstat:I

    .line 95
    iget-object p2, p0, Lcom/android/dialer/calldetails/CallDetailsAdapter;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    invoke-virtual {p1, p2}, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;->updateContactInfo(Lcom/android/dialer/dialercontact/DialerContact;)V

    goto :goto_1

    :cond_0
    const-string v1, "onBindViewHolder: 3"

    .line 102
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    check-cast p1, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;

    .line 105
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsAdapter;->callDetailsEntries:Ljava/util/List;

    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    .line 106
    iget-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsAdapter;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    .line 107
    invoke-virtual {v1}, Lcom/android/dialer/dialercontact/DialerContact;->getNumber()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/calldetails/CallDetailsAdapter;->callTypeHelper:Lcom/android/dialer/calllogutils/CallTypeHelper;

    .line 110
    invoke-virtual {v0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->getHistoryResultsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsAdapter;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v4

    if-eq p2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 106
    :goto_0
    invoke-virtual {p1, v1, v0, v2, v4}, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->setCallDetails(Ljava/lang/String;Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;Lcom/android/dialer/calllogutils/CallTypeHelper;Z)V

    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4

    .line 66
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "CallDetailsAdapter"

    const/4 v3, 0x0

    if-eq p2, v1, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    .line 79
    new-instance p2, Lcom/android/dialer/calldetails/CallDetailsFooterViewHolder;

    const v1, 0x7f0c0041

    .line 80
    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsAdapter;->listener:Lcom/android/dialer/calldetails/CallDetailsFooterViewHolder$ReportCallIdListener;

    invoke-direct {p2, p1, v0}, Lcom/android/dialer/calldetails/CallDetailsFooterViewHolder;-><init>(Landroid/view/View;Lcom/android/dialer/calldetails/CallDetailsFooterViewHolder$ReportCallIdListener;)V

    return-object p2

    .line 82
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No ViewHolder available for viewType: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/common/Assert;->createIllegalStateFailException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    :cond_1
    const-string p2, "onCreateViewHolder: 2"

    .line 74
    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance p2, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;

    const v1, 0x7f0c0040

    .line 77
    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_2
    const-string p2, "onCreateViewHolder:1 "

    .line 70
    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance p2, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;

    const v1, 0x7f0c004f

    .line 72
    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setEntries(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;",
            ">;)V"
        }
    .end annotation

    .line 141
    iput-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsAdapter;->callDetailsEntries:Ljava/util/List;

    return-void
.end method
