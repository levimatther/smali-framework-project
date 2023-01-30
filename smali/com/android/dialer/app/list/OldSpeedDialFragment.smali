.class public Lcom/android/dialer/app/list/OldSpeedDialFragment;
.super Landroid/app/Fragment;
.source "OldSpeedDialFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;
.implements Lcom/android/dialer/widget/EmptyContentView$OnEmptyViewActionButtonClickedListener;
.implements Landroidx/legacy/app/FragmentCompat$OnRequestPermissionsResultCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/app/list/OldSpeedDialFragment$ScrollListener;,
        Lcom/android/dialer/app/list/OldSpeedDialFragment$ContactTileAdapterListener;,
        Lcom/android/dialer/app/list/OldSpeedDialFragment$ContactTileLoaderListener;,
        Lcom/android/dialer/app/list/OldSpeedDialFragment$HostInterface;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final KEY_REMOVED_ITEM_HEIGHT:J = 0x7fffffffffffffffL

.field private static final LOADER_ID_CONTACT_TILE:I = 0x1

.field private static final READ_CONTACTS_PERMISSION_REQUEST_CODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OldSpeedDialFragment"


# instance fields
.field private mActivityScrollListener:Lcom/android/dialer/app/list/OnListFragmentScrolledListener;

.field private mAnimationDuration:I

.field private mContactTileAdapter:Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;

.field private final mContactTileAdapterListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

.field private mContactTileFrame:Landroid/view/View;

.field private final mContactTileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

.field private final mItemIdLeftMap:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mItemIdTopMap:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Lcom/android/dialer/app/list/PhoneFavoriteListView;

.field private mParentView:Landroid/view/View;

.field private mPhoneNumberPickerActionListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

.field private final mScrollListener:Lcom/android/dialer/app/list/OldSpeedDialFragment$ScrollListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 84
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mItemIdTopMap:Landroidx/collection/LongSparseArray;

    .line 85
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mItemIdLeftMap:Landroidx/collection/LongSparseArray;

    .line 86
    new-instance v0, Lcom/android/dialer/app/list/OldSpeedDialFragment$ContactTileAdapterListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/app/list/OldSpeedDialFragment$ContactTileAdapterListener;-><init>(Lcom/android/dialer/app/list/OldSpeedDialFragment;Lcom/android/dialer/app/list/OldSpeedDialFragment$1;)V

    iput-object v0, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mContactTileAdapterListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    .line 88
    new-instance v0, Lcom/android/dialer/app/list/OldSpeedDialFragment$ContactTileLoaderListener;

    invoke-direct {v0, p0}, Lcom/android/dialer/app/list/OldSpeedDialFragment$ContactTileLoaderListener;-><init>(Lcom/android/dialer/app/list/OldSpeedDialFragment;)V

    iput-object v0, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mContactTileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 90
    new-instance v0, Lcom/android/dialer/app/list/OldSpeedDialFragment$ScrollListener;

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/app/list/OldSpeedDialFragment$ScrollListener;-><init>(Lcom/android/dialer/app/list/OldSpeedDialFragment;Lcom/android/dialer/app/list/OldSpeedDialFragment$1;)V

    iput-object v0, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mScrollListener:Lcom/android/dialer/app/list/OldSpeedDialFragment$ScrollListener;

    return-void
.end method

.method static synthetic access$200(Lcom/android/dialer/app/list/OldSpeedDialFragment;)Lcom/android/dialer/app/list/PhoneFavoriteListView;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mListView:Lcom/android/dialer/app/list/PhoneFavoriteListView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/dialer/app/list/OldSpeedDialFragment;)Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mContactTileAdapter:Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/dialer/app/list/OldSpeedDialFragment;[JJ)Z
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/android/dialer/app/list/OldSpeedDialFragment;->containsId([JJ)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/android/dialer/app/list/OldSpeedDialFragment;)Landroidx/collection/LongSparseArray;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mItemIdTopMap:Landroidx/collection/LongSparseArray;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/dialer/app/list/OldSpeedDialFragment;)Landroidx/collection/LongSparseArray;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mItemIdLeftMap:Landroidx/collection/LongSparseArray;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/dialer/app/list/OldSpeedDialFragment;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mAnimationDuration:I

    return p0
