.class public Lcom/android/contacts/common/list/DefaultContactListAdapter;
.super Lcom/android/contacts/common/list/ContactListAdapter;
.source "DefaultContactListAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ContactListAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private appendSearchParameters(Landroid/net/Uri$Builder;Ljava/lang/String;J)V
    .locals 2

    .line 88
    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 89
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string v0, "directory"

    invoke-virtual {p1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x1

    cmp-long p2, p3, v0

    if-eqz p2, :cond_0

    .line 93
    invoke-virtual {p0, p3, p4}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getDirectoryById(J)Lcom/android/contacts/common/list/DirectoryPartition;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getDirectoryResultLimit(Lcom/android/contacts/common/list/DirectoryPartition;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "limit"

    .line 91
    invoke-virtual {p1, p3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    const-string p2, "deferred_snippeting"

    const-string p3, "1"

    .line 95
    invoke-virtual {p1, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-void
.end method

.method private configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/common/list/ContactListFilter;)V
    .locals 2

    if-nez p4, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-eqz p2, :cond_1

    return-void

    .line 130
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 133
    iget p4, p4, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    const/4 v0, -0x5

    if-eq p4, v0, :cond_4

    const/4 v0, -0x4

    if-eq p4, v0, :cond_3

    const/4 v0, -0x3

    if-eq p4, v0, :cond_2

    goto :goto_0

    :cond_2
    const-string p4, "in_visible_group=1"

    .line 158
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-direct {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isCustomFilterForPhoneNumbersOnly()Z

    move-result p4

    if-eqz p4, :cond_5

    const-string p4, " AND has_phone_number=1"

    .line 160
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string p4, "starred!=0"

    .line 148
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const-string p4, "has_phone_number=1"

    .line 153
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :cond_5
    :goto_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    .line 171
    invoke-interface {p3, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    return-void
.end method

.method private isCustomFilterForPhoneNumbersOnly()Z
    .locals 3

    .line 211
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "only_phones"

    const/4 v2, 0x0

    .line 212
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 10

    .line 176
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/common/list/ContactListAdapter;->bindView(Landroid/view/View;ILandroid/database/Cursor;I)V

    .line 177
    check-cast p1, Lcom/android/contacts/common/list/ContactListItemView;

    .line 179
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isSearchMode()Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getUpperCaseQueryString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v9

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setHighlightedPrefix(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0, p1, p4, p3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V

    .line 183
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isQuickContactEnabled()Z

    move-result p4

    if-eqz p4, :cond_1

    const/4 v4, 0x4

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 184
    invoke-virtual/range {v0 .. v8}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->bindQuickContact(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;IIIII)V

    goto :goto_1

    .line 194
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getDisplayPhotos()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 195
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->bindPhoto(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V

    .line 199
    :cond_2
    :goto_1
    invoke-virtual {p0, p1, p3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->bindNameAndViewId(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 200
    invoke-virtual {p0, p1, p3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->bindPresenceAndStatusMessage(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 202
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isSearchMode()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 203
    invoke-virtual {p0, p1, p3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->bindSearchSnippet(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    goto :goto_2

    .line 205
    :cond_3
    invoke-virtual {p1, v9}, Lcom/android/contacts/common/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 4

    .line 46
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isSearchMode()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 47
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 51
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 55
    sget-object p2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 56
    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getProjection(Z)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    const-string p2, "0"

    .line 57
    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_1
    invoke-static {}, Lcom/android/contacts/common/compat/ContactsCompat;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 60
    invoke-direct {p0, v2, v0, p2, p3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->appendSearchParameters(Landroid/net/Uri$Builder;Ljava/lang/String;J)V

    .line 61
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 62
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getProjection(Z)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getFilter()Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    .line 66
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->configureUri(Landroid/content/CursorLoader;JLcom/android/contacts/common/list/ContactListFilter;)V

    .line 67
    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getProjection(Z)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 68
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/common/list/ContactListFilter;)V

    .line 71
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getSortOrder()I

    move-result p2

    if-ne p2, v1, :cond_3

    const-string p2, "sort_key"

    goto :goto_1

    :cond_3
    const-string p2, "sort_key_alt"

    .line 84
    :goto_1
    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    return-void
.end method

.method protected configureUri(Landroid/content/CursorLoader;JLcom/android/contacts/common/list/ContactListFilter;)V
    .locals 3

    .line 99
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-wide/16 v1, 0x0

    cmp-long p2, p2, v1

    if-nez p2, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 102
    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    :cond_0
    if-eqz p4, :cond_2

    .line 106
    iget p2, p4, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    const/4 p3, -0x3

    if-eq p2, p3, :cond_2

    iget p2, p4, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    const/4 p3, -0x6

    if-eq p2, p3, :cond_2

    .line 109
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    .line 111
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    const-string v0, "directory"

    .line 110
    invoke-virtual {p2, v0, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 112
    iget p3, p4, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-nez p3, :cond_1

    .line 113
    invoke-virtual {p4, p2}, Lcom/android/contacts/common/list/ContactListFilter;->addAccountQueryParameterToUrl(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;

    .line 115
    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 118
    :cond_2
    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    return-void
.end method
