.class public abstract Lcom/android/contacts/common/list/ContactEntryListFragment;
.super Landroid/app/Fragment;
.source "ContactEntryListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/ContactEntryListFragment$DelayedDirectorySearchHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/contacts/common/list/ContactEntryListAdapter;",
        ">",
        "Landroid/app/Fragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Landroid/view/View$OnFocusChangeListener;",
        "Landroid/view/View$OnTouchListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_DIRECTORY_RESULT_LIMIT:I = 0x14

.field private static final DIRECTORY_ID_ARG_KEY:Ljava/lang/String; = "directoryId"

.field private static final DIRECTORY_LOADER_ID:I = -0x1

.field private static final DIRECTORY_SEARCH_DELAY_MILLIS:I = 0x12c

.field private static final DIRECTORY_SEARCH_MESSAGE:I = 0x1

.field private static final KEY_ADJUST_SELECTION_BOUNDS_ENABLED:Ljava/lang/String; = "adjustSelectionBoundsEnabled"

.field private static final KEY_DARK_THEME:Ljava/lang/String; = "darkTheme"

.field private static final KEY_DIRECTORY_RESULT_LIMIT:Ljava/lang/String; = "directoryResultLimit"

.field private static final KEY_DIRECTORY_SEARCH_MODE:Ljava/lang/String; = "directorySearchMode"

.field private static final KEY_INCLUDE_PROFILE:Ljava/lang/String; = "includeProfile"

.field private static final KEY_LEGACY_COMPATIBILITY:Ljava/lang/String; = "legacyCompatibility"

.field private static final KEY_LIST_STATE:Ljava/lang/String; = "liststate"

.field private static final KEY_PHOTO_LOADER_ENABLED:Ljava/lang/String; = "photoLoaderEnabled"

.field private static final KEY_QUERY_STRING:Ljava/lang/String; = "queryString"

.field private static final KEY_QUICK_CONTACT_ENABLED:Ljava/lang/String; = "quickContactEnabled"

.field private static final KEY_SCROLLBAR_POSITION:Ljava/lang/String; = "scrollbarPosition"

.field private static final KEY_SEARCH_MODE:Ljava/lang/String; = "searchMode"

.field private static final KEY_SECTION_HEADER_DISPLAY_ENABLED:Ljava/lang/String; = "sectionHeaderDisplayEnabled"

.field private static final KEY_SELECTION_VISIBLE:Ljava/lang/String; = "selectionVisible"

.field private static final KEY_VISIBLE_SCROLLBAR_ENABLED:Ljava/lang/String; = "visibleScrollbarEnabled"

.field private static final STATUS_LOADED:I = 0x2

.field private static final STATUS_LOADING:I = 0x1

.field private static final STATUS_NOT_LOADED:I


# instance fields
.field private mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mAdjustSelectionBoundsEnabled:Z

.field private mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

.field private mContext:Landroid/content/Context;

.field private mDarkTheme:Z

.field private mDelayedDirectorySearchHandler:Landroid/os/Handler;

.field private mDirectoryListStatus:I

.field private mDirectoryResultLimit:I

.field private mDirectorySearchMode:I

.field private mDisplayOrder:I

.field private mEnabled:Z

.field private mForceLoad:Z

.field private mIncludeProfile:Z

.field private mLegacyCompatibility:Z

.field private mListState:Landroid/os/Parcelable;

.field private mListView:Landroid/widget/ListView;

.field private mListViewTopIndex:I

.field private mListViewTopOffset:I

.field private mLoadPriorityDirectoriesOnly:Z

.field private mLoaderManager:Landroid/app/LoaderManager;

.field private mPhotoLoaderEnabled:Z

.field private mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field private mPreferencesChangeListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

.field private mQueryString:Ljava/lang/String;

.field private mQuickContactEnabled:Z

.field private mSearchMode:Z

.field private mSectionHeaderDisplayEnabled:Z

.field private mSelectionVisible:Z

.field private mShowEmptyListForEmptyQuery:Z

.field private mSortOrder:I

.field protected mUserProfileExists:Z

.field private mVerticalScrollbarPosition:I

.field private mView:Landroid/view/View;

