.class public Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;
.super Landroid/widget/BaseAdapter;
.source "PhoneFavoritesTileAdapter.java"

# interfaces
.implements Lcom/android/dialer/app/list/OnDragDropListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter$ViewTypes;,
        Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final PIN_LIMIT:I = 0x15

.field private static final TAG:Ljava/lang/String;

.field private static final TILES_SOFT_LIMIT:I = 0x14


# instance fields
.field private mAwaitingRemove:Z

.field private mContactEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/contacts/common/list/ContactEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mContactEntryComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/contacts/common/list/ContactEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

.field private mContext:Landroid/content/Context;

.field private mDataSetChangedListener:Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;

.field private mDelayCursorUpdates:Z

.field private mDragEnteredEntryIndex:I

.field private mDraggedEntry:Lcom/android/contacts/common/list/ContactEntry;

.field private mDraggedEntryIndex:I

.field private mDropEntryIndex:I

.field private mInDragging:Z

.field private mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

.field private mNumFrequents:I

.field private mNumStarred:I

.field private mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    const-class v0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/common/list/ContactTileView$Listener;Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;)V
    .locals 2

    .line 118
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    .line 81
    new-instance v1, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter$1;-><init>(Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;)V

    iput-object v1, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mContactEntryComparator:Ljava/util/Comparator;

    .line 100
    iput-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mDraggedEntry:Lcom/android/contacts/common/list/ContactEntry;

    const/4 v0, -0x1

    .line 102
    iput v0, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mDraggedEntryIndex:I

    .line 104
    iput v0, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mDropEntryIndex:I

    .line 106
    iput v0, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mAwaitingRemove:Z

    .line 109
    iput-boolean v0, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mDelayCursorUpdates:Z

    .line 113
    iput-boolean v0, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mInDragging:Z

    .line 119
    iput-object p3, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mDataSetChangedListener:Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;

    .line 120
    iput-object p2, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    .line 121
    iput-object p1, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mContext:Landroid/content/Context;

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mResources:Landroid/content/res/Resources;

    .line 123
    new-instance p1, Lcom/android/contacts/common/preference/ContactsPreferences;

    iget-object p2, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/contacts/common/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    .line 124
    iput v0, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mNumFrequents:I

    .line 125
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;)Lcom/android/contacts/common/preference/ContactsPreferences;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    return-object p0
.end method

