.class final Lcom/android/dialer/contactsfragment/AddContactViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AddContactViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 35
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/contactsfragment/AddContactViewHolder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 41
    iget-object p1, p0, Lcom/android/dialer/contactsfragment/AddContactViewHolder;->context:Landroid/content/Context;

    .line 42
    invoke-static {}, Lcom/android/dialer/util/IntentUtil;->getNewContactIntent()Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f110059

    .line 41
    invoke-static {p1, v0, v1}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;I)V

    return-void
.end method
