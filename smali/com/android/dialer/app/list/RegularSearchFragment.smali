.class public Lcom/android/dialer/app/list/RegularSearchFragment;
.super Lcom/android/dialer/app/list/SearchFragment;
.source "RegularSearchFragment.java"

# interfaces
.implements Lcom/android/dialer/widget/EmptyContentView$OnEmptyViewActionButtonClickedListener;
.implements Landroidx/legacy/app/FragmentCompat$OnRequestPermissionsResultCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/app/list/RegularSearchFragment$CapabilityChecker;
    }
.end annotation


# static fields
.field public static final PERMISSION_REQUEST_CODE:I = 0x1

.field private static final SEARCH_DIRECTORY_RESULT_LIMIT:I = 0x5


# instance fields
.field private mList:Lcom/android/contacts/common/list/PinnedHeaderListView;

.field protected mPermissionToRequest:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/dialer/app/list/SearchFragment;-><init>()V

    .line 50
    invoke-virtual {p0}, Lcom/android/dialer/app/list/RegularSearchFragment;->configureDirectorySearch()V

    return-void
.end method


# virtual methods
.method protected cacheContactInfo(I)V
    .locals 3

    .line 86
    invoke-virtual {p0}, Lcom/android/dialer/app/list/RegularSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/phonenumbercache/PhoneNumberCache;->get(Landroid/content/Context;)Lcom/android/dialer/phonenumbercache/PhoneNumberCacheBindings;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/dialer/phonenumbercache/PhoneNumberCacheBindings;->getCachedNumberLookupService()Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/android/dialer/app/list/RegularSearchFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/app/list/RegularSearchListAdapter;

    .line 90
    invoke-virtual {p0}, Lcom/android/dialer/app/list/RegularSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, p1}, Lcom/android/dialer/app/list/RegularSearchListAdapter;->getContactInfo(Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;I)Lcom/android/dialer/phonenumbercache/CachedNumberLookupService$CachedContactInfo;

    move-result-object p1

    .line 89
    invoke-interface {v0, v2, p1}, Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;->addContact(Landroid/content/Context;Lcom/android/dialer/phonenumbercache/CachedNumberLookupService$CachedContactInfo;)V

    :cond_0
    return-void
.end method

.method public configureDirectorySearch()V
    .locals 1

    const/4 v0, 0x1

    .line 54
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/list/RegularSearchFragment;->setDirectorySearchEnabled(Z)V

    const/4 v0, 0x5

    .line 55
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/list/RegularSearchFragment;->setDirectoryResultLimit(I)V

    return-void
.end method

.method protected createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 2

    .line 76
    new-instance v0, Lcom/android/dialer/app/list/RegularSearchListAdapter;

    invoke-virtual {p0}, Lcom/android/dialer/app/list/RegularSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dialer/app/list/RegularSearchListAdapter;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 77
    invoke-virtual {v0, v1}, Lcom/android/dialer/app/list/RegularSearchListAdapter;->setDisplayPhotos(Z)V

    .line 78
    invoke-virtual {p0}, Lcom/android/dialer/app/list/RegularSearchFragment;->usesCallableUri()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/app/list/RegularSearchListAdapter;->setUseCallableUri(Z)V

    .line 79
    invoke-virtual {v0, p0}, Lcom/android/dialer/app/list/RegularSearchListAdapter;->setListener(Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;)V

    return-object v0
.end method

.method protected getCallInitiationType(Z)Lcom/android/dialer/callintent/CallInitiationType$Type;
    .locals 0

    if-eqz p1, :cond_0

    .line 159
    sget-object p1, Lcom/android/dialer/callintent/CallInitiationType$Type;->REMOTE_DIRECTORY:Lcom/android/dialer/callintent/CallInitiationType$Type;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/dialer/callintent/CallInitiationType$Type;->REGULAR_SEARCH:Lcom/android/dialer/callintent/CallInitiationType$Type;

    :goto_0
    return-object p1
.end method

