.class public Lcom/android/dialer/app/list/BlockedListSearchAdapter;
.super Lcom/android/dialer/app/list/RegularSearchListAdapter;
.source "BlockedListSearchAdapter.java"


# instance fields
.field private mFilteredNumberAsyncQueryHandler:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 34
    invoke-direct {p0, p1}, Lcom/android/dialer/app/list/RegularSearchListAdapter;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/list/BlockedListSearchAdapter;->mResources:Landroid/content/res/Resources;

    .line 36
    invoke-virtual {p0}, Lcom/android/dialer/app/list/BlockedListSearchAdapter;->disableAllShortcuts()V

    const/4 v0, 0x5

    const/4 v1, 0x1

    .line 37
    invoke-virtual {p0, v0, v1}, Lcom/android/dialer/app/list/BlockedListSearchAdapter;->setShortcutEnabled(IZ)Z

    .line 39
    new-instance v0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    invoke-direct {v0, p1}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/dialer/app/list/BlockedListSearchAdapter;->mFilteredNumberAsyncQueryHandler:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    return-void
.end method


# virtual methods
.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 0

    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/dialer/app/list/RegularSearchListAdapter;->bindView(Landroid/view/View;ILandroid/database/Cursor;I)V

    .line 67
    check-cast p1, Lcom/android/contacts/common/list/ContactListItemView;

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/list/BlockedListSearchAdapter;->setViewUnblocked(Lcom/android/contacts/common/list/ContactListItemView;)V

    .line 71
    invoke-virtual {p0, p4}, Lcom/android/dialer/app/list/BlockedListSearchAdapter;->getPhoneNumber(I)Ljava/lang/String;

    move-result-object p2

    .line 72
    iget-object p3, p0, Lcom/android/dialer/app/list/BlockedListSearchAdapter;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/android/dialer/location/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    .line 73
    new-instance p4, Lcom/android/dialer/app/list/BlockedListSearchAdapter$1;

    invoke-direct {p4, p0, p1}, Lcom/android/dialer/app/list/BlockedListSearchAdapter$1;-><init>(Lcom/android/dialer/app/list/BlockedListSearchAdapter;Lcom/android/contacts/common/list/ContactListItemView;)V

    .line 82
    iget-object p1, p0, Lcom/android/dialer/app/list/BlockedListSearchAdapter;->mFilteredNumberAsyncQueryHandler:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    invoke-virtual {p1, p4, p2, p3}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->isBlockedNumber(Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected isChanged(Z)Z
    .locals 1

    if-nez p1, :cond_1

    .line 44
    iget-boolean p1, p0, Lcom/android/dialer/app/list/BlockedListSearchAdapter;->mIsQuerySipAddress:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/android/dialer/app/list/BlockedListSearchAdapter;->setShortcutEnabled(IZ)Z

    move-result p1

    return p1
.end method

.method public setViewBlocked(Lcom/android/contacts/common/list/ContactListItemView;Ljava/lang/Integer;)V
    .locals 1

    const v0, 0x7f09006c

    .line 48
    invoke-virtual {p1, v0, p2}, Lcom/android/contacts/common/list/ContactListItemView;->setTag(ILjava/lang/Object;)V

    .line 49
    iget-object p2, p0, Lcom/android/dialer/app/list/BlockedListSearchAdapter;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f060039

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    .line 50
    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->getDataView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->getLabelView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setViewUnblocked(Lcom/android/contacts/common/list/ContactListItemView;)V
    .locals 2

    const v0, 0x7f09006c

    const/4 v1, 0x0

    .line 56
    invoke-virtual {p1, v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setTag(ILjava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/android/dialer/app/list/BlockedListSearchAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0600bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 58
    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->getDataView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->getLabelView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