.method private arrangeContactsByPinnedPosition(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/contacts/common/list/ContactEntry;",
            ">;)V"
        }
    .end annotation

    .line 561
    new-instance v0, Ljava/util/PriorityQueue;

    iget-object v1, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mContactEntryComparator:Ljava/util/Comparator;

    const/16 v2, 0x15

    invoke-direct {v0, v2, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 564
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 566
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    .line 568
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/list/ContactEntry;

    .line 570
    iget v7, v6, Lcom/android/contacts/common/list/ContactEntry;->pinned:I

    if-gt v7, v2, :cond_1

    iget v7, v6, Lcom/android/contacts/common/list/ContactEntry;->pinned:I

    if-nez v7, :cond_0

    goto :goto_1

    .line 572
    :cond_0
    iget v7, v6, Lcom/android/contacts/common/list/ContactEntry;->pinned:I

    const/4 v8, -0x1

    if-le v7, v8, :cond_2

    .line 577
    invoke-virtual {v0, v6}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 571
    :cond_1
    :goto_1
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 581
    :cond_3
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v3, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 583
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x1

    move v5, v3

    :goto_3
    add-int/lit8 v6, v2, 0x1

    if-ge v5, v6, :cond_6

    .line 585
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/list/ContactEntry;

    iget v6, v6, Lcom/android/contacts/common/list/ContactEntry;->pinned:I

    if-gt v6, v5, :cond_4

    .line 586
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/list/ContactEntry;

    .line 587
    iput v5, v6, Lcom/android/contacts/common/list/ContactEntry;->pinned:I

    .line 588
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 589
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 590
    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 598
    :cond_6
    :goto_5
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 599
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/list/ContactEntry;

    .line 600
    iput v4, v2, Lcom/android/contacts/common/list/ContactEntry;->pinned:I

    .line 601
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 606
    :cond_7
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private getNumStarredContacts(Landroid/database/Cursor;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 354
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "starred"

    .line 355
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 357
    :cond_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_2

    .line 358
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result p1

    return p1

    .line 360
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 364
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    return p1
.end method

.method private getReflowedPinningOperations(Ljava/util/ArrayList;II)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/contacts/common/list/ContactEntry;",
            ">;II)",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    .line 622
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 623
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 624
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    :goto_0
    if-gt v1, p2, :cond_1

    .line 626
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/contacts/common/list/ContactEntry;

    add-int/lit8 v1, v1, 0x1

    .line 631
    iget v2, p3, Lcom/android/contacts/common/list/ContactEntry;->pinned:I

    if-ne v2, v1, :cond_0

    goto :goto_0

    .line 635
    :cond_0
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p3, Lcom/android/contacts/common/list/ContactEntry;->id:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 636
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 637
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "pinned"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 638
    invoke-static {p3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private handleDrop()V
    .locals 3

    .line 503
    iget-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mDraggedEntry:Lcom/android/contacts/common/list/ContactEntry;

    if-eqz v0, :cond_3

    .line 504
    iget v0, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    invoke-virtual {p0, v0}, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->isIndexInBound(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    iget v1, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mDraggedEntryIndex:I

    if-eq v0, v1, :cond_0

    .line 508
    iput v0, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mDropEntryIndex:I

    .line 509
    iget-object v1, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mDraggedEntry:Lcom/android/contacts/common/list/ContactEntry;

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 510
    iget-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mDataSetChangedListener:Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;

    invoke-interface {v0}, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;->cacheOffsetsForDatasetChange()V

    const/4 v0, 0x1

    goto :goto_0

    .line 512
    :cond_0
    iget v0, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mDraggedEntryIndex:I

    invoke-virtual {p0, v0}, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->isIndexInBound(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 515
    iget-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 516
    iget-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mDraggedEntryIndex:I

    iget-object v2, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mDraggedEntry:Lcom/android/contacts/common/list/ContactEntry;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 517
    iget v0, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mDraggedEntryIndex:I

    iput v0, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mDropEntryIndex:I

    .line 518
    invoke-virtual {p0}, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->notifyDataSetChanged()V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 521
    iget v0, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mDropEntryIndex:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_2

    .line 522
    iget-object v1, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mDraggedEntryIndex:I

    .line 523
    invoke-direct {p0, v1, v2, v0}, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->getReflowedPinningOperations(Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object v0

    .line 524
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 527
    :try_start_0
    iget-object v1, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.android.contacts"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 528
    iget-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/InteractionEvent$Type;->SPEED_DIAL_PIN_CONTACT:Lcom/android/dialer/logging/InteractionEvent$Type;

    invoke-interface {v0, v1}, Lcom/android/dialer/logging/LoggingBindings;->logInteraction(Lcom/android/dialer/logging/InteractionEvent$Type;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 530
    :goto_1
    sget-object v1, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Exception thrown when pinning contacts"

    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    const/4 v0, 0x0

    .line 534
    iput-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mDraggedEntry:Lcom/android/contacts/common/list/ContactEntry;

    :cond_3
    return-void
.end method

.method private markDropArea(I)V
    .locals 2

    .line 486
    iget-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mDraggedEntry:Lcom/android/contacts/common/list/ContactEntry;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    .line 487
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->isIndexInBound(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->isIndexInBound(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mDataSetChangedListener:Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;

    invoke-interface {v0}, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;->cacheOffsetsForDatasetChange()V

    .line 491
    iget-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 492
    iput p1, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    .line 493
    iget-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/contacts/common/list/ContactEntry;->BLANK_ENTRY:Lcom/android/contacts/common/list/ContactEntry;

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 494
    sget-object p1, Lcom/android/contacts/common/list/ContactEntry;->BLANK_ENTRY:Lcom/android/contacts/common/list/ContactEntry;

    iget-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mDraggedEntry:Lcom/android/contacts/common/list/ContactEntry;

    iget-wide v0, v0, Lcom/android/contacts/common/list/ContactEntry;->id:J

    iput-wide v0, p1, Lcom/android/contacts/common/list/ContactEntry;->id:J

    .line 495
    iget-object p1, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mDataSetChangedListener:Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;

    const/4 v0, 0x0

    new-array v0, v0, [J

    invoke-interface {p1, v0}, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;->onDataSetChangedForAnimation([J)V

    .line 496
    invoke-virtual {p0}, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private popContactEntry(I)V
    .locals 1

    .line 464
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->isIndexInBound(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactEntry;

    iput-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mDraggedEntry:Lcom/android/contacts/common/list/ContactEntry;

    .line 466
    iput p1, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mDraggedEntryIndex:I

    .line 467
    iput p1, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    .line 468
    invoke-direct {p0, p1}, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->markDropArea(I)V

    :cond_0
    return-void
.end method

.method private saveCursorToCache(Landroid/database/Cursor;)V
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 186
    iget-object v2, v0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    if-nez v1, :cond_0

    return-void

    .line 192
    :cond_0
    new-instance v2, Landroid/util/LongSparseArray;

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/util/LongSparseArray;-><init>(I)V

    .line 206
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_e

    const-string v3, "starred"

    .line 207
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v6, "contact_id"

    .line 208
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "photo_uri"

    .line 209
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "lookup"

    .line 210
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "pinned"

    .line 211
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "display_name"

    .line 212
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "display_name_alt"

    .line 213
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "is_super_primary"

    .line 214
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "data2"

    .line 215
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v14, "data3"

    .line 216
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string v15, "data1"

    .line 217
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move/from16 v20, v15

    const/4 v5, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 219
    :goto_0
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    if-ge v15, v4, :cond_1

    const/16 v15, 0x14

    if-lt v5, v15, :cond_1

    :goto_1
    const/4 v1, 0x0

    goto/16 :goto_8

    :cond_1
    move/from16 v21, v5

    .line 227
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 230
    invoke-virtual {v2, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v15, v22

    check-cast v15, Lcom/android/contacts/common/list/ContactEntry;

    move/from16 v22, v6

    const/4 v6, 0x0

    if-eqz v15, :cond_3

    .line 234
    iget-boolean v4, v15, Lcom/android/contacts/common/list/ContactEntry;->isDefaultNumber:Z

    if-nez v4, :cond_2

    .line 235
    iput-object v6, v15, Lcom/android/contacts/common/list/ContactEntry;->phoneLabel:Ljava/lang/String;

    .line 236
    iput-object v6, v15, Lcom/android/contacts/common/list/ContactEntry;->phoneNumber:Ljava/lang/String;

    :cond_2
    move/from16 v26, v3

    move/from16 v23, v7

    move/from16 v27, v8

    move/from16 v28, v9

    move/from16 v30, v10

    move/from16 v29, v11

    move/from16 v6, v20

    move/from16 v5, v21

    goto/16 :goto_7

    .line 241
    :cond_3
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 242
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move/from16 v23, v7

    .line 243
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 244
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 245
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 246
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    if-lez v26, :cond_4

    move/from16 v26, v3

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    move/from16 v26, v3

    const/4 v3, 0x0

    .line 247
    :goto_2
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    if-lez v27, :cond_5

    move/from16 v27, v8

    move/from16 v28, v9

    const/4 v8, 0x1

    goto :goto_3

    :cond_5
    move/from16 v27, v8

    move/from16 v28, v9

    const/4 v8, 0x0

    .line 249
    :goto_3
    new-instance v9, Lcom/android/contacts/common/list/ContactEntry;

    invoke-direct {v9}, Lcom/android/contacts/common/list/ContactEntry;-><init>()V

    .line 251
    iput-wide v4, v9, Lcom/android/contacts/common/list/ContactEntry;->id:J

    .line 253
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    move/from16 v30, v10

    const v10, 0x7f11031a

    if-nez v29, :cond_6

    move/from16 v29, v11

    move-object/from16 v11, v24

    goto :goto_4

    :cond_6
    move/from16 v29, v11

    iget-object v11, v0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v11, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    :goto_4
    iput-object v11, v9, Lcom/android/contacts/common/list/ContactEntry;->namePrimary:Ljava/lang/String;

    .line 255
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    goto :goto_5

    :cond_7
    iget-object v11, v0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mResources:Landroid/content/res/Resources;

    .line 257
    invoke-virtual {v11, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    :goto_5
    move-object/from16 v10, v25

    iput-object v10, v9, Lcom/android/contacts/common/list/ContactEntry;->nameAlternative:Ljava/lang/String;

    .line 258
    iget-object v10, v0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v10}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v10

    iput v10, v9, Lcom/android/contacts/common/list/ContactEntry;->nameDisplayOrder:I

    if-eqz v15, :cond_8

    .line 259
    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    goto :goto_6

    :cond_8
    const/4 v10, 0x0

    :goto_6
    iput-object v10, v9, Lcom/android/contacts/common/list/ContactEntry;->photoUri:Landroid/net/Uri;

    .line 260
    iput-object v6, v9, Lcom/android/contacts/common/list/ContactEntry;->lookupKey:Ljava/lang/String;

    .line 261
    sget-object v10, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    .line 263
    invoke-static {v10, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 262
    invoke-static {v6, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, v9, Lcom/android/contacts/common/list/ContactEntry;->lookupUri:Landroid/net/Uri;

    .line 264
    iput-boolean v3, v9, Lcom/android/contacts/common/list/ContactEntry;->isFavorite:Z

    .line 265
    iput-boolean v8, v9, Lcom/android/contacts/common/list/ContactEntry;->isDefaultNumber:Z

    .line 268
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 269
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 270
    iget-object v10, v0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mResources:Landroid/content/res/Resources;

    .line 271
    invoke-static {v10, v6, v8}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v9, Lcom/android/contacts/common/list/ContactEntry;->phoneLabel:Ljava/lang/String;

    move/from16 v6, v20

    .line 272
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v9, Lcom/android/contacts/common/list/ContactEntry;->phoneNumber:Ljava/lang/String;

    .line 274
    iput v7, v9, Lcom/android/contacts/common/list/ContactEntry;->pinned:I

    .line 275
    iget-object v8, v0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_9

    add-int/lit8 v16, v16, 0x1

    :cond_9
    if-eqz v7, :cond_a

    add-int/lit8 v17, v17, 0x1

    .line 286
    :cond_a
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    add-int/lit8 v19, v19, 0x1

    :cond_b
    if-eqz v15, :cond_c

    add-int/lit8 v18, v18, 0x1

    .line 293
    :cond_c
    invoke-virtual {v2, v4, v5, v9}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v5, v21, 0x1

    .line 296
    :goto_7
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_d

    goto/16 :goto_1

    :cond_d
    move/from16 v20, v6

    move/from16 v6, v22

    move/from16 v7, v23

    move/from16 v3, v26

    move/from16 v8, v27

    move/from16 v9, v28

    move/from16 v11, v29

    move/from16 v10, v30

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_e
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 299
    :goto_8
    iput-boolean v1, v0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mAwaitingRemove:Z

    .line 301
    iget-object v1, v0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->arrangeContactsByPinnedPosition(Ljava/util/ArrayList;)V

    .line 303
    iget-object v1, v0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/android/dialer/shortcuts/ShortcutRefresher;->refresh(Landroid/content/Context;Ljava/util/List;)V

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->notifyDataSetChanged()V

    .line 306
    iget-object v1, v0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/dialer/lightbringer/LightbringerComponent;->get(Landroid/content/Context;)Lcom/android/dialer/lightbringer/LightbringerComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dialer/lightbringer/LightbringerComponent;->getLightbringer()Lcom/android/dialer/lightbringer/Lightbringer;

    move-result-object v1

    .line 307
    iget-object v2, v0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v38, 0x0

    :cond_f
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/list/ContactEntry;

    .line 308
    iget-object v6, v4, Lcom/android/contacts/common/list/ContactEntry;->phoneNumber:Ljava/lang/String;

    if-nez v6, :cond_10

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 310
    :cond_10
    iget-object v6, v0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mContext:Landroid/content/Context;

    iget-object v4, v4, Lcom/android/contacts/common/list/ContactEntry;->phoneNumber:Ljava/lang/String;

    invoke-interface {v1, v6, v4}, Lcom/android/dialer/lightbringer/Lightbringer;->isReachable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    add-int/lit8 v38, v38, 0x1

    goto :goto_9

    .line 315
    :cond_11
    iget-object v1, v0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v31

    move/from16 v32, v5

    move/from16 v33, v16

    move/from16 v34, v17

    move/from16 v35, v3

    move/from16 v36, v18

    move/from16 v37, v19

    .line 316
    invoke-interface/range {v31 .. v38}, Lcom/android/dialer/logging/LoggingBindings;->logSpeedDialContactComposition(IIIIIII)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 325
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const-string v4, "PhoneFavoritesTileAdapter.saveCursorToCache"

    const-string v6, "counter: %d"

    invoke-static {v4, v6, v2}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v2, v1, [Ljava/lang/Object;

    .line 329
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    const-string v6, "starredContactsCount: %d"

    .line 326
    invoke-static {v4, v6, v2}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v2, v1, [Ljava/lang/Object;

    .line 333
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    const-string v6, "pinnedContactsCount: %d"

    .line 330
    invoke-static {v4, v6, v2}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v2, v1, [Ljava/lang/Object;

    .line 337
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "multipleNumbersContactsCount: %d"

    .line 334
    invoke-static {v4, v3, v2}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v2, v1, [Ljava/lang/Object;

    .line 341
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "contactsWithPhotoCount: %d"

    .line 338
    invoke-static {v4, v3, v2}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v1, v1, [Ljava/lang/Object;

    .line 345
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "contactsWithNameCount: %d"

    .line 342
    invoke-static {v4, v2, v1}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private saveNumFrequentsFromCursor(Landroid/database/Cursor;)V
    .locals 1

    .line 155
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    iget v0, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mNumStarred:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mNumFrequents:I

    return-void
.end method

.method private setInDragging(Z)V
    .locals 0

    .line 138
    iput-boolean p1, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mDelayCursorUpdates:Z

    .line 139
    iput-boolean p1, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mInDragging:Z

    return-void
.end method

.method private unstarAndUnpinContact(Landroid/net/Uri;)V
    .locals 3

    .line 543
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const/4 v1, 0x0

    .line 544
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "starred"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v1, -0x1

    .line 545
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pinned"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 546
    iget-object v1, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 378
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/contacts/common/list/ContactEntry;
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/common/list/ContactEntry;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->getItem(I)Lcom/android/contacts/common/list/ContactEntry;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 398
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->getItem(I)Lcom/android/contacts/common/list/ContactEntry;

    move-result-object p1

    iget-wide v0, p1, Lcom/android/contacts/common/list/ContactEntry;->id:J

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method getNumFrequents()I
    .locals 1

    .line 369
    iget v0, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mNumFrequents:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 432
    instance-of p3, p2, Lcom/android/dialer/app/list/PhoneFavoriteTileView;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 433
    check-cast p2, Lcom/android/dialer/app/list/PhoneFavoriteTileView;

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    if-nez p2, :cond_1

    .line 437
    iget-object p2, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mContext:Landroid/content/Context;

    const p3, 0x7f0c00dc

    .line 438
    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/dialer/app/list/PhoneFavoriteTileView;

    .line 440
    :cond_1
    iget-object p3, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {p2, p3}, Lcom/android/dialer/app/list/PhoneFavoriteTileView;->setPhotoManager(Lcom/android/contacts/common/ContactPhotoManager;)V

    .line 441
    iget-object p3, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    invoke-virtual {p2, p3}, Lcom/android/dialer/app/list/PhoneFavoriteTileView;->setListener(Lcom/android/contacts/common/list/ContactTileView$Listener;)V

    .line 442
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->getItem(I)Lcom/android/contacts/common/list/ContactEntry;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/dialer/app/list/PhoneFavoriteTileView;->loadFromContact(Lcom/android/contacts/common/list/ContactEntry;)V

    .line 443
    invoke-virtual {p2, p1}, Lcom/android/dialer/app/list/PhoneFavoriteTileView;->setPosition(I)V

    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 0

    .line 413
    invoke-virtual {p0}, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->getCount()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method isIndexInBound(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 477
    iget-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 421
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onDragFinished(II)V
    .locals 0

    const/4 p1, 0x0

    .line 669
    invoke-direct {p0, p1}, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->setInDragging(Z)V

    .line 673
    iget-boolean p1, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mAwaitingRemove:Z

    if-nez p1, :cond_0

    .line 674
    invoke-direct {p0}, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->handleDrop()V

    :cond_0
    return-void
.end method

.method public onDragHovered(IILcom/android/dialer/app/list/PhoneFavoriteSquareTileView;)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    .line 657
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    invoke-virtual {p3}, Lcom/android/dialer/app/list/PhoneFavoriteSquareTileView;->getContactEntry()Lcom/android/contacts/common/list/ContactEntry;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 658
    iget-boolean p2, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mInDragging:Z

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    if-eq p2, p1, :cond_1

    .line 660
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->isIndexInBound(I)Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p2, 0x15

    if-ge p1, p2, :cond_1

    if-ltz p1, :cond_1

    .line 663
    invoke-direct {p0, p1}, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->markDropArea(I)V

    :cond_1
    return-void
.end method

.method public onDragStarted(IILcom/android/dialer/app/list/PhoneFavoriteSquareTileView;)V
    .locals 0

    const/4 p1, 0x1

    .line 645
    invoke-direct {p0, p1}, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->setInDragging(Z)V

    .line 646
    iget-object p1, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    invoke-virtual {p3}, Lcom/android/dialer/app/list/PhoneFavoriteSquareTileView;->getContactEntry()Lcom/android/contacts/common/list/ContactEntry;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 647
    invoke-direct {p0, p1}, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->popContactEntry(I)V

    return-void
.end method

.method public onDroppedOnRemove()V
    .locals 2

    .line 680
    iget-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mDraggedEntry:Lcom/android/contacts/common/list/ContactEntry;

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, v0, Lcom/android/contacts/common/list/ContactEntry;->lookupUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->unstarAndUnpinContact(Landroid/net/Uri;)V

    const/4 v0, 0x1

    .line 682
    iput-boolean v0, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mAwaitingRemove:Z

    .line 683
    iget-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/InteractionEvent$Type;->SPEED_DIAL_REMOVE_CONTACT:Lcom/android/dialer/logging/InteractionEvent$Type;

    invoke-interface {v0, v1}, Lcom/android/dialer/logging/LoggingBindings;->logInteraction(Lcom/android/dialer/logging/InteractionEvent$Type;)V

    :cond_0
    return-void
.end method

.method refreshContactsPreferences()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    const-string v1, "android.contacts.DISPLAY_ORDER"

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/preference/ContactsPreferences;->refreshValue(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    const-string v1, "android.contacts.SORT_ORDER"

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/preference/ContactsPreferences;->refreshValue(Ljava/lang/String;)V

    return-void
.end method

.method setContactCursor(Landroid/database/Cursor;)V
    .locals 1

    .line 164
    iget-boolean v0, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mDelayCursorUpdates:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 165
    invoke-direct {p0, p1}, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->getNumStarredContacts(Landroid/database/Cursor;)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mNumStarred:I

    .line 166
    iget-boolean v0, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mAwaitingRemove:Z

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mDataSetChangedListener:Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;

    invoke-interface {v0}, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;->cacheOffsetsForDatasetChange()V

    .line 170
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->saveNumFrequentsFromCursor(Landroid/database/Cursor;)V

    .line 171
    invoke-direct {p0, p1}, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->saveCursorToCache(Landroid/database/Cursor;)V

    .line 173
    invoke-virtual {p0}, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->notifyDataSetChanged()V

    .line 175
    iget-object p1, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mDataSetChangedListener:Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;

    const/4 v0, 0x0

    new-array v0, v0, [J

    invoke-interface {p1, v0}, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;->onDataSetChangedForAnimation([J)V

    :cond_1
    return-void
.end method

.method setPhotoLoader(Lcom/android/contacts/common/ContactPhotoManager;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    return-void
.end method
