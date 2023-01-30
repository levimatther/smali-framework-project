.class public Lcom/android/dialer/contactsfragment/ContactsFragment;
.super Landroid/app/Fragment;
.source "ContactsFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnScrollChangeListener;
.implements Lcom/android/dialer/widget/EmptyContentView$OnEmptyViewActionButtonClickedListener;
.implements Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnScrollChangeListener;",
        "Lcom/android/dialer/widget/EmptyContentView$OnEmptyViewActionButtonClickedListener;",
        "Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;"
    }
.end annotation


# static fields
.field public static final READ_CONTACTS_PERMISSION_REQUEST_CODE:I = 0x1


# instance fields
.field private adapter:Lcom/android/dialer/contactsfragment/ContactsAdapter;

.field private anchoredHeader:Landroid/widget/TextView;

.field private contactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

.field private emptyContentView:Lcom/android/dialer/widget/EmptyContentView;

.field private fastScroller:Lcom/android/dialer/contactsfragment/FastScroller;

.field private manager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/contactsfragment/ContactsFragment;)Lcom/android/dialer/contactsfragment/ContactsAdapter;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/dialer/contactsfragment/ContactsFragment;->adapter:Lcom/android/dialer/contactsfragment/ContactsAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/dialer/contactsfragment/ContactsFragment;)Lcom/android/dialer/contactsfragment/FastScroller;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/dialer/contactsfragment/ContactsFragment;->fastScroller:Lcom/android/dialer/contactsfragment/FastScroller;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/dialer/contactsfragment/ContactsFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/dialer/contactsfragment/ContactsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private getContactHolder(I)Lcom/android/dialer/contactsfragment/ContactViewHolder;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/android/dialer/contactsfragment/ContactsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/contactsfragment/ContactViewHolder;

    return-object p1
.end method