.end method

.method static synthetic access$800(Lcom/android/dialer/app/list/OldSpeedDialFragment;)Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mPhoneNumberPickerActionListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/dialer/app/list/OldSpeedDialFragment;)Lcom/android/dialer/app/list/OnListFragmentScrolledListener;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mActivityScrollListener:Lcom/android/dialer/app/list/OnListFragmentScrolledListener;

    return-object p0
.end method

.method private varargs animateGridView([J)V
    .locals 3

    .line 299
    iget-object v0, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mItemIdTopMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mListView:Lcom/android/dialer/app/list/PhoneFavoriteListView;

    const/4 v1, 0x1

    new-instance v2, Lcom/android/dialer/app/list/OldSpeedDialFragment$1;

    invoke-direct {v2, p0, p1}, Lcom/android/dialer/app/list/OldSpeedDialFragment$1;-><init>(Lcom/android/dialer/app/list/OldSpeedDialFragment;[J)V

    invoke-static {v0, v1, v2}, Lcom/android/dialer/util/ViewUtil;->doOnPreDraw(Landroid/view/View;ZLjava/lang/Runnable;)V

    return-void
.end method

.method private containsId([JJ)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 382
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 383
    aget-wide v2, p1, v1

    cmp-long v2, v2, p2

    if-nez v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private saveOffsets(I)V
    .locals 7

    .line 270
    iget-object v0, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mListView:Lcom/android/dialer/app/list/PhoneFavoriteListView;

    invoke-virtual {v0}, Lcom/android/dialer/app/list/PhoneFavoriteListView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v1, 0x0

    .line 274
    :goto_0
    iget-object v2, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mListView:Lcom/android/dialer/app/list/PhoneFavoriteListView;

    invoke-virtual {v2}, Lcom/android/dialer/app/list/PhoneFavoriteListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 275
    iget-object v2, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mListView:Lcom/android/dialer/app/list/PhoneFavoriteListView;

    invoke-virtual {v2, v1}, Lcom/android/dialer/app/list/PhoneFavoriteListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    add-int v3, v0, v1

    .line 280
    iget-object v4, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mContactTileAdapter:Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;

    invoke-virtual {v4, v3}, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->isIndexInBound(I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 283
    :cond_0
    iget-object v4, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mContactTileAdapter:Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;

    invoke-virtual {v4, v3}, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->getItemId(I)J

    move-result-wide v3

    .line 289
    iget-object v5, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mItemIdTopMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v3, v4, v6}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 290
    iget-object v5, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mItemIdLeftMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v3, v4, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mItemIdTopMap:Landroidx/collection/LongSparseArray;

    const-wide v1, 0x7fffffffffffffffL

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public cacheOffsetsForDatasetChange()V
    .locals 1

    const/4 v0, 0x0

    .line 397
    invoke-direct {p0, v0}, Lcom/android/dialer/app/list/OldSpeedDialFragment;->saveOffsets(I)V

    return-void
.end method

.method public hasFrequents()Z
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mContactTileAdapter:Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 189
    :cond_0
    invoke-virtual {v0}, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->getNumFrequents()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "OldSpeedDialFragment onCreate"

    .line 106
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 107
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 112
    new-instance p1, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;

    .line 113
    invoke-virtual {p0}, Lcom/android/dialer/app/list/OldSpeedDialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mContactTileAdapterListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    invoke-direct {p1, v0, v1, p0}, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/common/list/ContactTileView$Listener;Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;)V

    iput-object p1, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mContactTileAdapter:Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;

    .line 114
    invoke-virtual {p0}, Lcom/android/dialer/app/list/OldSpeedDialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->setPhotoLoader(Lcom/android/contacts/common/ContactPhotoManager;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/dialer/app/list/OldSpeedDialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0a0017

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mAnimationDuration:I

    .line 116
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "OldSpeedDialFragment onCreateView"

    .line 146
    invoke-static {p3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const p3, 0x7f0c0106

    const/4 v0, 0x0

    .line 147
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mParentView:Landroid/view/View;

    const p2, 0x7f0900e6

    .line 149
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/app/list/PhoneFavoriteListView;

    iput-object p1, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mListView:Lcom/android/dialer/app/list/PhoneFavoriteListView;

    .line 150
    invoke-virtual {p1, p0}, Lcom/android/dialer/app/list/PhoneFavoriteListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 151
    iget-object p1, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mListView:Lcom/android/dialer/app/list/PhoneFavoriteListView;

    invoke-virtual {p1, v0}, Lcom/android/dialer/app/list/PhoneFavoriteListView;->setVerticalScrollBarEnabled(Z)V

    .line 152
    iget-object p1, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mListView:Lcom/android/dialer/app/list/PhoneFavoriteListView;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/android/dialer/app/list/PhoneFavoriteListView;->setVerticalScrollbarPosition(I)V

    .line 153
    iget-object p1, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mListView:Lcom/android/dialer/app/list/PhoneFavoriteListView;

    const/high16 p2, 0x2000000

    invoke-virtual {p1, p2}, Lcom/android/dialer/app/list/PhoneFavoriteListView;->setScrollBarStyle(I)V

    .line 154
    iget-object p1, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mListView:Lcom/android/dialer/app/list/PhoneFavoriteListView;

    invoke-virtual {p1}, Lcom/android/dialer/app/list/PhoneFavoriteListView;->getDragDropController()Lcom/android/dialer/app/list/DragDropController;

    move-result-object p1

    iget-object p2, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mContactTileAdapter:Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;

    invoke-virtual {p1, p2}, Lcom/android/dialer/app/list/DragDropController;->addOnDragDropListener(Lcom/android/dialer/app/list/OnDragDropListener;)V

    .line 157
    invoke-virtual {p0}, Lcom/android/dialer/app/list/OldSpeedDialFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const p2, 0x7f0900e3

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 158
    iget-object p2, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mListView:Lcom/android/dialer/app/list/PhoneFavoriteListView;

    invoke-virtual {p2, p1}, Lcom/android/dialer/app/list/PhoneFavoriteListView;->setDragShadowOverlay(Landroid/widget/ImageView;)V

    .line 160
    iget-object p1, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mParentView:Landroid/view/View;

    const p2, 0x7f090148

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/widget/EmptyContentView;

    iput-object p1, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    const p2, 0x7f0800c5

    .line 161
    invoke-virtual {p1, p2}, Lcom/android/dialer/widget/EmptyContentView;->setImage(I)V

    .line 162
    iget-object p1, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {p1, p0}, Lcom/android/dialer/widget/EmptyContentView;->setActionClickedListener(Lcom/android/dialer/widget/EmptyContentView$OnEmptyViewActionButtonClickedListener;)V

    .line 164
    iget-object p1, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mParentView:Landroid/view/View;

    const p2, 0x7f0900e4

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mContactTileFrame:Landroid/view/View;

    .line 166
    new-instance p1, Landroid/view/animation/LayoutAnimationController;

    .line 168
    invoke-virtual {p0}, Lcom/android/dialer/app/list/OldSpeedDialFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const/high16 p3, 0x10a0000

    invoke-static {p2, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    const/4 p2, 0x0

    .line 169
    invoke-virtual {p1, p2}, Landroid/view/animation/LayoutAnimationController;->setDelay(F)V

    .line 170
    iget-object p2, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mListView:Lcom/android/dialer/app/list/PhoneFavoriteListView;

    invoke-virtual {p2, p1}, Lcom/android/dialer/app/list/PhoneFavoriteListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 171
    iget-object p1, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mListView:Lcom/android/dialer/app/list/PhoneFavoriteListView;

    iget-object p2, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mContactTileAdapter:Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;

    invoke-virtual {p1, p2}, Lcom/android/dialer/app/list/PhoneFavoriteListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 173
    iget-object p1, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mListView:Lcom/android/dialer/app/list/PhoneFavoriteListView;

    iget-object p2, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mScrollListener:Lcom/android/dialer/app/list/OldSpeedDialFragment$ScrollListener;

    invoke-virtual {p1, p2}, Lcom/android/dialer/app/list/PhoneFavoriteListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 174
    iget-object p1, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mListView:Lcom/android/dialer/app/list/PhoneFavoriteListView;

    invoke-virtual {p1, v0}, Lcom/android/dialer/app/list/PhoneFavoriteListView;->setFastScrollEnabled(Z)V

    .line 175
    iget-object p1, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mListView:Lcom/android/dialer/app/list/PhoneFavoriteListView;

    invoke-virtual {p1, v0}, Lcom/android/dialer/app/list/PhoneFavoriteListView;->setFastScrollAlwaysVisible(Z)V

    .line 178
    iget-object p1, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mListView:Lcom/android/dialer/app/list/PhoneFavoriteListView;

    invoke-virtual {p1, v0}, Lcom/android/dialer/app/list/PhoneFavoriteListView;->setAccessibilityLiveRegion(I)V

    .line 179
    iget-object p1, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mListView:Lcom/android/dialer/app/list/PhoneFavoriteListView;

    invoke-static {p1}, Lcom/android/dialer/app/list/ContentChangedFilter;->addToParent(Landroid/view/View;)V

    .line 181
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 182
    iget-object p1, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mParentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs onDataSetChangedForAnimation([J)V
    .locals 0

    .line 392
    invoke-direct {p0, p1}, Lcom/android/dialer/app/list/OldSpeedDialFragment;->animateGridView([J)V

    return-void
.end method

.method public onEmptyViewActionButtonClicked()V
    .locals 4

    .line 402
    invoke-virtual {p0}, Lcom/android/dialer/app/list/OldSpeedDialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 409
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/app/list/OldSpeedDialFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/dialer/util/PermissionsUtil;->allContactsGroupPermissionsUsedInDialer:Ljava/util/List;

    .line 408
    invoke-static {v1, v2}, Lcom/android/dialer/util/PermissionsUtil;->getPermissionsCurrentlyDenied(Landroid/content/Context;Ljava/util/List;)[Ljava/lang/String;

    move-result-object v1

    .line 410
    array-length v2, v1

    if-lez v2, :cond_1

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requesting permissions: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "OldSpeedDialFragment.onEmptyViewActionButtonClicked"

    .line 411
    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 414
    invoke-static {p0, v1, v0}, Landroidx/legacy/app/FragmentCompat;->requestPermissions(Landroid/app/Fragment;[Ljava/lang/String;I)V

    goto :goto_0

    .line 418
    :cond_1
    check-cast v0, Lcom/android/dialer/app/list/OldSpeedDialFragment$HostInterface;

    invoke-interface {v0}, Lcom/android/dialer/app/list/OldSpeedDialFragment$HostInterface;->showAllContactsTab()V

    :goto_0
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

    .line 253
    iget-object p1, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mContactTileAdapter:Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;

    invoke-virtual {p1}, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->getCount()I

    move-result p1

    if-gt p3, p1, :cond_0

    .line 255
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "event for unexpected position. The position "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is before \"all\" section. Ignored."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "OldSpeedDialFragment.onItemClick"

    invoke-static {p3, p1, p2}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 426
    array-length p1, p3

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_0

    .line 427
    invoke-virtual {p0}, Lcom/android/dialer/app/list/OldSpeedDialFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string p2, "android.permission.READ_CONTACTS"

    invoke-static {p1, p2}, Lcom/android/dialer/util/PermissionsUtil;->notifyPermissionGranted(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    const-string v0, "OldSpeedDialFragment onResume"

    .line 121
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 122
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 123
    iget-object v0, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mContactTileAdapter:Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->refreshContactsPreferences()V

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/app/list/OldSpeedDialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/util/PermissionsUtil;->hasContactsReadPermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    invoke-virtual {p0}, Lcom/android/dialer/app/list/OldSpeedDialFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    if-nez v0, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/android/dialer/app/list/OldSpeedDialFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mContactTileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/app/list/OldSpeedDialFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Loader;->forceLoad()V

    .line 134
    :goto_0
    iget-object v0, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    const v1, 0x7f110479

    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/EmptyContentView;->setDescription(I)V

    .line 135
    iget-object v0, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    const v1, 0x7f11047a

    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/EmptyContentView;->setActionLabel(I)V

    goto :goto_1

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    const v1, 0x7f11039d

    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/EmptyContentView;->setDescription(I)V

    .line 138
    iget-object v0, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    const v1, 0x7f1103a0

    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/EmptyContentView;->setActionLabel(I)V

    .line 140
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 208
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 210
    invoke-virtual {p0}, Lcom/android/dialer/app/list/OldSpeedDialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 213
    :try_start_0
    move-object v1, v0

    check-cast v1, Lcom/android/dialer/app/list/OnListFragmentScrolledListener;

    iput-object v1, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mActivityScrollListener:Lcom/android/dialer/app/list/OnListFragmentScrolledListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    .line 220
    :try_start_1
    move-object v1, v0

    check-cast v1, Lcom/android/dialer/app/list/OnDragDropListener;

    .line 221
    iget-object v2, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mListView:Lcom/android/dialer/app/list/PhoneFavoriteListView;

    invoke-virtual {v2}, Lcom/android/dialer/app/list/PhoneFavoriteListView;->getDragDropController()Lcom/android/dialer/app/list/DragDropController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/dialer/app/list/DragDropController;->addOnDragDropListener(Lcom/android/dialer/app/list/OnDragDropListener;)V

    .line 222
    move-object v1, v0

    check-cast v1, Lcom/android/dialer/app/list/OldSpeedDialFragment$HostInterface;

    iget-object v2, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mListView:Lcom/android/dialer/app/list/PhoneFavoriteListView;

    invoke-virtual {v2}, Lcom/android/dialer/app/list/PhoneFavoriteListView;->getDragDropController()Lcom/android/dialer/app/list/DragDropController;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/dialer/app/list/OldSpeedDialFragment$HostInterface;->setDragDropController(Lcom/android/dialer/app/list/DragDropController;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 229
    :try_start_2
    move-object v1, v0

    check-cast v1, Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    iput-object v1, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mPhoneNumberPickerActionListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    .line 238
    invoke-static {v0}, Lcom/android/dialer/util/PermissionsUtil;->hasContactsReadPermissions(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/android/dialer/app/list/OldSpeedDialFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mContactTileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 241
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/dialer/app/list/OldSpeedDialFragment;->setEmptyViewVisibility(Z)V

    :goto_0
    return-void

    .line 231
    :catch_0
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " must implement PhoneFavoritesFragment.listener"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 224
    :catch_1
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " must implement OnDragDropListener and HostInterface"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 215
    :catch_2
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " must implement OnListFragmentScrolledListener"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method setEmptyViewVisibility(Z)V
    .locals 4

    .line 193
    iget-object v0, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {v0}, Lcom/android/dialer/widget/EmptyContentView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    if-eq v0, v3, :cond_3

    .line 198
    iget-object v0, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mContactTileFrame:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_2

    const/4 p1, -0x2

    goto :goto_1

    :cond_2
    const/4 p1, -0x1

    .line 199
    :goto_1
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 200
    iget-object p1, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mContactTileFrame:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    iget-object p1, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {p1, v3}, Lcom/android/dialer/widget/EmptyContentView;->setVisibility(I)V

    .line 202
    iget-object p1, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment;->mListView:Lcom/android/dialer/app/list/PhoneFavoriteListView;

    invoke-virtual {p1, v1}, Lcom/android/dialer/app/list/PhoneFavoriteListView;->setVisibility(I)V

    :cond_3
    return-void
.end method