.field private mVisibleScrollbarEnabled:Z


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 163
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    .line 93
    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdjustSelectionBoundsEnabled:Z

    .line 98
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getDefaultVerticalScrollbarPosition()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    const/4 v1, 0x0

    .line 100
    iput v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectorySearchMode:I

    .line 103
    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mEnabled:Z

    const/16 v0, 0x14

    .line 116
    iput v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    .line 121
    iput v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 154
    new-instance v0, Lcom/android/contacts/common/list/ContactEntryListFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/list/ContactEntryListFragment$1;-><init>(Lcom/android/contacts/common/list/ContactEntryListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPreferencesChangeListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    .line 164
    new-instance v0, Lcom/android/contacts/common/list/ContactEntryListFragment$DelayedDirectorySearchHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/common/list/ContactEntryListFragment$DelayedDirectorySearchHandler;-><init>(Lcom/android/contacts/common/list/ContactEntryListFragment;Lcom/android/contacts/common/list/ContactEntryListFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    return-void
.end method

.method private configureVerticalScrollbar()V
    .locals 2

    .line 526
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isVisibleScrollbarEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isSectionHeaderDisplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 528
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_1

    .line 529
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 530
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollbarPosition(I)V

    .line 531
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    :cond_1
    return-void
.end method

.method private getDefaultVerticalScrollbarPosition()I
    .locals 2

    .line 851
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 852
    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    return v1
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .line 793
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    .line 794
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 795
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private loadDirectoryPartitionDelayed(ILcom/android/contacts/common/list/DirectoryPartition;)V
    .locals 3

    .line 386
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 387
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    .line 388
    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 390
    iget-object p2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x12c

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private removePendingDirectorySearchRequests()V
    .locals 2

    .line 402
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private startLoadingDirectoryPartition(I)V
    .locals 5

    .line 364
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/DirectoryPartition;

    const/4 v1, 0x1

    .line 365
    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/DirectoryPartition;->setStatus(I)V

    .line 366
    invoke-virtual {v0}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v1

    .line 367
    iget-boolean v3, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mForceLoad:Z

    if-eqz v3, :cond_1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 369
    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->loadDirectoryPartition(ILcom/android/contacts/common/list/DirectoryPartition;)V

    goto :goto_0

    .line 371
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->loadDirectoryPartitionDelayed(ILcom/android/contacts/common/list/DirectoryPartition;)V

    goto :goto_0

    .line 374
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "directoryId"

    .line 375
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 376
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :goto_0
    return-void
.end method


# virtual methods
.method protected completeRestoreInstanceState()V
    .locals 2

    .line 837
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 838
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 v0, 0x0

    .line 839
    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    :cond_0
    return-void
.end method

.method protected configureAdapter()V
    .locals 2

    .line 750
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-nez v0, :cond_0

    return-void

    .line 754
    :cond_0
    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setQuickContactEnabled(Z)V

    .line 755
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdjustSelectionBoundsEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setAdjustSelectionBoundsEnabled(Z)V

    .line 756
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setQueryString(Ljava/lang/String;)V

    .line 757
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectorySearchMode:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setDirectorySearchMode(I)V

    .line 758
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setPinnedPartitionHeadersEnabled(Z)V

    .line 759
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDisplayOrder:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setContactNameDisplayOrder(I)V

    .line 760
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSortOrder(I)V

    .line 761
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 762
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSelectionVisible:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSelectionVisible(Z)V

    .line 763
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setDirectoryResultLimit(I)V

    .line 764
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDarkTheme:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setDarkTheme(Z)V

    return-void
.end method

.method protected configurePhotoLoader()V
    .locals 2

    .line 736
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isPhotoLoaderEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 737
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    if-nez v1, :cond_0

    .line 738
    invoke-static {v0}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 741
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 743
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_2

    .line 744
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setPhotoLoader(Lcom/android/contacts/common/ContactPhotoManager;)V

    :cond_2
    return-void
.end method

.method public createCursorLoader(Landroid/content/Context;)Landroid/content/CursorLoader;
    .locals 9

    .line 346
    new-instance v8, Lcom/android/contacts/common/list/ContactEntryListFragment$2;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/common/list/ContactEntryListFragment$2;-><init>(Lcom/android/contacts/common/list/ContactEntryListFragment;Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method protected abstract createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected finish()V
    .locals 0

    return-void
.end method

.method public getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    return-object v0
.end method

.method protected getContactNameDisplayOrder()I
    .locals 1

    .line 638
    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDisplayOrder:I

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDirectoryLoaderId()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getDirectorySearchMode()I
    .locals 1

    .line 630
    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectorySearchMode:I

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getLoaderManager()Landroid/app/LoaderManager;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mLoaderManager:Landroid/app/LoaderManager;

    return-object v0
.end method

.method public final getQueryString()Ljava/lang/String;
    .locals 1

    .line 592
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    return-object v0
.end method

.method public getShowEmptyListForNullQuery()Z
    .locals 1

    .line 622
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mShowEmptyListForEmptyQuery:Z

    return v0
.end method

.method public getSortOrder()I
    .locals 1

    .line 649
    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSortOrder:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method protected abstract inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public isLoading()Z
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 464
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isLoadingDirectoryList()Z

    move-result v0

    return v0
.end method

.method public isLoadingDirectoryList()Z
    .locals 2

    .line 469
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 470
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getDirectorySearchMode()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryListStatus:I

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isPhotoLoaderEnabled()Z
    .locals 1

    .line 536
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoLoaderEnabled:Z

    return v0
.end method

.method public final isSearchMode()Z
    .locals 1

    .line 553
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSearchMode:Z

    return v0
.end method

.method public isSectionHeaderDisplayEnabled()Z
    .locals 1

    .line 501
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    return v0
.end method

.method public isVisibleScrollbarEnabled()Z
    .locals 1

    .line 515
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    return v0
.end method

.method protected loadDirectoryPartition(ILcom/android/contacts/common/list/DirectoryPartition;)V
    .locals 3

    .line 395
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 396
    invoke-virtual {p2}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v1

    const-string p2, "directoryId"

    invoke-virtual {v0, p2, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 397
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object p2

    invoke-virtual {p2, p1, v0, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method protected loadPreferences()Z
    .locals 4

    .line 665
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getContactNameDisplayOrder()I

    move-result v0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 666
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setContactNameDisplayOrder(I)V

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 670
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getSortOrder()I

    move-result v1

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v3}, Lcom/android/contacts/common/preference/ContactsPreferences;->getSortOrder()I

    move-result v3

    if-eq v1, v3, :cond_1

    .line 671
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getSortOrder()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setSortOrder(I)V

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    return v2
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 179
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 180
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setContext(Landroid/content/Context;)V

    .line 181
    invoke-super {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setLoaderManager(Landroid/app/LoaderManager;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 256
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 257
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 258
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    .line 259
    new-instance p1, Lcom/android/contacts/common/preference/ContactsPreferences;

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/contacts/common/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

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

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 329
    new-instance p1, Lcom/android/contacts/common/list/DirectoryListLoader;

    iget-object p2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/contacts/common/list/DirectoryListLoader;-><init>(Landroid/content/Context;)V

    .line 330
    iget-object p2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getDirectorySearchMode()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/contacts/common/list/DirectoryListLoader;->setDirectorySearchMode(I)V

    const/4 p2, 0x0

    .line 331
    invoke-virtual {p1, p2}, Lcom/android/contacts/common/list/DirectoryListLoader;->setLocalInvisibleDirectoryEnabled(Z)V

    return-object p1

    .line 335
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->createCursorLoader(Landroid/content/Context;)Landroid/content/CursorLoader;

    move-result-object p1

    if-eqz p2, :cond_1

    const-string v0, "directoryId"

    .line 337
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    .line 340
    :goto_0
    iget-object p2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->configureLoader(Landroid/content/CursorLoader;J)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 681
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 683
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isSearchMode()Z

    move-result p1

    .line 684
    iget-object p2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {p2, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSearchMode(Z)V

    .line 685
    iget-object p2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {p2, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->configurePartitionsVisibility(Z)V

    .line 686
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-object p2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {p1, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setPhotoLoader(Lcom/android/contacts/common/ContactPhotoManager;)V

    .line 687
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    iget-object p2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 688
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mView:Landroid/view/View;

    return-object p1
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 1

    .line 692
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mView:Landroid/view/View;

    const p2, 0x102000a

    .line 694
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz p1, :cond_1

    .line 700
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mView:Landroid/view/View;

    const p2, 0x1020004

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 702
    iget-object p2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 705
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 706
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 707
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 708
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isSearchMode()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 712
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 715
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 717
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configureVerticalScrollbar()V

    .line 718
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configurePhotoLoader()V

    .line 720
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setFragmentRootView(Landroid/view/View;)V

    .line 722
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mView:Landroid/view/View;

    invoke-static {p1, p2, v0}, Lcom/android/contacts/common/util/ContactListViewUtils;->applyCardPaddingToView(Landroid/content/res/Resources;Landroid/widget/ListView;Landroid/view/View;)V

    return-void

    .line 696
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 801
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 802
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->hideSoftKeyboard()V

    :cond_0
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2

    .line 727
    invoke-super {p0, p1}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    .line 728
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 731
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/contacts/common/util/ContactListViewUtils;->applyCardPaddingToView(Landroid/content/res/Resources;Landroid/widget/ListView;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected abstract onItemClick(IJ)V
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 783
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->hideSoftKeyboard()V

    .line 784
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "iscontactnumber"

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 785
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result p1

    sub-int/2addr p3, p1

    if-ltz p3, :cond_0

    .line 787
    invoke-virtual {p0, p3, p4, p5}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onItemClick(IJ)V

    :cond_0
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
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

    .line 407
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 411
    :cond_0
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    .line 413
    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 414
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {p1, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->changeDirectories(Landroid/database/Cursor;)V

    .line 415
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->startLoading()V

    goto :goto_0

    .line 417
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onPartitionLoaded(ILandroid/database/Cursor;)V

    .line 418
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isSearchMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 419
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getDirectorySearchMode()I

    move-result p1

    if-eqz p1, :cond_4

    .line 421
    iget p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryListStatus:I

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 422
    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 423
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 425
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->startLoading()V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 429
    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 430
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/LoaderManager;->destroyLoader(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 56
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected onPartitionLoaded(ILandroid/database/Cursor;)V
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-lez p1, :cond_1

    return-void

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 451
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setProfileHeader()V

    .line 453
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isLoading()Z

    move-result p1

    if-nez p1, :cond_2

    .line 454
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->completeRestoreInstanceState()V

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 818
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListViewTopIndex:I

    .line 819
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 820
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v1

    sub-int v1, v0, v1

    :goto_0
    iput v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListViewTopOffset:I

    .line 822
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 823
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->removePendingDirectorySearchRequests()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 828
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 832
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListViewTopIndex:I

    iget v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListViewTopOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 233
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 234
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    const-string v1, "sectionHeaderDisplayEnabled"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 235
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoLoaderEnabled:Z

    const-string v1, "photoLoaderEnabled"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 236
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    const-string v1, "quickContactEnabled"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 237
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdjustSelectionBoundsEnabled:Z

    const-string v1, "adjustSelectionBoundsEnabled"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 238
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mIncludeProfile:Z

    const-string v1, "includeProfile"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 239
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSearchMode:Z

    const-string v1, "searchMode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 240
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    const-string/jumbo v1, "visibleScrollbarEnabled"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 241
    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    const-string v1, "scrollbarPosition"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 242
    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectorySearchMode:I

    const-string v1, "directorySearchMode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 243
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSelectionVisible:Z

    const-string v1, "selectionVisible"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 244
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mLegacyCompatibility:Z

    const-string v1, "legacyCompatibility"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 245
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    const-string v1, "queryString"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    const-string v1, "directoryResultLimit"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 247
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDarkTheme:Z

    const-string v1, "darkTheme"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 249
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {v0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    const-string v1, "liststate"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .line 773
    invoke-static {p2}, Lcom/android/dialer/performancereport/PerformanceReport;->recordScrollStateChange(I)V

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    .line 775
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {p1}, Lcom/android/contacts/common/ContactPhotoManager;->pause()V

    goto :goto_0

    .line 776
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isPhotoLoaderEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 777
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {p1}, Lcom/android/contacts/common/ContactPhotoManager;->resume()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 288
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 290
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPreferencesChangeListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/preference/ContactsPreferences;->registerChangeListener(Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;)V

    .line 292
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->loadPreferences()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mForceLoad:Z

    const/4 v0, 0x0

    .line 294
    iput v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryListStatus:I

    const/4 v0, 0x1

    .line 295
    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    .line 297
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->startLoading()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 476
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 477
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->unregisterChangeListener()V

    .line 478
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->clearPartitions()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 809
    iget-object p2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-ne p1, p2, :cond_0

    .line 810
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->hideSoftKeyboard()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected reloadData()V
    .locals 1

    .line 482
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->removePendingDirectorySearchRequests()V

    .line 483
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->onDataReload()V

    const/4 v0, 0x1

    .line 484
    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    .line 485
    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mForceLoad:Z

    .line 486
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->startLoading()V

    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "sectionHeaderDisplayEnabled"

    .line 267
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    const-string v0, "photoLoaderEnabled"

    .line 268
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoLoaderEnabled:Z

    const-string v0, "quickContactEnabled"

    .line 269
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    const-string v0, "adjustSelectionBoundsEnabled"

    .line 270
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdjustSelectionBoundsEnabled:Z

    const-string v0, "includeProfile"

    .line 271
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mIncludeProfile:Z

    const-string v0, "searchMode"

    .line 272
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSearchMode:Z

    const-string/jumbo v0, "visibleScrollbarEnabled"

    .line 273
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    const-string v0, "scrollbarPosition"

    .line 274
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    const-string v0, "directorySearchMode"

    .line 275
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectorySearchMode:I

    const-string v0, "selectionVisible"

    .line 276
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSelectionVisible:Z

    const-string v0, "legacyCompatibility"

    .line 277
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mLegacyCompatibility:Z

    const-string v0, "queryString"

    .line 278
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    const-string v0, "directoryResultLimit"

    .line 279
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    const-string v0, "darkTheme"

    .line 280
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDarkTheme:Z

    const-string v0, "liststate"

    .line 283
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    return-void
.end method

.method public setAdjustSelectionBoundsEnabled(Z)V
    .locals 0

    .line 549
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdjustSelectionBoundsEnabled:Z

    return-void
.end method

.method protected setContactNameDisplayOrder(I)V
    .locals 1

    .line 642
    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDisplayOrder:I

    .line 643
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 644
    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setContactNameDisplayOrder(I)V

    :cond_0
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    .line 192
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configurePhotoLoader()V

    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 1

    .line 844
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDarkTheme:Z

    .line 845
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 846
    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setDarkTheme(Z)V

    :cond_0
    return-void
.end method

.method public setDirectoryResultLimit(I)V
    .locals 0

    .line 660
    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    return-void
.end method

.method public setDirectorySearchMode(I)V
    .locals 0

    .line 634
    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectorySearchMode:I

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 196
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mEnabled:Z

    if-eq v0, p1, :cond_1

    .line 197
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mEnabled:Z

    .line 198
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->reloadData()V

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->clearPartitions()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setLoaderManager(Landroid/app/LoaderManager;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mLoaderManager:Landroid/app/LoaderManager;

    return-void
.end method

.method public setPhotoLoaderEnabled(Z)V
    .locals 0

    .line 540
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoLoaderEnabled:Z

    .line 541
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configurePhotoLoader()V

    return-void
.end method

.method protected setProfileHeader()V
    .locals 1

    const/4 v0, 0x0

    .line 494
    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mUserProfileExists:Z

    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 2

    .line 596
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 597
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mShowEmptyListForEmptyQuery:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 598
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 601
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 603
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 607
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    .line 608
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mShowEmptyListForEmptyQuery:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setSearchMode(Z)V

    .line 610
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_4

    .line 611
    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setQueryString(Ljava/lang/String;)V

    .line 612
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->reloadData()V

    :cond_4
    return-void
.end method

.method public setQuickContactEnabled(Z)V
    .locals 0

    .line 545
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    return-void
.end method

.method protected setSearchMode(Z)V
    .locals 2

    .line 563
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSearchMode:Z

    if-eq v0, p1, :cond_3

    .line 564
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSearchMode:Z

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 567
    iput v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 568
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_2

    .line 572
    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSearchMode(Z)V

    .line 574
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->clearPartitions()V

    if-nez p1, :cond_1

    .line 579
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->removeDirectoriesAfterDefault()V

    .line 581
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->configurePartitionsVisibility(Z)V

    .line 584
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_3

    xor-int/lit8 p1, p1, 0x1

    .line 585
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    :cond_3
    return-void
.end method

.method public setSectionHeaderDisplayEnabled(Z)V
    .locals 1

    .line 505
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    if-eq v0, p1, :cond_1

    .line 506
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    .line 507
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 510
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configureVerticalScrollbar()V

    :cond_1
    return-void
.end method

.method public setShowEmptyListForNullQuery(Z)V
    .locals 0

    .line 618
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mShowEmptyListForEmptyQuery:Z

    return-void
.end method

.method public setSortOrder(I)V
    .locals 1

    .line 653
    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSortOrder:I

    .line 654
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 655
    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSortOrder(I)V

    :cond_0
    return-void
.end method

.method public setVisibleScrollbarEnabled(Z)V
    .locals 1

    .line 519
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    if-eq v0, p1, :cond_0

    .line 520
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    .line 521
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configureVerticalScrollbar()V

    :cond_0
    return-void
.end method

.method protected startLoading()V
    .locals 5

    .line 301
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-nez v0, :cond_0

    return-void

    .line 306
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configureAdapter()V

    .line 307
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    .line 309
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v3, v2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v3

    .line 310
    instance-of v4, v3, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v4, :cond_2

    .line 311
    check-cast v3, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 312
    invoke-virtual {v3}, Lcom/android/contacts/common/list/DirectoryPartition;->getStatus()I

    move-result v4

    if-nez v4, :cond_3

    .line 313
    invoke-virtual {v3}, Lcom/android/contacts/common/list/DirectoryPartition;->isPriorityDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    if-nez v3, :cond_3

    .line 314
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->startLoadingDirectoryPartition(I)V

    goto :goto_1

    .line 318
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 323
    :cond_4
    iput-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    return-void
.end method