.method public getList()Landroid/widget/ListView;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/dialer/app/list/RegularSearchFragment;->mList:Lcom/android/contacts/common/list/PinnedHeaderListView;

    return-object v0
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 0

    .line 60
    invoke-super {p0, p1, p2}, Lcom/android/dialer/app/list/SearchFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/dialer/app/list/RegularSearchFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/common/list/PinnedHeaderListView;

    iput-object p1, p0, Lcom/android/dialer/app/list/RegularSearchFragment;->mList:Lcom/android/contacts/common/list/PinnedHeaderListView;

    const/4 p2, 0x1

    .line 63
    invoke-virtual {p1, p2}, Lcom/android/contacts/common/list/PinnedHeaderListView;->setScrollToSectionOnHeaderTouch(Z)V

    .line 64
    invoke-virtual {p0}, Lcom/android/dialer/app/list/RegularSearchFragment;->setupEmptyView()V

    return-void
.end method

.method public onEmptyViewActionButtonClicked()V
    .locals 4

    .line 126
    invoke-virtual {p0}, Lcom/android/dialer/app/list/RegularSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/list/RegularSearchFragment;->mPermissionToRequest:Ljava/lang/String;

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/android/dialer/app/list/RegularSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/util/PermissionsUtil;->allContactsGroupPermissionsUsedInDialer:Ljava/util/List;

    .line 133
    invoke-static {v0, v1}, Lcom/android/dialer/util/PermissionsUtil;->getPermissionsCurrentlyDenied(Landroid/content/Context;Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    .line 135
    array-length v1, v0

    if-lez v1, :cond_1

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requesting permissions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "RegularSearchFragment.onEmptyViewActionButtonClicked"

    .line 136
    invoke-static {v3, v1, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 139
    invoke-static {p0, v0, v1}, Landroidx/legacy/app/FragmentCompat;->requestPermissions(Landroid/app/Fragment;[Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/android/dialer/app/list/RegularSearchFragment;->setupEmptyView()V

    if-eqz p3, :cond_0

    .line 149
    array-length p1, p3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    aget p3, p3, p1

    if-nez p3, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/android/dialer/app/list/RegularSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    aget-object p1, p2, p1

    invoke-static {p3, p1}, Lcom/android/dialer/util/PermissionsUtil;->notifyPermissionGranted(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected setupEmptyView()V
    .locals 5

    .line 96
    iget-object v0, p0, Lcom/android/dialer/app/list/RegularSearchFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/dialer/app/list/RegularSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/android/dialer/app/list/RegularSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-static {v0, v1}, Lcom/android/dialer/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const v3, 0x7f0800c3

    const v0, 0x7f1103a0

    const v2, 0x7f11039c

    .line 106
    iput-object v1, p0, Lcom/android/dialer/app/list/RegularSearchFragment;->mPermissionToRequest:Ljava/lang/String;

    move v1, v2

    move-object v2, p0

    goto :goto_0

    .line 112
    :cond_0
    iput-object v2, p0, Lcom/android/dialer/app/list/RegularSearchFragment;->mPermissionToRequest:Ljava/lang/String;

    move v0, v3

    move v1, v0

    .line 115
    :goto_0
    iget-object v4, p0, Lcom/android/dialer/app/list/RegularSearchFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {v4, v3}, Lcom/android/dialer/widget/EmptyContentView;->setImage(I)V

    .line 116
    iget-object v3, p0, Lcom/android/dialer/app/list/RegularSearchFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {v3, v0}, Lcom/android/dialer/widget/EmptyContentView;->setActionLabel(I)V

    .line 117
    iget-object v0, p0, Lcom/android/dialer/app/list/RegularSearchFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/EmptyContentView;->setDescription(I)V

    if-eqz v2, :cond_1

    .line 119
    iget-object v0, p0, Lcom/android/dialer/app/list/RegularSearchFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {v0, v2}, Lcom/android/dialer/widget/EmptyContentView;->setActionClickedListener(Lcom/android/dialer/widget/EmptyContentView$OnEmptyViewActionButtonClickedListener;)V

    :cond_1
    return-void
.end method
