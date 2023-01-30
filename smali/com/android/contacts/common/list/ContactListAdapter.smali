.class public abstract Lcom/android/contacts/common/list/ContactListAdapter;
.super Lcom/android/contacts/common/list/ContactEntryListAdapter;
.source "ContactListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;
    }
.end annotation


# instance fields
.field private mUnknownNameText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;-><init>(Landroid/content/Context;)V

    const v0, 0x7f11031a

    .line 41
    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    return-void
.end method

.method protected static buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2

    .line 45
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "android.provider.extra.ADDRESS_BOOK_INDEX"

    const-string/jumbo v1, "true"

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected bindNameAndViewId(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 1

    const/4 v0, 0x1

    .line 115
    invoke-virtual {p1, p2, v0}, Lcom/android/contacts/common/list/ContactListItemView;->showDisplayName(Landroid/database/Cursor;I)V

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/contacts/common/list/ContactListAdapter;->bindViewId(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;I)V

    return-void
.end method

.method protected bindPhoto(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V
    .locals 12

    .line 86
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactListAdapter;->isPhotoSupported(I)Z

    move-result p2

    if-nez p2, :cond_0

    .line 87
    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->removePhotoView()V

    return-void

    :cond_0
    const/4 p2, 0x4

    .line 93
    invoke-interface {p3, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    .line 94
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move-wide v7, v3

    goto :goto_0

    :cond_1
    move-wide v7, v1

    :goto_0
    cmp-long p2, v7, v1

    if-eqz p2, :cond_2

    .line 98
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->getPhotoLoader()Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v5

    .line 99
    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v6

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->getCircularPhotos()Z

    move-result v10

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/android/contacts/common/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    goto :goto_2

    :cond_2
    const/4 p2, 0x5

    .line 101
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_3

    move-object v3, v0

    goto :goto_1

    .line 102
    :cond_3
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    move-object v3, p2

    :goto_1
    if-nez v3, :cond_4

    const/4 p2, 0x1

    const/4 v0, 0x6

    .line 106
    invoke-virtual {p0, p3, p2, v0}, Lcom/android/contacts/common/list/ContactListAdapter;->getDefaultImageRequestFromCursor(Landroid/database/Cursor;II)Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    move-result-object v0

    :cond_4
    move-object v6, v0

    .line 109
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->getPhotoLoader()Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v1

    .line 110
    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->getCircularPhotos()Z

    move-result v5

    invoke-virtual/range {v1 .. v6}, Lcom/android/contacts/common/ContactPhotoManager;->loadDirectoryPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    :goto_2
    return-void
.end method

.method protected bindPresenceAndStatusMessage(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x3

    .line 122
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->showPresenceAndStatusMessage(Landroid/database/Cursor;II)V

    return-void
.end method

.method protected bindSearchSnippet(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 1

    const/16 v0, 0xa

    .line 127
    invoke-virtual {p1, p2, v0}, Lcom/android/contacts/common/list/ContactListItemView;->showSnippet(Landroid/database/Cursor;I)V

    return-void
.end method

.method protected bindSectionHeaderAndDivider(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V
    .locals 0

    .line 76
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result p3

    invoke-virtual {p1, p3}, Lcom/android/contacts/common/list/ContactListItemView;->setIsSectionHeaderEnabled(Z)V

    .line 77
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 78
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactListAdapter;->getItemPlacementInSection(I)Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    move-result-object p2

    .line 79
    iget-object p2, p2, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/contacts/common/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 81
    invoke-virtual {p1, p2}, Lcom/android/contacts/common/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public changeCursor(ILandroid/database/Cursor;)V
    .locals 1

    .line 132
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    if-eqz p2, :cond_2

    .line 134
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x7

    .line 139
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 142
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 143
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListAdapter;->setProfileExists(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public getContactUri(ILandroid/database/Cursor;)Landroid/net/Uri;
    .locals 4

    const/4 v0, 0x0

    .line 49
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const/4 v2, 0x6

    .line 50
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 51
    invoke-static {v0, v1, p2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {p1}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v0

    if-eqz p2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    .line 57
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string v0, "directory"

    .line 56
    invoke-virtual {p1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method protected final getProjection(Z)[Ljava/lang/String;
    .locals 2

    .line 148
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->getContactNameDisplayOrder()I

    move-result v0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-ne v0, v1, :cond_0

    .line 151
    invoke-static {}, Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->access$000()[Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 153
    :cond_0
    invoke-static {}, Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->access$100()[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    if-ne v0, v1, :cond_2

    .line 157
    invoke-static {}, Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->access$200()[Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 159
    :cond_2
    invoke-static {}, Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->access$300()[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 34
    invoke-virtual/range {p0 .. p5}, Lcom/android/contacts/common/list/ContactListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/common/list/ContactListItemView;

    move-result-object p1

    return-object p1
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/common/list/ContactListItemView;
    .locals 0

    .line 66
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/common/list/ContactListItemView;

    move-result-object p1

    .line 67
    iget-object p2, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lcom/android/contacts/common/list/ContactListItemView;->setUnknownNameText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->isQuickContactEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/contacts/common/list/ContactListItemView;->setQuickContactEnabled(Z)V

    .line 69
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->isAdjustSelectionBoundsEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/contacts/common/list/ContactListItemView;->setAdjustSelectionBoundsEnabled(Z)V

    .line 70
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->isSelectionVisible()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/contacts/common/list/ContactListItemView;->setActivatedStateSupported(Z)V

    return-object p1
.end method
