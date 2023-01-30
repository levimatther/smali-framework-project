.class public Lcom/android/dialer/app/list/AllContactsFragment;
.super Lcom/android/contacts/common/list/ContactEntryListFragment;
.source "AllContactsFragment.java"

# interfaces
.implements Lcom/android/dialer/widget/EmptyContentView$OnEmptyViewActionButtonClickedListener;
.implements Landroidx/legacy/app/FragmentCompat$OnRequestPermissionsResultCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/common/list/ContactEntryListFragment<",
        "Lcom/android/contacts/common/list/ContactEntryListAdapter;",
        ">;",
        "Lcom/android/dialer/widget/EmptyContentView$OnEmptyViewActionButtonClickedListener;",
        "Landroidx/legacy/app/FragmentCompat$OnRequestPermissionsResultCallback;"
    }
.end annotation


# static fields
.field private static final READ_CONTACTS_PERMISSION_REQUEST_CODE:I = 0x1


# instance fields
.field private mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

.field private mReadContactsPermissionGrantedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 73
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;-><init>()V

    .line 65
    new-instance v0, Lcom/android/dialer/app/list/AllContactsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/app/list/AllContactsFragment$1;-><init>(Lcom/android/dialer/app/list/AllContactsFragment;)V

    iput-object v0, p0, Lcom/android/dialer/app/list/AllContactsFragment;->mReadContactsPermissionGrantedReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/list/AllContactsFragment;->setQuickContactEnabled(Z)V

    const/4 v1, 0x1

    .line 75
    invoke-virtual {p0, v1}, Lcom/android/dialer/app/list/AllContactsFragment;->setAdjustSelectionBoundsEnabled(Z)V

    .line 76
    invoke-virtual {p0, v1}, Lcom/android/dialer/app/list/AllContactsFragment;->setPhotoLoaderEnabled(Z)V

    .line 77
    invoke-virtual {p0, v1}, Lcom/android/dialer/app/list/AllContactsFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 78
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/list/AllContactsFragment;->setDarkTheme(Z)V

    .line 79
    invoke-virtual {p0, v1}, Lcom/android/dialer/app/list/AllContactsFragment;->setVisibleScrollbarEnabled(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/app/list/AllContactsFragment;)V
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcom/android/dialer/app/list/AllContactsFragment;->reloadData()V

    return-void
.end method