# virtual methods
.method public onChange()V
    .locals 3

    .line 101
    invoke-virtual {p0}, Lcom/android/dialer/contactsfragment/ContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/contactsfragment/ContactsFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/android/dialer/contactsfragment/ContactsFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 70
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    new-instance p1, Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {p0}, Lcom/android/dialer/contactsfragment/ContactsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/contacts/common/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/dialer/contactsfragment/ContactsFragment;->contactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    .line 72
    invoke-virtual {p1, p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->registerChangeListener(Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
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

    .line 109
    iget-object p1, p0, Lcom/android/dialer/contactsfragment/ContactsFragment;->contactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    .line 110
    invoke-virtual {p1}, Lcom/android/contacts/common/preference/ContactsPreferences;->getSortOrder()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, p2

    .line 111
    :goto_0
    iget-object v1, p0, Lcom/android/dialer/contactsfragment/ContactsFragment;->contactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    .line 112
    invoke-virtual {v1}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v1

    if-ne v1, v0, :cond_1

    move p2, v0

    :cond_1
    if-eqz p1, :cond_2

    const-string p1, "sort_key"

    goto :goto_1

    :cond_2
    const-string p1, "sort_key_alt"

    :goto_1
    if-eqz p2, :cond_3

    .line 116
    invoke-virtual {p0}, Lcom/android/dialer/contactsfragment/ContactsFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/dialer/contactsfragment/ContactsCursorLoader;->createInstanceDisplayNamePrimary(Landroid/content/Context;Ljava/lang/String;)Lcom/android/dialer/contactsfragment/ContactsCursorLoader;

    move-result-object p1

    goto :goto_2

    .line 117
    :cond_3
    invoke-virtual {p0}, Lcom/android/dialer/contactsfragment/ContactsFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/dialer/contactsfragment/ContactsCursorLoader;->createInstanceDisplayNameAlternative(Landroid/content/Context;Ljava/lang/String;)Lcom/android/dialer/contactsfragment/ContactsCursorLoader;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c009a

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09015c

    .line 80
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/dialer/contactsfragment/FastScroller;

    iput-object p2, p0, Lcom/android/dialer/contactsfragment/ContactsFragment;->fastScroller:Lcom/android/dialer/contactsfragment/FastScroller;

    const p2, 0x7f09017d

    .line 81
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/dialer/contactsfragment/ContactsFragment;->anchoredHeader:Landroid/widget/TextView;

    const p2, 0x7f090260

    .line 82
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/android/dialer/contactsfragment/ContactsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const p2, 0x7f090148

    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/dialer/widget/EmptyContentView;

    iput-object p2, p0, Lcom/android/dialer/contactsfragment/ContactsFragment;->emptyContentView:Lcom/android/dialer/widget/EmptyContentView;

    const p3, 0x7f0800c3

    .line 85
    invoke-virtual {p2, p3}, Lcom/android/dialer/widget/EmptyContentView;->setImage(I)V

    .line 86
    iget-object p2, p0, Lcom/android/dialer/contactsfragment/ContactsFragment;->emptyContentView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {p2, p0}, Lcom/android/dialer/widget/EmptyContentView;->setActionClickedListener(Lcom/android/dialer/widget/EmptyContentView$OnEmptyViewActionButtonClickedListener;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/dialer/contactsfragment/ContactsFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/dialer/util/PermissionsUtil;->hasContactsReadPermissions(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/android/dialer/contactsfragment/ContactsFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, v0, p3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 91
    :cond_0
    iget-object p2, p0, Lcom/android/dialer/contactsfragment/ContactsFragment;->emptyContentView:Lcom/android/dialer/widget/EmptyContentView;

    const p3, 0x7f11039b

    invoke-virtual {p2, p3}, Lcom/android/dialer/widget/EmptyContentView;->setDescription(I)V

    .line 92
    iget-object p2, p0, Lcom/android/dialer/contactsfragment/ContactsFragment;->emptyContentView:Lcom/android/dialer/widget/EmptyContentView;

    const p3, 0x7f1103a0

    invoke-virtual {p2, p3}, Lcom/android/dialer/widget/EmptyContentView;->setActionLabel(I)V

    .line 93
    iget-object p2, p0, Lcom/android/dialer/contactsfragment/ContactsFragment;->emptyContentView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {p2, v0}, Lcom/android/dialer/widget/EmptyContentView;->setVisibility(I)V

    :goto_0
    return-object p1
.end method

.method public onEmptyViewActionButtonClicked()V
    .locals 4

    .line 208
    iget-object v0, p0, Lcom/android/dialer/contactsfragment/ContactsFragment;->emptyContentView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {v0}, Lcom/android/dialer/widget/EmptyContentView;->getActionLabel()I

    move-result v0

    const v1, 0x7f1103a0

    if-ne v0, v1, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/android/dialer/contactsfragment/ContactsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/util/PermissionsUtil;->allContactsGroupPermissionsUsedInDialer:Ljava/util/List;

    .line 210
    invoke-static {v0, v1}, Lcom/android/dialer/util/PermissionsUtil;->getPermissionsCurrentlyDenied(Landroid/content/Context;Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    .line 212
    array-length v1, v0

    if-lez v1, :cond_1

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requesting permissions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ContactsFragment.onEmptyViewActionButtonClicked"

    .line 213
    invoke-static {v3, v1, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 216
    invoke-static {p0, v0, v1}, Landroidx/legacy/app/FragmentCompat;->requestPermissions(Landroid/app/Fragment;[Ljava/lang/String;I)V

    goto :goto_0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/contactsfragment/ContactsFragment;->emptyContentView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {v0}, Lcom/android/dialer/widget/EmptyContentView;->getActionLabel()I

    move-result v0

    const v1, 0x7f110060

    if-ne v0, v1, :cond_2

    .line 224
    invoke-virtual {p0}, Lcom/android/dialer/contactsfragment/ContactsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/dialer/util/IntentUtil;->getNewContactIntent()Landroid/content/Intent;

    move-result-object v1

    const v2, 0x7f110059

    .line 223
    invoke-static {v0, v1, v2}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "Invalid empty content view action label."

    .line 226
    invoke-static {v0}, Lcom/android/dialer/common/Assert;->createIllegalStateFailException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
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

    const/16 p1, 0x8

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    if-eqz p2, :cond_0

    .line 122
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/contactsfragment/ContactsFragment;->emptyContentView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {v1, p1}, Lcom/android/dialer/widget/EmptyContentView;->setVisibility(I)V

    .line 129
    iget-object p1, p0, Lcom/android/dialer/contactsfragment/ContactsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 130
    new-instance p1, Lcom/android/dialer/contactsfragment/ContactsAdapter;

    invoke-virtual {p0}, Lcom/android/dialer/contactsfragment/ContactsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Lcom/android/dialer/contactsfragment/ContactsAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object p1, p0, Lcom/android/dialer/contactsfragment/ContactsFragment;->adapter:Lcom/android/dialer/contactsfragment/ContactsAdapter;

    .line 131
    new-instance p1, Lcom/android/dialer/contactsfragment/ContactsFragment$1;

    .line 132
    invoke-virtual {p0}, Lcom/android/dialer/contactsfragment/ContactsFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/dialer/contactsfragment/ContactsFragment$1;-><init>(Lcom/android/dialer/contactsfragment/ContactsFragment;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/dialer/contactsfragment/ContactsFragment;->manager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 146
    iget-object p2, p0, Lcom/android/dialer/contactsfragment/ContactsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 147
    iget-object p1, p0, Lcom/android/dialer/contactsfragment/ContactsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/android/dialer/contactsfragment/ContactsFragment;->adapter:Lcom/android/dialer/contactsfragment/ContactsAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 148
    iget-object p1, p0, Lcom/android/dialer/contactsfragment/ContactsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Lcom/android/dialer/performancereport/PerformanceReport;->logOnScrollStateChange(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 149
    iget-object p1, p0, Lcom/android/dialer/contactsfragment/ContactsFragment;->fastScroller:Lcom/android/dialer/contactsfragment/FastScroller;

    iget-object p2, p0, Lcom/android/dialer/contactsfragment/ContactsFragment;->adapter:Lcom/android/dialer/contactsfragment/ContactsAdapter;

    iget-object v0, p0, Lcom/android/dialer/contactsfragment/ContactsFragment;->manager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, p2, v0}, Lcom/android/dialer/contactsfragment/FastScroller;->setup(Lcom/android/dialer/contactsfragment/ContactsAdapter;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    goto :goto_1

    .line 123
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/dialer/contactsfragment/ContactsFragment;->emptyContentView:Lcom/android/dialer/widget/EmptyContentView;

    const v1, 0x7f11005f

    invoke-virtual {p2, v1}, Lcom/android/dialer/widget/EmptyContentView;->setDescription(I)V

    .line 124
    iget-object p2, p0, Lcom/android/dialer/contactsfragment/ContactsFragment;->emptyContentView:Lcom/android/dialer/widget/EmptyContentView;

    const v1, 0x7f110060

    invoke-virtual {p2, v1}, Lcom/android/dialer/widget/EmptyContentView;->setActionLabel(I)V

    .line 125
    iget-object p2, p0, Lcom/android/dialer/contactsfragment/ContactsFragment;->emptyContentView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {p2, v0}, Lcom/android/dialer/widget/EmptyContentView;->setVisibility(I)V

    .line 126
    iget-object p2, p0, Lcom/android/dialer/contactsfragment/ContactsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 51
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/contactsfragment/ContactsFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .line 155
    iget-object p1, p0, Lcom/android/dialer/contactsfragment/ContactsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 156
    iget-object p1, p0, Lcom/android/dialer/contactsfragment/ContactsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 157
    iput-object v0, p0, Lcom/android/dialer/contactsfragment/ContactsFragment;->adapter:Lcom/android/dialer/contactsfragment/ContactsAdapter;

    .line 158
    iget-object p1, p0, Lcom/android/dialer/contactsfragment/ContactsFragment;->contactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {p1}, Lcom/android/contacts/common/preference/ContactsPreferences;->unregisterChangeListener()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 234
    array-length p1, p3

    if-lt p1, p2, :cond_0

    const/4 p1, 0x0

    aget p2, p3, p1

    if-nez p2, :cond_0

    .line 236
    iget-object p2, p0, Lcom/android/dialer/contactsfragment/ContactsFragment;->emptyContentView:Lcom/android/dialer/widget/EmptyContentView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Lcom/android/dialer/widget/EmptyContentView;->setVisibility(I)V

    .line 237
    invoke-virtual {p0}, Lcom/android/dialer/contactsfragment/ContactsFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :cond_0
    return-void
.end method

.method public onScrollChange(Landroid/view/View;IIII)V
    .locals 1

    .line 173
    iget-object p1, p0, Lcom/android/dialer/contactsfragment/ContactsFragment;->fastScroller:Lcom/android/dialer/contactsfragment/FastScroller;

    iget-object p2, p0, Lcom/android/dialer/contactsfragment/ContactsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Lcom/android/dialer/contactsfragment/FastScroller;->updateContainerAndScrollBarPosition(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 174
    iget-object p1, p0, Lcom/android/dialer/contactsfragment/ContactsFragment;->manager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    .line 175
    iget-object p2, p0, Lcom/android/dialer/contactsfragment/ContactsFragment;->manager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    return-void

    .line 180
    :cond_0
    iget-object p3, p0, Lcom/android/dialer/contactsfragment/ContactsFragment;->adapter:Lcom/android/dialer/contactsfragment/ContactsAdapter;

    invoke-virtual {p3, p2}, Lcom/android/dialer/contactsfragment/ContactsAdapter;->getHeaderString(I)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x4

    if-ne p1, p2, :cond_1

    if-nez p1, :cond_1

    .line 186
    iget-object p1, p0, Lcom/android/dialer/contactsfragment/ContactsFragment;->adapter:Lcom/android/dialer/contactsfragment/ContactsAdapter;

    invoke-virtual {p1}, Lcom/android/dialer/contactsfragment/ContactsAdapter;->refreshHeaders()V

    .line 187
    iget-object p1, p0, Lcom/android/dialer/contactsfragment/ContactsFragment;->anchoredHeader:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    .line 189
    iget-object p5, p0, Lcom/android/dialer/contactsfragment/ContactsFragment;->adapter:Lcom/android/dialer/contactsfragment/ContactsAdapter;

    invoke-virtual {p5, p1}, Lcom/android/dialer/contactsfragment/ContactsAdapter;->getHeaderString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    const/4 v0, 0x0

    if-eqz p5, :cond_2

    .line 190
    iget-object p5, p0, Lcom/android/dialer/contactsfragment/ContactsFragment;->anchoredHeader:Landroid/widget/TextView;

    invoke-virtual {p5, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object p3, p0, Lcom/android/dialer/contactsfragment/ContactsFragment;->anchoredHeader:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    invoke-direct {p0, p1}, Lcom/android/dialer/contactsfragment/ContactsFragment;->getContactHolder(I)Lcom/android/dialer/contactsfragment/ContactViewHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/dialer/contactsfragment/ContactViewHolder;->getHeaderView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    invoke-direct {p0, p2}, Lcom/android/dialer/contactsfragment/ContactsFragment;->getContactHolder(I)Lcom/android/dialer/contactsfragment/ContactViewHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/dialer/contactsfragment/ContactViewHolder;->getHeaderView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 195
    :cond_2
    iget-object p3, p0, Lcom/android/dialer/contactsfragment/ContactsFragment;->anchoredHeader:Landroid/widget/TextView;

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    invoke-direct {p0, p1}, Lcom/android/dialer/contactsfragment/ContactsFragment;->getContactHolder(I)Lcom/android/dialer/contactsfragment/ContactViewHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/dialer/contactsfragment/ContactViewHolder;->getHeaderView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    invoke-direct {p0, p2}, Lcom/android/dialer/contactsfragment/ContactsFragment;->getContactHolder(I)Lcom/android/dialer/contactsfragment/ContactViewHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/dialer/contactsfragment/ContactViewHolder;->getHeaderView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method
