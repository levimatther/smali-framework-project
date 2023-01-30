.class public abstract Lcom/android/contacts/common/list/ContactEntryListAdapter;
.super Lcom/android/contacts/common/list/IndexerListAdapter;
.source "ContactEntryListAdapter.java"


# static fields
.field public static final LOCAL_INVISIBLE_DIRECTORY_ENABLED:Z = false

.field public static final SUGGESTIONS_LOADER_ID:I


# instance fields
.field private mAdjustSelectionBoundsEnabled:Z

.field private mCircularPhotos:Z

.field private mDarkTheme:Z

.field private mDefaultFilterHeaderText:Ljava/lang/CharSequence;

.field private mDirectoryResultLimit:I

.field private mDirectorySearchMode:I

.field private mDisplayOrder:I

.field private mDisplayPhotos:Z

.field private mEmptyListEnabled:Z

.field private mFilter:Lcom/android/contacts/common/list/ContactListFilter;

.field private mFragmentRootView:Landroid/view/View;

.field private mPhotoLoader:Lcom/android/contacts/common/ContactPhotoManager;

.field private mQueryString:Ljava/lang/String;

.field private mQuickContactEnabled:Z

.field private mSearchMode:Z

.field private mSelectionVisible:Z

.field private mSortOrder:I

.field private mUpperCaseQueryString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 91
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/IndexerListAdapter;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 63
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mCircularPhotos:Z

    const v0, 0x7fffffff

    .line 76
    iput v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDirectoryResultLimit:I

    .line 78
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mEmptyListEnabled:Z

    const/4 p1, 0x0

    .line 83
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDarkTheme:Z

    const p1, 0x7f1102da

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setDefaultFilterHeaderText(I)V

    .line 93
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->addPartitions()V

    return-void
.end method

