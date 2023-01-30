.class public Lcom/android/dialer/app/list/SmartDialSearchFragment;
.super Lcom/android/dialer/app/list/SearchFragment;
.source "SmartDialSearchFragment.java"

# interfaces
.implements Lcom/android/dialer/widget/EmptyContentView$OnEmptyViewActionButtonClickedListener;
.implements Landroidx/legacy/app/FragmentCompat$OnRequestPermissionsResultCallback;


# static fields
.field private static final CALL_PHONE_PERMISSION_REQUEST_CODE:I = 0x1


# instance fields
.field private adapter:Lcom/android/dialer/app/list/SmartDialNumberListAdapter;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContactListViewItem:Lcom/android/contacts/common/list/ContactListItemView;

.field private mList:Lcom/android/contacts/common/list/PinnedHeaderListView;

.field private final mSmartDialUpdatedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/android/dialer/app/list/SearchFragment;-><init>()V

    .line 69
    new-instance v0, Lcom/android/dialer/app/list/SmartDialSearchFragment$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/app/list/SmartDialSearchFragment$1;-><init>(Lcom/android/dialer/app/list/SmartDialSearchFragment;)V

    iput-object v0, p0, Lcom/android/dialer/app/list/SmartDialSearchFragment;->mSmartDialUpdatedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/app/list/SmartDialSearchFragment;)V
    .locals 0

    .line 56
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->reloadData()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/dialer/app/list/SmartDialSearchFragment;)Lcom/android/contacts/common/list/PinnedHeaderListView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/dialer/app/list/SmartDialSearchFragment;->mList:Lcom/android/contacts/common/list/PinnedHeaderListView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/dialer/app/list/SmartDialSearchFragment;)Landroid/media/AudioManager;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/dialer/app/list/SmartDialSearchFragment;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method


# virtual methods
.method protected createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 2

    .line 81
    new-instance v0, Lcom/android/dialer/app/list/SmartDialNumberListAdapter;

    invoke-virtual {p0}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dialer/app/list/SmartDialNumberListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/dialer/app/list/SmartDialSearchFragment;->adapter:Lcom/android/dialer/app/list/SmartDialNumberListAdapter;

    .line 82
    invoke-super {p0}, Lcom/android/dialer/app/list/SearchFragment;->usesCallableUri()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/app/list/SmartDialNumberListAdapter;->setUseCallableUri(Z)V

    .line 83
    iget-object v0, p0, Lcom/android/dialer/app/list/SmartDialSearchFragment;->adapter:Lcom/android/dialer/app/list/SmartDialNumberListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dialer/app/list/SmartDialNumberListAdapter;->setQuickContactEnabled(Z)V

    .line 84
    iget-object v0, p0, Lcom/android/dialer/app/list/SmartDialSearchFragment;->adapter:Lcom/android/dialer/app/list/SmartDialNumberListAdapter;

    invoke-virtual {p0}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->getShowEmptyListForNullQuery()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/app/list/SmartDialNumberListAdapter;->setShowEmptyListForNullQuery(Z)V

    .line 86
    iget-object v0, p0, Lcom/android/dialer/app/list/SmartDialSearchFragment;->adapter:Lcom/android/dialer/app/list/SmartDialNumberListAdapter;

    invoke-virtual {p0}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/app/list/SmartDialNumberListAdapter;->setQueryString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/android/dialer/app/list/SmartDialSearchFragment;->adapter:Lcom/android/dialer/app/list/SmartDialNumberListAdapter;

    invoke-virtual {v0, p0}, Lcom/android/dialer/app/list/SmartDialNumberListAdapter;->setListener(Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;)V

    .line 88
    iget-object v0, p0, Lcom/android/dialer/app/list/SmartDialSearchFragment;->adapter:Lcom/android/dialer/app/list/SmartDialNumberListAdapter;

    return-object v0
.end method

.method protected getCallInitiationType(Z)Lcom/android/dialer/callintent/CallInitiationType$Type;
    .locals 0

    .line 211
    sget-object p1, Lcom/android/dialer/callintent/CallInitiationType$Type;->SMART_DIAL:Lcom/android/dialer/callintent/CallInitiationType$Type;

    return-object p1
.end method

.method public getList()Landroid/widget/ListView;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/android/dialer/app/list/SmartDialSearchFragment;->mList:Lcom/android/contacts/common/list/PinnedHeaderListView;

    return-object v0
.end method

