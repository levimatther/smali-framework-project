.class public Lcom/android/dialer/app/list/RegularSearchListAdapter;
.super Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;
.source "RegularSearchListAdapter.java"


# instance fields
.field protected mIsQuerySipAddress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 37
    invoke-direct {p0, p1}, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, p1, v0}, Lcom/android/dialer/app/list/RegularSearchListAdapter;->setShortcutEnabled(IZ)Z

    const/4 p1, 0x2

    .line 39
    invoke-virtual {p0, p1, v0}, Lcom/android/dialer/app/list/RegularSearchListAdapter;->setShortcutEnabled(IZ)Z

    return-void
.end method

.method private hasDigitsInQueryString()Z
    .locals 5

    .line 119
    invoke-virtual {p0}, Lcom/android/dialer/app/list/RegularSearchListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 122
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method


# virtual methods
.method public getContactInfo(Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;I)Lcom/android/dialer/phonenumbercache/CachedNumberLookupService$CachedContactInfo;
    .locals 7

    .line 43
    new-instance v0, Lcom/android/dialer/phonenumbercache/ContactInfo;

    invoke-direct {v0}, Lcom/android/dialer/phonenumbercache/ContactInfo;-><init>()V

    .line 44
    invoke-interface {p1, v0}, Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;->buildCachedContactInfo(Lcom/android/dialer/phonenumbercache/ContactInfo;)Lcom/android/dialer/phonenumbercache/CachedNumberLookupService$CachedContactInfo;

    move-result-object p1

    .line 45
    invoke-virtual {p0, p2}, Lcom/android/dialer/app/list/RegularSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    if-eqz v1, :cond_3

    .line 48
    invoke-virtual {p0, p2}, Lcom/android/dialer/app/list/RegularSearchListAdapter;->getPartitionForPosition(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/dialer/app/list/RegularSearchListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object p2

    check-cast p2, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 49
    invoke-virtual {p2}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    .line 50
    invoke-virtual {p0, v2, v3}, Lcom/android/dialer/app/list/RegularSearchListAdapter;->isExtendedDirectory(J)Z

    move-result v4

    const/4 v5, 0x7

    .line 52
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    const/4 v5, 0x1

    .line 53
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->type:I

    const/4 v5, 0x2

    .line 54
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->label:Ljava/lang/String;

    const/4 v5, 0x3

    .line 55
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->number:Ljava/lang/String;

    const/16 v5, 0x8

    .line 56
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    .line 57
    :cond_0
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    :goto_0
    iput-object v5, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->photoUri:Landroid/net/Uri;

    if-nez v4, :cond_1

    .line 67
    invoke-static {v2, v3}, Lcom/android/contacts/common/compat/DirectoryCompat;->isEnterpriseDirectoryId(J)Z

    move-result v5

    if-eqz v5, :cond_1

    const-wide/16 v5, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v5, 0x0

    :goto_1
    iput-wide v5, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->userType:J

    const/4 v0, 0x5

    .line 71
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/dialer/phonenumbercache/CachedNumberLookupService$CachedContactInfo;->setLookupKey(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Lcom/android/contacts/common/list/DirectoryPartition;->getLabel()Ljava/lang/String;

    move-result-object p2

    if-eqz v4, :cond_2

    .line 75
    invoke-interface {p1, p2, v2, v3}, Lcom/android/dialer/phonenumbercache/CachedNumberLookupService$CachedContactInfo;->setExtendedSource(Ljava/lang/String;J)V

    goto :goto_2

    .line 77
    :cond_2
    invoke-interface {p1, p2, v2, v3}, Lcom/android/dialer/phonenumbercache/CachedNumberLookupService$CachedContactInfo;->setDirectorySource(Ljava/lang/String;J)V

    :cond_3
    :goto_2
    return-object p1
.end method

.method public getFormattedQueryString()Ljava/lang/String;
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/android/dialer/app/list/RegularSearchListAdapter;->mIsQuerySipAddress:Z

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/android/dialer/app/list/RegularSearchListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 89
    :cond_0
    invoke-super {p0}, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;->getFormattedQueryString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isChanged(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 2

    .line 96
    invoke-virtual {p0}, Lcom/android/dialer/app/list/RegularSearchListAdapter;->getFormattedQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/dialer/app/list/RegularSearchListAdapter;->hasDigitsInQueryString()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 97
    :goto_0
    invoke-static {p1}, Lcom/android/dialer/phonenumberutil/PhoneNumberHelper;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/dialer/app/list/RegularSearchListAdapter;->mIsQuerySipAddress:Z

    .line 99
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/list/RegularSearchListAdapter;->isChanged(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/android/dialer/app/list/RegularSearchListAdapter;->notifyDataSetChanged()V

    .line 102
    :cond_1
    invoke-super {p0, p1}, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;->setQueryString(Ljava/lang/String;)V

    return-void
.end method
