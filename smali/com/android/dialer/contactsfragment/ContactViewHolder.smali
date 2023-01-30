.class final Lcom/android/dialer/contactsfragment/ContactViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ContactViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private contactUri:Landroid/net/Uri;

.field private final context:Landroid/content/Context;

.field private final header:Landroid/widget/TextView;

.field private headerText:Ljava/lang/String;

.field private final name:Landroid/widget/TextView;

.field private final photo:Landroid/widget/QuickContactBadge;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 46
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/contactsfragment/ContactViewHolder;->context:Landroid/content/Context;

    const v0, 0x7f0900cd

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09017d

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/contactsfragment/ContactViewHolder;->header:Landroid/widget/TextView;

    const v0, 0x7f0900df

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/contactsfragment/ContactViewHolder;->name:Landroid/widget/TextView;

    const v0, 0x7f090238

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/QuickContactBadge;

    iput-object p1, p0, Lcom/android/dialer/contactsfragment/ContactViewHolder;->photo:Landroid/widget/QuickContactBadge;

    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 2

    .line 63
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    .line 64
    iput-object p3, p0, Lcom/android/dialer/contactsfragment/ContactViewHolder;->contactUri:Landroid/net/Uri;

    .line 65
    iput-object p1, p0, Lcom/android/dialer/contactsfragment/ContactViewHolder;->headerText:Ljava/lang/String;

    .line 67
    iget-object p3, p0, Lcom/android/dialer/contactsfragment/ContactViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object p2, p0, Lcom/android/dialer/contactsfragment/ContactViewHolder;->header:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object p1, p0, Lcom/android/dialer/contactsfragment/ContactViewHolder;->header:Landroid/widget/TextView;

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    iget-object p1, p0, Lcom/android/dialer/contactsfragment/ContactViewHolder;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    iget-object p2, p0, Lcom/android/dialer/contactsfragment/ContactViewHolder;->photo:Landroid/widget/QuickContactBadge;

    sget-object p3, Lcom/android/dialer/logging/InteractionEvent$Type;->OPEN_QUICK_CONTACT_FROM_CONTACTS_FRAGMENT_BADGE:Lcom/android/dialer/logging/InteractionEvent$Type;

    .line 72
    invoke-interface {p1, p2, p3, v1}, Lcom/android/dialer/logging/LoggingBindings;->logQuickContactOnTouch(Landroid/widget/QuickContactBadge;Lcom/android/dialer/logging/InteractionEvent$Type;Z)V

    return-void
.end method

.method public getHeader()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/android/dialer/contactsfragment/ContactViewHolder;->headerText:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderView()Landroid/widget/TextView;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/dialer/contactsfragment/ContactViewHolder;->header:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPhoto()Landroid/widget/QuickContactBadge;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/dialer/contactsfragment/ContactViewHolder;->photo:Landroid/widget/QuickContactBadge;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 90
    iget-object p1, p0, Lcom/android/dialer/contactsfragment/ContactViewHolder;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/logging/InteractionEvent$Type;->OPEN_QUICK_CONTACT_FROM_CONTACTS_FRAGMENT_ITEM:Lcom/android/dialer/logging/InteractionEvent$Type;

    .line 91
    invoke-interface {p1, v0}, Lcom/android/dialer/logging/LoggingBindings;->logInteraction(Lcom/android/dialer/logging/InteractionEvent$Type;)V

    .line 92
    iget-object p1, p0, Lcom/android/dialer/contactsfragment/ContactViewHolder;->photo:Landroid/widget/QuickContactBadge;

    .line 93
    invoke-virtual {p1}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/dialer/contactsfragment/ContactViewHolder;->photo:Landroid/widget/QuickContactBadge;

    iget-object v1, p0, Lcom/android/dialer/contactsfragment/ContactViewHolder;->contactUri:Landroid/net/Uri;

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 92
    invoke-static {p1, v0, v1, v2, v3}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    return-void
.end method