.method public getShowEmptyListForNullQuery()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isShowingPermissionRequest()Z
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/android/dialer/app/list/SmartDialSearchFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/app/list/SmartDialSearchFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {v0}, Lcom/android/dialer/widget/EmptyContentView;->isShowingContent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->getDirectoryLoaderId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 130
    invoke-super {p0, p1, p2}, Lcom/android/dialer/app/list/SearchFragment;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;

    move-result-object p1

    return-object p1

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/app/list/SmartDialNumberListAdapter;

    .line 133
    new-instance p2, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;

    invoke-super {p0}, Lcom/android/dialer/app/list/SearchFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;-><init>(Landroid/content/Context;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->getShowEmptyListForNullQuery()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;->setShowEmptyListForNullQuery(Z)V

    .line 135
    invoke-virtual {p1, p2}, Lcom/android/dialer/app/list/SmartDialNumberListAdapter;->configureLoader(Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;)V

    return-object p2
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 0

    .line 94
    invoke-super {p0, p1, p2}, Lcom/android/dialer/app/list/SearchFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/common/list/PinnedHeaderListView;

    iput-object p1, p0, Lcom/android/dialer/app/list/SmartDialSearchFragment;->mList:Lcom/android/contacts/common/list/PinnedHeaderListView;

    const/4 p2, 0x1

    .line 96
    invoke-virtual {p1, p2}, Lcom/android/contacts/common/list/PinnedHeaderListView;->setScrollToSectionOnHeaderTouch(Z)V

    .line 98
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/dialer/app/list/SmartDialSearchFragment;->mAudioManager:Landroid/media/AudioManager;

    .line 99
    iget-object p1, p0, Lcom/android/dialer/app/list/SmartDialSearchFragment;->mList:Lcom/android/contacts/common/list/PinnedHeaderListView;

    new-instance p2, Lcom/android/dialer/app/list/SmartDialSearchFragment$2;

    invoke-direct {p2, p0}, Lcom/android/dialer/app/list/SmartDialSearchFragment$2;-><init>(Lcom/android/dialer/app/list/SmartDialSearchFragment;)V

    invoke-virtual {p1, p2}, Lcom/android/contacts/common/list/PinnedHeaderListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public onEmptyViewActionButtonClicked()V
    .locals 4

    .line 184
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/util/PermissionsUtil;->allPhoneGroupPermissionsUsedInDialer:Ljava/util/List;

    .line 190
    invoke-static {v0, v1}, Lcom/android/dialer/util/PermissionsUtil;->getPermissionsCurrentlyDenied(Landroid/content/Context;Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    .line 192
    array-length v1, v0

    if-lez v1, :cond_1

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requesting permissions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "SmartDialSearchFragment.onEmptyViewActionButtonClicked"

    .line 193
    invoke-static {v3, v1, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 196
    invoke-static {p0, v0, v1}, Landroidx/legacy/app/FragmentCompat;->requestPermissions(Landroid/app/Fragment;[Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->setupEmptyView()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 163
    invoke-super {p0}, Lcom/android/dialer/app/list/SearchFragment;->onStart()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SmartDialSearchFragment.onStart"

    const-string v2, "registering smart dial update receiver"

    .line 165
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/app/list/SmartDialSearchFragment;->mSmartDialUpdatedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.dialer.database.ACTION_SMART_DIAL_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 3

    .line 175
    invoke-super {p0}, Lcom/android/dialer/app/list/SearchFragment;->onStop()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SmartDialSearchFragment.onStop"

    const-string/jumbo v2, "unregistering smart dial update receiver"

    .line 177
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/app/list/SmartDialSearchFragment;->mSmartDialUpdatedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public setShowEmptyListForNullQuery(Z)V
    .locals 1

    .line 220
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/app/list/SmartDialNumberListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/dialer/app/list/SmartDialNumberListAdapter;->setShowEmptyListForNullQuery(Z)V

    .line 223
    :cond_0
    invoke-super {p0, p1}, Lcom/android/dialer/app/list/SearchFragment;->setShowEmptyListForNullQuery(Z)V

    return-void
.end method

.method protected setupEmptyView()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/android/dialer/app/list/SmartDialSearchFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.CALL_PHONE"

    invoke-static {v0, v1}, Lcom/android/dialer/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/dialer/app/list/SmartDialSearchFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    const v1, 0x7f0800c3

    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/EmptyContentView;->setImage(I)V

    .line 150
    iget-object v0, p0, Lcom/android/dialer/app/list/SmartDialSearchFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    const v1, 0x7f1103a0

    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/EmptyContentView;->setActionLabel(I)V

    .line 151
    iget-object v0, p0, Lcom/android/dialer/app/list/SmartDialSearchFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    const v1, 0x7f11039f

    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/EmptyContentView;->setDescription(I)V

    .line 152
    iget-object v0, p0, Lcom/android/dialer/app/list/SmartDialSearchFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {v0, p0}, Lcom/android/dialer/widget/EmptyContentView;->setActionClickedListener(Lcom/android/dialer/widget/EmptyContentView$OnEmptyViewActionButtonClickedListener;)V

    goto :goto_0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/list/SmartDialSearchFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/EmptyContentView;->setImage(I)V

    .line 155
    iget-object v0, p0, Lcom/android/dialer/app/list/SmartDialSearchFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/EmptyContentView;->setActionLabel(I)V

    .line 156
    iget-object v0, p0, Lcom/android/dialer/app/list/SmartDialSearchFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/EmptyContentView;->setDescription(I)V

    :cond_1
    :goto_0
    return-void
.end method