# virtual methods
.method protected createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 2

    .line 132
    new-instance v0, Lcom/android/dialer/app/list/AllContactsFragment$2;

    .line 133
    invoke-virtual {p0}, Lcom/android/dialer/app/list/AllContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/app/list/AllContactsFragment$2;-><init>(Lcom/android/dialer/app/list/AllContactsFragment;Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 140
    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->setDisplayPhotos(Z)V

    const/4 v1, -0x1

    .line 142
    invoke-static {v1}, Lcom/android/contacts/common/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v1

    .line 141
    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/dialer/app/list/AllContactsFragment;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    return-object v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const p2, 0x7f0c0030

    const/4 v0, 0x0

    .line 149
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onEmptyViewActionButtonClicked()V
    .locals 4

    .line 173
    invoke-virtual {p0}, Lcom/android/dialer/app/list/AllContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/app/list/AllContactsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/dialer/util/PermissionsUtil;->allContactsGroupPermissionsUsedInDialer:Ljava/util/List;

    .line 179
    invoke-static {v1, v2}, Lcom/android/dialer/util/PermissionsUtil;->getPermissionsCurrentlyDenied(Landroid/content/Context;Ljava/util/List;)[Ljava/lang/String;

    move-result-object v1

    .line 181
    array-length v2, v1

    if-lez v2, :cond_1

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requesting permissions: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "AllContactsFragment.onEmptyViewActionButtonClicked"

    .line 182
    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 185
    invoke-static {p0, v1, v0}, Landroidx/legacy/app/FragmentCompat;->requestPermissions(Landroid/app/Fragment;[Ljava/lang/String;I)V

    goto :goto_0

    .line 190
    :cond_1
    invoke-static {}, Lcom/android/dialer/util/IntentUtil;->getNewContactIntent()Landroid/content/Intent;

    move-result-object v1

    const v2, 0x7f110059

    .line 189
    invoke-static {v0, v1, v2}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 0

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 154
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    if-eqz p1, :cond_1

    .line 156
    invoke-virtual {p0}, Lcom/android/dialer/app/list/AllContactsFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p3

    sget-object p4, Lcom/android/dialer/logging/InteractionEvent$Type;->OPEN_QUICK_CONTACT_FROM_ALL_CONTACTS_GENERAL:Lcom/android/dialer/logging/InteractionEvent$Type;

    .line 157
    invoke-interface {p3, p4}, Lcom/android/dialer/logging/LoggingBindings;->logInteraction(Lcom/android/dialer/logging/InteractionEvent$Type;)V

    .line 158
    invoke-static {}, Lcom/android/dialer/compat/CompatUtils;->hasPrioritizedMimeType()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/android/dialer/app/list/AllContactsFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string/jumbo p5, "vnd.android.cursor.item/phone_v2"

    invoke-static {p3, p2, p1, p4, p5}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/app/list/AllContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    const/4 p5, 0x3

    invoke-static {p3, p2, p1, p5, p4}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 123
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    if-eqz p2, :cond_0

    .line 125
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-nez p1, :cond_1

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/app/list/AllContactsFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/dialer/widget/EmptyContentView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 53
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/app/list/AllContactsFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 198
    array-length p1, p3

    if-lt p1, p2, :cond_0

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/android/dialer/app/list/AllContactsFragment;->reloadData()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 96
    invoke-super {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onStart()V

    .line 98
    invoke-virtual {p0}, Lcom/android/dialer/app/list/AllContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/app/list/AllContactsFragment;->mReadContactsPermissionGrantedReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "android.permission.READ_CONTACTS"

    .line 97
    invoke-static {v0, v1, v2}, Lcom/android/dialer/util/PermissionsUtil;->registerPermissionReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 104
    invoke-virtual {p0}, Lcom/android/dialer/app/list/AllContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/app/list/AllContactsFragment;->mReadContactsPermissionGrantedReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    invoke-static {v0, v1}, Lcom/android/dialer/util/PermissionsUtil;->unregisterPermissionReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 105
    invoke-super {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 84
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f090148

    .line 86
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/widget/EmptyContentView;

    iput-object p1, p0, Lcom/android/dialer/app/list/AllContactsFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    const p2, 0x7f0800c3

    .line 87
    invoke-virtual {p1, p2}, Lcom/android/dialer/widget/EmptyContentView;->setImage(I)V

    .line 88
    iget-object p1, p0, Lcom/android/dialer/app/list/AllContactsFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    const p2, 0x7f11005f

    invoke-virtual {p1, p2}, Lcom/android/dialer/widget/EmptyContentView;->setDescription(I)V

    .line 89
    iget-object p1, p0, Lcom/android/dialer/app/list/AllContactsFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {p1, p0}, Lcom/android/dialer/widget/EmptyContentView;->setActionClickedListener(Lcom/android/dialer/widget/EmptyContentView$OnEmptyViewActionButtonClickedListener;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/dialer/app/list/AllContactsFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    iget-object p2, p0, Lcom/android/dialer/app/list/AllContactsFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 91
    iget-object p1, p0, Lcom/android/dialer/app/list/AllContactsFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/android/dialer/widget/EmptyContentView;->setVisibility(I)V

    return-void
.end method

.method protected startLoading()V
    .locals 2

    .line 110
    invoke-virtual {p0}, Lcom/android/dialer/app/list/AllContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-static {v0, v1}, Lcom/android/dialer/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-super {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->startLoading()V

    .line 112
    iget-object v0, p0, Lcom/android/dialer/app/list/AllContactsFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    const v1, 0x7f11005f

    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/EmptyContentView;->setDescription(I)V

    .line 113
    iget-object v0, p0, Lcom/android/dialer/app/list/AllContactsFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    const v1, 0x7f110060

    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/EmptyContentView;->setActionLabel(I)V

    goto :goto_0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/list/AllContactsFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    const v1, 0x7f11039b

    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/EmptyContentView;->setDescription(I)V

    .line 116
    iget-object v0, p0, Lcom/android/dialer/app/list/AllContactsFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    const v1, 0x7f1103a0

    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/EmptyContentView;->setActionLabel(I)V

    .line 117
    iget-object v0, p0, Lcom/android/dialer/app/list/AllContactsFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/EmptyContentView;->setVisibility(I)V

    :goto_0
    return-void
.end method