.method private setDefaultPartitionHeader(Z)V
    .locals 6

    .line 567
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 568
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v2

    .line 569
    instance-of v3, v2, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 570
    invoke-virtual {v2}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v1, v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 574
    :cond_1
    invoke-virtual {p0, v1, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setHasHeader(IZ)V

    return-void
.end method

.method private setSectionHeader(II)V
    .locals 2

    .line 363
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getIndexer()Landroid/widget/SectionIndexer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 365
    check-cast v0, Lcom/android/contacts/common/list/ContactsSectionIndexer;

    .line 366
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/common/list/ContactsSectionIndexer;->setProfileAndFavoritesHeader(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private updateIndexer(Landroid/database/Cursor;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 473
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 478
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "android.provider.extra.ADDRESS_BOOK_INDEX_TITLES"

    .line 479
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "android.provider.extra.ADDRESS_BOOK_INDEX_COUNTS"

    .line 480
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 481
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 482
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    .line 484
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getExtraStartingSection()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 486
    array-length v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/String;

    .line 487
    array-length v3, p1

    add-int/2addr v3, v2

    new-array v3, v3, [I

    const/4 v4, 0x0

    move v5, v4

    .line 488
    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_1

    add-int/lit8 v6, v5, 0x1

    .line 489
    aget-object v7, v0, v5

    aput-object v7, v1, v6

    .line 490
    aget v5, p1, v5

    aput v5, v3, v6

    move v5, v6

    goto :goto_0

    .line 492
    :cond_1
    aput v2, v3, v4

    const-string p1, ""

    .line 493
    aput-object p1, v1, v4

    .line 494
    new-instance p1, Lcom/android/contacts/common/list/ContactsSectionIndexer;

    invoke-direct {p1, v1, v3}, Lcom/android/contacts/common/list/ContactsSectionIndexer;-><init>([Ljava/lang/String;[I)V

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setIndexer(Landroid/widget/SectionIndexer;)V

    goto :goto_1

    .line 496
    :cond_2
    new-instance v1, Lcom/android/contacts/common/list/ContactsSectionIndexer;

    invoke-direct {v1, v0, p1}, Lcom/android/contacts/common/list/ContactsSectionIndexer;-><init>([Ljava/lang/String;[I)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setIndexer(Landroid/widget/SectionIndexer;)V

    goto :goto_1

    .line 499
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setIndexer(Landroid/widget/SectionIndexer;)V

    :goto_1
    return-void

    .line 474
    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setIndexer(Landroid/widget/SectionIndexer;)V

    return-void
.end method


# virtual methods
.method protected addPartitions()V
    .locals 3

    .line 135
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/configprovider/ConfigProviderBindings;->get(Landroid/content/Context;)Lcom/android/dialer/configprovider/ConfigProvider;

    move-result-object v0

    const-string v1, "p13n_ranker_should_enable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/dialer/configprovider/ConfigProvider;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->createSuggestionsDirectoryPartition()Lcom/android/contacts/common/list/DirectoryPartition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->addPartition(Lcom/android/common/widget/CompositeCursorAdapter$Partition;)V

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->createDefaultDirectoryPartition()Lcom/android/contacts/common/list/DirectoryPartition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->addPartition(Lcom/android/common/widget/CompositeCursorAdapter$Partition;)V

    return-void
.end method

.method protected bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V
    .locals 5

    .line 603
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object p3

    .line 604
    instance-of v0, p3, Lcom/android/contacts/common/list/DirectoryPartition;

    if-nez v0, :cond_0

    return-void

    .line 608
    :cond_0
    check-cast p3, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 609
    invoke-virtual {p3}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v0

    const v2, 0x7f0901bd

    .line 610
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f09013f

    .line 611
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 612
    invoke-virtual {p3}, Lcom/android/contacts/common/list/DirectoryPartition;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 613
    invoke-static {v0, v1}, Lcom/android/contacts/common/compat/DirectoryCompat;->isRemoteDirectoryId(J)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p3, 0x0

    .line 614
    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 616
    :cond_1
    invoke-virtual {p3}, Lcom/android/contacts/common/list/DirectoryPartition;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 618
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryType()Ljava/lang/String;

    move-result-object v0

    .line 619
    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 622
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_3

    .line 624
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    const p2, 0x7f070145

    .line 626
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 629
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    .line 628
    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method protected bindQuickContact(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;IIIII)V
    .locals 5

    .line 695
    invoke-interface {p3, p4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 696
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    .line 699
    :goto_0
    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->getQuickContact()Landroid/widget/QuickContactBadge;

    move-result-object p4

    .line 701
    invoke-virtual {p0, p2, p3, p6, p7}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getContactUri(ILandroid/database/Cursor;II)Landroid/net/Uri;

    move-result-object p1

    .line 700
    invoke-virtual {p4, p1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 702
    invoke-static {}, Lcom/android/dialer/compat/CompatUtils;->hasPrioritizedMimeType()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo p1, "vnd.android.cursor.item/phone_v2"

    .line 706
    invoke-virtual {p4, p1}, Landroid/widget/QuickContactBadge;->setPrioritizedMimeType(Ljava/lang/String;)V

    .line 708
    :cond_1
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object p2, Lcom/android/dialer/logging/InteractionEvent$Type;->OPEN_QUICK_CONTACT_FROM_SEARCH:Lcom/android/dialer/logging/InteractionEvent$Type;

    const/4 p6, 0x1

    .line 709
    invoke-interface {p1, p4, p2, p6}, Lcom/android/dialer/logging/LoggingBindings;->logQuickContactOnTouch(Landroid/widget/QuickContactBadge;Lcom/android/dialer/logging/InteractionEvent$Type;Z)V

    cmp-long p1, v3, v1

    if-nez p1, :cond_5

    const/4 p1, -0x1

    if-ne p5, p1, :cond_2

    goto :goto_3

    .line 715
    :cond_2
    invoke-interface {p3, p5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_3

    move-object p5, p2

    goto :goto_1

    .line 716
    :cond_3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    move-object p5, p1

    :goto_1
    if-nez p5, :cond_4

    .line 719
    invoke-virtual {p0, p3, p8, p7}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getDefaultImageRequestFromCursor(Landroid/database/Cursor;II)Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    move-result-object p1

    move-object p7, p1

    goto :goto_2

    :cond_4
    move-object p7, p2

    .line 721
    :goto_2
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPhotoLoader()Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object p1

    const/4 p6, -0x1

    iget-boolean p8, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDarkTheme:Z

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mCircularPhotos:Z

    move-object p2, p4

    move-object p3, p5

    move p4, p6

    move p5, p8

    move p6, v0

    invoke-virtual/range {p1 .. p7}, Lcom/android/contacts/common/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    goto :goto_4

    .line 713
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPhotoLoader()Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object p1

    iget-boolean p5, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDarkTheme:Z

    iget-boolean p6, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mCircularPhotos:Z

    const/4 p7, 0x0

    move-object p2, p4

    move-wide p3, v3

    invoke-virtual/range {p1 .. p7}, Lcom/android/contacts/common/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    :goto_4
    return-void
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 0

    .line 119
    check-cast p1, Lcom/android/contacts/common/list/ContactListItemView;

    .line 120
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result p3

    invoke-virtual {p1, p3}, Lcom/android/contacts/common/list/ContactListItemView;->setIsSectionHeaderEnabled(Z)V

    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->bindWorkProfileIcon(Lcom/android/contacts/common/list/ContactListItemView;I)V

    return-void
.end method

.method protected bindViewId(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;I)V
    .locals 2

    .line 736
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    const-wide/32 v0, 0x7fffffff

    .line 737
    rem-long/2addr p2, v0

    long-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/android/contacts/common/list/ContactListItemView;->setId(I)V

    return-void
.end method

.method protected bindWorkProfileIcon(Lcom/android/contacts/common/list/ContactListItemView;I)V
    .locals 4

    .line 592
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object p2

    .line 593
    instance-of v0, p2, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v0, :cond_1

    .line 594
    check-cast p2, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 595
    invoke-virtual {p2}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v0

    .line 596
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/contacts/common/ContactsUtils;->determineUserType(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 597
    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/contacts/common/list/ContactListItemView;->setWorkProfileIconEnabled(Z)V

    :cond_1
    return-void
.end method

.method public changeCursor(ILandroid/database/Cursor;)V
    .locals 2

    .line 443
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    .line 448
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    .line 449
    instance-of v1, v0, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v1, :cond_1

    .line 450
    check-cast v0, Lcom/android/contacts/common/list/DirectoryPartition;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/DirectoryPartition;->setStatus(I)V

    .line 453
    :cond_1
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDisplayPhotos:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/android/contacts/common/ContactPhotoManager;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isPhotoSupported(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 454
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/common/ContactPhotoManager;->refreshCache()V

    .line 457
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/IndexerListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 459
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getIndexedPartition()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 460
    invoke-direct {p0, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->updateIndexer(Landroid/database/Cursor;)V

    .line 464
    :cond_3
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/android/contacts/common/ContactPhotoManager;

    iget-object p2, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mFragmentRootView:Landroid/view/View;

    invoke-virtual {p1, p2}, Lcom/android/contacts/common/ContactPhotoManager;->cancelPendingRequests(Landroid/view/View;)V

    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1

    const/4 v0, 0x0

    .line 468
    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    return-void
.end method

.method public changeDirectories(Landroid/database/Cursor;)V
    .locals 12

    .line 376
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    .line 379
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    aput-object v0, p1, v1

    const-string v0, "ContactEntryListAdapter.changeDirectories"

    const-string v1, "directory search loader returned an empty cursor, which implies we have no directory entries."

    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 386
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v3, "_id"

    .line 388
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "directoryType"

    .line 389
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "displayName"

    .line 390
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "photoSupport"

    .line 391
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    .line 395
    invoke-interface {p1, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 396
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 397
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 398
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 399
    invoke-virtual {p0, v8, v9}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionByDirectoryId(J)I

    move-result v10

    if-ne v10, v7, :cond_1

    .line 400
    new-instance v10, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-direct {v10, v1, v2}, Lcom/android/contacts/common/list/DirectoryPartition;-><init>(ZZ)V

    .line 401
    invoke-virtual {v10, v8, v9}, Lcom/android/contacts/common/list/DirectoryPartition;->setDirectoryId(J)V

    .line 402
    invoke-static {v8, v9}, Lcom/android/contacts/common/compat/DirectoryCompat;->isRemoteDirectoryId(J)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 403
    invoke-static {v8, v9}, Lcom/android/contacts/common/compat/DirectoryCompat;->isEnterpriseDirectoryId(J)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 404
    iget-object v8, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f110203

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Lcom/android/contacts/common/list/DirectoryPartition;->setLabel(Ljava/lang/String;)V

    goto :goto_1

    .line 406
    :cond_2
    iget-object v8, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f110202

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Lcom/android/contacts/common/list/DirectoryPartition;->setLabel(Ljava/lang/String;)V

    goto :goto_1

    .line 409
    :cond_3
    invoke-static {v8, v9}, Lcom/android/contacts/common/compat/DirectoryCompat;->isEnterpriseDirectoryId(J)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 410
    iget-object v8, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f1102d8

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Lcom/android/contacts/common/list/DirectoryPartition;->setLabel(Ljava/lang/String;)V

    goto :goto_1

    .line 412
    :cond_4
    iget-object v8, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDefaultFilterHeaderText:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Lcom/android/contacts/common/list/DirectoryPartition;->setLabel(Ljava/lang/String;)V

    .line 415
    :goto_1
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Lcom/android/contacts/common/list/DirectoryPartition;->setDirectoryType(Ljava/lang/String;)V

    .line 416
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Lcom/android/contacts/common/list/DirectoryPartition;->setDisplayName(Ljava/lang/String;)V

    .line 417
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eq v8, v2, :cond_6

    const/4 v9, 0x3

    if-ne v8, v9, :cond_5

    goto :goto_2

    :cond_5
    move v8, v1

    goto :goto_3

    :cond_6
    :goto_2
    move v8, v2

    .line 418
    :goto_3
    invoke-virtual {v10, v8}, Lcom/android/contacts/common/list/DirectoryPartition;->setPhotoSupported(Z)V

    .line 421
    invoke-virtual {p0, v10}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->addPartition(Lcom/android/common/widget/CompositeCursorAdapter$Partition;)V

    goto/16 :goto_0

    .line 426
    :cond_7
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result p1

    :cond_8
    :goto_4
    add-int/2addr p1, v7

    if-ltz p1, :cond_9

    .line 428
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v1

    .line 429
    instance-of v2, v1, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v2, :cond_8

    .line 430
    check-cast v1, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v1}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v1

    .line 431
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 432
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->removePartition(I)V

    goto :goto_4

    .line 437
    :cond_9
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->invalidate()V

    .line 438
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public clearPartitions()V
    .locals 5

    .line 233
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 235
    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v3

    .line 236
    instance-of v4, v3, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v4, :cond_0

    .line 237
    check-cast v3, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 238
    invoke-virtual {v3, v1}, Lcom/android/contacts/common/list/DirectoryPartition;->setStatus(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 241
    :cond_1
    invoke-super {p0}, Lcom/android/contacts/common/list/IndexerListAdapter;->clearPartitions()V

    return-void
.end method

.method public abstract configureLoader(Landroid/content/CursorLoader;J)V
.end method

.method public configurePartitionsVisibility(Z)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 556
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 557
    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setShowIfEmpty(IZ)V

    .line 558
    invoke-virtual {p0, v1, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setHasHeader(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected createDefaultDirectoryPartition()Lcom/android/contacts/common/list/DirectoryPartition;
    .locals 4

    .line 152
    new-instance v0, Lcom/android/contacts/common/list/DirectoryPartition;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lcom/android/contacts/common/list/DirectoryPartition;-><init>(ZZ)V

    const-wide/16 v2, 0x0

    .line 153
    invoke-virtual {v0, v2, v3}, Lcom/android/contacts/common/list/DirectoryPartition;->setDirectoryId(J)V

    .line 154
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f110175

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/list/DirectoryPartition;->setDirectoryType(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/DirectoryPartition;->setPriorityDirectory(Z)V

    .line 156
    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/DirectoryPartition;->setPhotoSupported(Z)V

    .line 157
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDefaultFilterHeaderText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/DirectoryPartition;->setLabel(Ljava/lang/String;)V

    return-object v0
.end method

.method protected createPinnedSectionHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 126
    new-instance v0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;)V

    return-object v0
.end method

.method protected createSuggestionsDirectoryPartition()Lcom/android/contacts/common/list/DirectoryPartition;
    .locals 4

    .line 142
    new-instance v0, Lcom/android/contacts/common/list/DirectoryPartition;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lcom/android/contacts/common/list/DirectoryPartition;-><init>(ZZ)V

    const-wide/16 v2, 0x0

    .line 143
    invoke-virtual {v0, v2, v3}, Lcom/android/contacts/common/list/DirectoryPartition;->setDirectoryId(J)V

    .line 144
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f110171

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/list/DirectoryPartition;->setDirectoryType(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/DirectoryPartition;->setPriorityDirectory(Z)V

    .line 146
    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/DirectoryPartition;->setPhotoSupported(Z)V

    .line 147
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1102db

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/DirectoryPartition;->setLabel(Ljava/lang/String;)V

    return-object v0
.end method

.method public getCircularPhotos()Z
    .locals 1

    .line 328
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mCircularPhotos:Z

    return v0
.end method

.method public getContactNameDisplayOrder()I
    .locals 1

    .line 296
    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDisplayOrder:I

    return v0
.end method

.method protected getContactUri(ILandroid/database/Cursor;II)Landroid/net/Uri;
    .locals 2

    .line 742
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 743
    invoke-interface {p2, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 744
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {p1}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide p3

    .line 745
    invoke-static {v0, v1, p2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-eqz p2, :cond_0

    .line 748
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    .line 750
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "directory"

    .line 749
    invoke-virtual {p1, p3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 751
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getDefaultImageRequestFromCursor(Landroid/database/Cursor;II)Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    .locals 1

    .line 768
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 769
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 770
    new-instance p3, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mCircularPhotos:Z

    invoke-direct {p3, p2, p1, v0}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p3
.end method

.method protected getDirectoryById(J)Lcom/android/contacts/common/list/DirectoryPartition;
    .locals 5

    .line 197
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 199
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v2

    .line 200
    instance-of v3, v2, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v3, :cond_0

    .line 201
    check-cast v2, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 202
    invoke-virtual {v2}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDirectoryResultLimit()I
    .locals 1

    .line 283
    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDirectoryResultLimit:I

    return v0
.end method

.method public getDirectoryResultLimit(Lcom/android/contacts/common/list/DirectoryPartition;)I
    .locals 1

    .line 291
    invoke-virtual {p1}, Lcom/android/contacts/common/list/DirectoryPartition;->getResultLimit()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 292
    iget p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDirectoryResultLimit:I

    :cond_0
    return p1
.end method

.method public getDirectorySearchMode()I
    .locals 1

    .line 275
    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDirectorySearchMode:I

    return v0
.end method

.method public getDisplayPhotos()Z
    .locals 1

    .line 320
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDisplayPhotos:Z

    return v0
.end method

.method protected getExtraStartingSection()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFilter()Lcom/android/contacts/common/list/ContactListFilter;
    .locals 1

    .line 667
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    return-object v0
.end method

.method public getItemViewType(II)I
    .locals 2

    .line 516
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/IndexerListAdapter;->getItemViewType(II)I

    move-result v0

    .line 517
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isUserProfile(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 518
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 519
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getIndexedPartition()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 520
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getItemPlacementInSection(I)Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    move-result-object p1

    .line 521
    iget-boolean p1, p1, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->firstInSection:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getItemViewTypeCount()I

    move-result p1

    add-int/2addr v0, p1

    :cond_1
    :goto_0
    return v0
.end method

.method protected getPartitionByDirectoryId(J)I
    .locals 4

    .line 184
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 186
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v2

    .line 187
    instance-of v3, v2, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v3, :cond_0

    .line 188
    check-cast v2, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v2}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method protected getPhotoLoader()Lcom/android/contacts/common/ContactPhotoManager;
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/android/contacts/common/ContactPhotoManager;

    return-object v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mQueryString:Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()I
    .locals 1

    .line 304
    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mSortOrder:I

    return v0
.end method

.method public getUpperCaseQueryString()Ljava/lang/String;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mUpperCaseQueryString:Ljava/lang/String;

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 511
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getItemViewTypeCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isAdjustSelectionBoundsEnabled()Z
    .locals 1

    .line 348
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mAdjustSelectionBoundsEnabled:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 534
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mEmptyListEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 536
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 537
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 539
    :cond_1
    invoke-super {p0}, Lcom/android/contacts/common/list/IndexerListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 5

    .line 544
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 546
    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v3

    .line 547
    instance-of v4, v3, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v3}, Lcom/android/contacts/common/list/DirectoryPartition;->isLoading()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isPhotoSupported(I)Z
    .locals 1

    .line 658
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object p1

    .line 659
    instance-of v0, p1, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v0, :cond_0

    .line 660
    check-cast p1, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {p1}, Lcom/android/contacts/common/list/DirectoryPartition;->isPhotoSupported()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public isQuickContactEnabled()Z
    .locals 1

    .line 340
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mQuickContactEnabled:Z

    return v0
.end method

.method public isSearchMode()Z
    .locals 1

    .line 245
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mSearchMode:Z

    return v0
.end method

.method public isSelectionVisible()Z
    .locals 1

    .line 332
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mSelectionVisible:Z

    return v0
.end method

.method protected isUserProfile(I)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 638
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionForPosition(I)I

    move-result v1

    if-ltz v1, :cond_1

    .line 642
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 643
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/Cursor;

    if-eqz p1, :cond_1

    const-string v2, "is_user_profile"

    .line 645
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 647
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v0, v3

    .line 650
    :cond_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_1
    return v0
.end method

.method protected newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 579
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c007b

    const/4 p3, 0x0

    .line 580
    invoke-virtual {p1, p2, p4, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 581
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPinnedPartitionHeadersEnabled()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 586
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-object p1
.end method

.method protected bridge synthetic newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 51
    invoke-virtual/range {p0 .. p5}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/common/list/ContactListItemView;

    move-result-object p1

    return-object p1
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/common/list/ContactListItemView;
    .locals 0

    .line 111
    new-instance p2, Lcom/android/contacts/common/list/ContactListItemView;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/android/contacts/common/list/ContactListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/contacts/common/list/ContactListItemView;->setIsSectionHeaderEnabled(Z)V

    .line 113
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isAdjustSelectionBoundsEnabled()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/contacts/common/list/ContactListItemView;->setAdjustSelectionBoundsEnabled(Z)V

    return-object p2
.end method

.method public onDataReload()V
    .locals 6

    .line 215
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    .line 217
    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v4

    .line 218
    instance-of v5, v4, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v5, :cond_1

    .line 219
    check-cast v4, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 220
    invoke-virtual {v4}, Lcom/android/contacts/common/list/DirectoryPartition;->isLoading()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v3, 0x1

    .line 223
    :cond_0
    invoke-virtual {v4, v1}, Lcom/android/contacts/common/list/DirectoryPartition;->setStatus(I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    .line 227
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method public removeDirectoriesAfterDefault()V
    .locals 5

    .line 171
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 173
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v1

    .line 174
    instance-of v2, v1, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 175
    invoke-virtual {v1}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    goto :goto_1

    .line 178
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->removePartition(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setAdjustSelectionBoundsEnabled(Z)V
    .locals 0

    .line 352
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mAdjustSelectionBoundsEnabled:Z

    return-void
.end method

.method public setContactNameDisplayOrder(I)V
    .locals 0

    .line 300
    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDisplayOrder:I

    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 0

    .line 371
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDarkTheme:Z

    return-void
.end method

.method protected setDefaultFilterHeaderText(I)V
    .locals 1

    .line 105
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDefaultFilterHeaderText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setDirectoryResultLimit(I)V
    .locals 0

    .line 287
    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDirectoryResultLimit:I

    return-void
.end method

.method public setDirectorySearchMode(I)V
    .locals 0

    .line 279
    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDirectorySearchMode:I

    return-void
.end method

.method public setDisplayPhotos(Z)V
    .locals 0

    .line 324
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDisplayPhotos:Z

    return-void
.end method

.method public setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V
    .locals 0

    .line 671
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    return-void
.end method

.method protected setFragmentRootView(Landroid/view/View;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mFragmentRootView:Landroid/view/View;

    return-void
.end method

.method public setPhotoLoader(Lcom/android/contacts/common/ContactPhotoManager;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/android/contacts/common/ContactPhotoManager;

    return-void
.end method

.method protected setPinnedSectionTitle(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 131
    check-cast p1, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;

    invoke-virtual {p1, p2}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->setSectionHeaderTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setProfileExists(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const p1, 0x7f1104c5

    const/4 v0, 0x1

    .line 358
    invoke-direct {p0, p1, v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSectionHeader(II)V

    :cond_0
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 1

    .line 257
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mQueryString:Ljava/lang/String;

    .line 258
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 259
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mUpperCaseQueryString:Ljava/lang/String;

    goto :goto_0

    .line 261
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/contacts/common/util/SearchUtil;->cleanStartAndEndOfSearchQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mUpperCaseQueryString:Ljava/lang/String;

    .line 265
    :goto_0
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mQueryString:Ljava/lang/String;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 266
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setDefaultPartitionHeader(Z)V

    :cond_1
    return-void
.end method

.method public setQuickContactEnabled(Z)V
    .locals 0

    .line 344
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mQuickContactEnabled:Z

    return-void
.end method

.method public setSearchMode(Z)V
    .locals 0

    .line 249
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mSearchMode:Z

    return-void
.end method

.method public setSelectionVisible(Z)V
    .locals 0

    .line 336
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mSelectionVisible:Z

    return-void
.end method

.method public setSortOrder(I)V
    .locals 0

    .line 308
    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mSortOrder:I

    return-void
.end method
