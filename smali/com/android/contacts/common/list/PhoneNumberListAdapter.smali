.class public Lcom/android/contacts/common/list/PhoneNumberListAdapter;
.super Lcom/android/contacts/common/list/ContactEntryListAdapter;
.source "PhoneNumberListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;,
        Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;
    }
.end annotation


# static fields
.field private static final IGNORE_NUMBER_TOO_LONG_CLAUSE:Ljava/lang/String; = "length(data1) < 1000"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mExtendedDirectories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/contacts/common/list/DirectoryPartition;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstExtendedDirectoryId:J

.field protected final mIsImsVideoEnabled:Z

.field private mListener:Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;

.field private final mUnknownNameText:Ljava/lang/CharSequence;

.field private mUseCallableUri:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    const-class v0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 84
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;-><init>(Landroid/content/Context;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 79
    iput-wide v0, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mFirstExtendedDirectoryId:J

    const v0, 0x7f1102d7

    .line 85
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->setDefaultFilterHeaderText(I)V

    const v0, 0x104000e

    .line 86
    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    .line 88
    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mContext:Landroid/content/Context;

    .line 89
    invoke-static {v0}, Lcom/android/contacts/common/extensions/PhoneDirectoryExtenderAccessor;->get(Landroid/content/Context;)Lcom/android/contacts/common/extensions/PhoneDirectoryExtender;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/contacts/common/extensions/PhoneDirectoryExtender;->getExtendedDirectories(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mExtendedDirectories:Ljava/util/List;

    .line 91
    invoke-static {p1}, Lcom/android/dialer/util/CallUtil;->getVideoCallingAvailability(Landroid/content/Context;)I

    move-result v0

    .line 93
    invoke-static {p1}, Lcom/android/dialer/util/CallUtil;->isVideoEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    and-int/lit8 p1, v0, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mIsImsVideoEnabled:Z

    return-void
.end method

.method private applyFilter(Landroid/content/CursorLoader;Landroid/net/Uri$Builder;JLcom/android/contacts/common/list/ContactListFilter;)V
    .locals 3

    if-eqz p5, :cond_4

    const-wide/16 v0, 0x0

    cmp-long p3, p3, v0

    if-eqz p3, :cond_0

    goto :goto_1

    .line 198
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 201
    iget v0, p5, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    const/4 v1, -0x5

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, -0x3

    if-eq v0, v1, :cond_2

    const/4 v1, -0x2

    if-eq v0, v1, :cond_3

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_1

    .line 219
    sget-object p2, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported filter type came (type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p5, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", toString: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p5, ") showing all contacts."

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p2, p5, v0}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 210
    :cond_1
    invoke-virtual {p5, p2}, Lcom/android/contacts/common/list/ContactListFilter;->addAccountQueryParameterToUrl(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;

    goto :goto_0

    :cond_2
    const-string p2, "in_visible_group=1"

    .line 204
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AND has_phone_number=1"

    .line 205
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    :cond_3
    :goto_0
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    new-array p2, v2, [Ljava/lang/String;

    .line 232
    invoke-interface {p4, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private getExtendedDirectoryFromId(J)Lcom/android/contacts/common/list/DirectoryPartition;
    .locals 2

    .line 184
    iget-wide v0, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mFirstExtendedDirectoryId:J

    sub-long/2addr p1, v0

    long-to-int p1, p1

    .line 185
    iget-object p2, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mExtendedDirectories:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/common/list/DirectoryPartition;

    return-object p1
.end method


# virtual methods
.method protected bindName(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 1

    const/4 v0, 0x7

    .line 448
    invoke-virtual {p1, p2, v0}, Lcom/android/contacts/common/list/ContactListItemView;->showDisplayName(Landroid/database/Cursor;I)V

    return-void
.end method

.method public bindPhoneNumber(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;ZI)V
    .locals 10

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    .line 368
    invoke-interface {p2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 369
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 370
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 373
    iget-object v4, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v2, v3}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 375
    :goto_0
    invoke-virtual {p1, v2}, Lcom/android/contacts/common/list/ContactListItemView;->setLabel(Ljava/lang/CharSequence;)V

    const/4 v2, 0x3

    .line 377
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 379
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isSearchMode()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    .line 380
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getUpperCaseQueryString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v4, " "

    const-string v6, ""

    .line 381
    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 382
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getUpperCaseQueryString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 383
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "iscontactnumber"

    if-eqz v4, :cond_1

    .line 384
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 386
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    :goto_1
    if-eqz p3, :cond_3

    move-object p3, v3

    goto :goto_2

    .line 395
    :cond_3
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_4

    goto :goto_2

    .line 399
    :cond_4
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 400
    iget-object v4, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, p3}, Lcom/android/dialer/location/GeoUtil;->getGeocodedLocationFor(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 403
    :goto_2
    invoke-virtual {p1, p3}, Lcom/android/contacts/common/list/ContactListItemView;->setPhoneNumber(Ljava/lang/String;)V

    .line 407
    invoke-static {}, Lcom/android/dialer/compat/CompatUtils;->isVideoCompatible()Z

    move-result p3

    if-eqz p3, :cond_7

    const/16 p3, 0x9

    .line 409
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    and-int/2addr p2, v1

    if-eqz p2, :cond_5

    move p2, v1

    goto :goto_3

    :cond_5
    move p2, v5

    .line 412
    :goto_3
    iget-boolean p3, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mIsImsVideoEnabled:Z

    if-eqz p3, :cond_6

    if-eqz p2, :cond_6

    move p2, v1

    goto :goto_4

    :cond_6
    move p2, v5

    :goto_4
    if-eqz p2, :cond_7

    goto :goto_5

    :cond_7
    move v1, v5

    :goto_5
    if-nez v1, :cond_8

    .line 418
    iget-object p2, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mContext:Landroid/content/Context;

    .line 419
    invoke-static {p2}, Lcom/android/dialer/lightbringer/LightbringerComponent;->get(Landroid/content/Context;)Lcom/android/dialer/lightbringer/LightbringerComponent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/dialer/lightbringer/LightbringerComponent;->getLightbringer()Lcom/android/dialer/lightbringer/Lightbringer;

    move-result-object p2

    iget-object p3, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mContext:Landroid/content/Context;

    invoke-interface {p2, p3, v3}, Lcom/android/dialer/lightbringer/Lightbringer;->isReachable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_6

    :cond_8
    move v0, v1

    :goto_6
    if-nez v0, :cond_a

    .line 424
    iget-object p2, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/dialer/enrichedcall/EnrichedCallComponent;->get(Landroid/content/Context;)Lcom/android/dialer/enrichedcall/EnrichedCallComponent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/dialer/enrichedcall/EnrichedCallComponent;->getEnrichedCallManager()Lcom/android/dialer/enrichedcall/EnrichedCallManager;

    move-result-object p2

    .line 425
    invoke-interface {p2, v3}, Lcom/android/dialer/enrichedcall/EnrichedCallManager;->getCapabilities(Ljava/lang/String;)Lcom/android/dialer/enrichedcall/EnrichedCallCapabilities;

    move-result-object p3

    if-eqz p3, :cond_9

    .line 426
    invoke-virtual {p3}, Lcom/android/dialer/enrichedcall/EnrichedCallCapabilities;->supportsCallComposer()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_7

    :cond_9
    if-nez p3, :cond_a

    .line 429
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_a

    .line 430
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-lt p3, v2, :cond_a

    .line 431
    invoke-interface {p2, v3}, Lcom/android/dialer/enrichedcall/EnrichedCallManager;->requestCapabilities(Ljava/lang/String;)V

    :cond_a
    move v2, v0

    .line 435
    :goto_7
    iget-object p2, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mListener:Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;

    invoke-virtual {p1, v2, p2, p4}, Lcom/android/contacts/common/list/ContactListItemView;->setCallToAction(ILcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;I)V

    return-void
.end method

.method protected bindPhoto(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V
    .locals 12

    .line 469
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isPhotoSupported(I)Z

    move-result p2

    if-nez p2, :cond_0

    .line 470
    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->removePhotoView()V

    return-void

    :cond_0
    const/4 p2, 0x6

    .line 475
    invoke-interface {p3, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    .line 476
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move-wide v7, v3

    goto :goto_0

    :cond_1
    move-wide v7, v1

    :goto_0
    cmp-long p2, v7, v1

    if-eqz p2, :cond_2

    .line 480
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPhotoLoader()Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v5

    .line 481
    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v6

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getCircularPhotos()Z

    move-result v10

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/android/contacts/common/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    goto :goto_2

    :cond_2
    const/16 p2, 0x8

    .line 483
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_3

    move-object v3, v0

    goto :goto_1

    .line 484
    :cond_3
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    move-object v3, p2

    :goto_1
    if-nez v3, :cond_4

    const/4 p2, 0x7

    .line 488
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x5

    .line 489
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 490
    new-instance v0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getCircularPhotos()Z

    move-result v1

    invoke-direct {v0, p2, p3, v1}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4
    move-object v6, v0

    .line 492
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPhotoLoader()Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v1

    .line 493
    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getCircularPhotos()Z

    move-result v5

    invoke-virtual/range {v1 .. v6}, Lcom/android/contacts/common/ContactPhotoManager;->loadDirectoryPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    :goto_2
    return-void
.end method

.method protected bindSectionHeaderAndDivider(Lcom/android/contacts/common/list/ContactListItemView;I)V
    .locals 2

    .line 439
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 440
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getItemPlacementInSection(I)Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    move-result-object p2

    .line 441
    iget-boolean v0, p2, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->firstInSection:Z

    if-eqz v0, :cond_0

    iget-object v1, p2, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    goto :goto_0

    .line 443
    :cond_1
    invoke-virtual {p1, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 8

    .line 308
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->bindView(Landroid/view/View;ILandroid/database/Cursor;I)V

    .line 309
    check-cast p1, Lcom/android/contacts/common/list/ContactListItemView;

    .line 311
    invoke-virtual {p0, p1, p3}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->setHighlight(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 318
    invoke-interface {p3, p4}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v0, 0x4

    .line 320
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 321
    invoke-interface {p3}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v3

    if-nez v3, :cond_0

    .line 322
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    cmp-long v0, v1, v6

    if-nez v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v5

    .line 327
    :goto_0
    invoke-interface {p3, p4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 329
    invoke-virtual {p0, p1, p3, v4}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->bindViewId(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;I)V

    .line 331
    invoke-virtual {p0, p1, p4}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/common/list/ContactListItemView;I)V

    if-eqz v0, :cond_1

    .line 333
    invoke-virtual {p0, p1, p3}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->bindName(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    goto :goto_1

    .line 352
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->unbindName(Lcom/android/contacts/common/list/ContactListItemView;)V

    .line 354
    invoke-virtual {p1, v5, v4}, Lcom/android/contacts/common/list/ContactListItemView;->removePhotoView(ZZ)V

    .line 357
    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 359
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPositionForPartition(I)I

    move-result p2

    add-int/2addr p2, v5

    add-int/2addr p4, p2

    .line 361
    invoke-virtual {v0}, Lcom/android/contacts/common/list/DirectoryPartition;->isDisplayNumber()Z

    move-result p2

    invoke-virtual {p0, p1, p3, p2, p4}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->bindPhoneNumber(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;ZI)V

    return-void
.end method

.method protected bindWorkProfileIcon(Lcom/android/contacts/common/list/ContactListItemView;I)V
    .locals 4

    .line 458
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object p2

    check-cast p2, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 459
    invoke-virtual {p2}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v0

    .line 460
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 v2, 0x0

    invoke-static {p2, v2}, Lcom/android/contacts/common/ContactsUtils;->determineUserType(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide v2

    .line 465
    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isExtendedDirectory(J)Z

    move-result p2

    if-nez p2, :cond_0

    const-wide/16 v0, 0x1

    cmp-long p2, v2, v0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 464
    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/contacts/common/list/ContactListItemView;->setWorkProfileIconEnabled(Z)V

    return-void
.end method

.method public changeDirectories(Landroid/database/Cursor;)V
    .locals 11

    .line 511
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->changeDirectories(Landroid/database/Cursor;)V

    .line 512
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getDirectorySearchMode()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mExtendedDirectories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 516
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPartitionCount()I

    move-result v1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    add-int/2addr p1, v0

    if-ne v1, p1, :cond_1

    return-void

    :cond_1
    const-wide v1, 0x7fffffffffffffffL

    .line 521
    iput-wide v1, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mFirstExtendedDirectoryId:J

    if-lez v0, :cond_6

    .line 527
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPartitionCount()I

    move-result p1

    const-wide/16 v1, 0x1

    const/4 v3, 0x0

    move-wide v5, v1

    move v4, v3

    move v7, v4

    :goto_0
    if-ge v4, p1, :cond_4

    .line 528
    invoke-virtual {p0, v4}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 529
    invoke-virtual {v8}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v8

    cmp-long v10, v8, v5

    if-lez v10, :cond_2

    move-wide v5, v8

    .line 533
    :cond_2
    invoke-static {v8, v9}, Lcom/android/contacts/common/compat/DirectoryCompat;->isRemoteDirectoryId(J)Z

    move-result v8

    if-nez v8, :cond_3

    add-int/lit8 v7, v4, 0x1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    add-long/2addr v5, v1

    .line 541
    iput-wide v5, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mFirstExtendedDirectoryId:J

    :goto_1
    if-ge v3, v0, :cond_6

    .line 543
    iget-wide v1, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mFirstExtendedDirectoryId:J

    int-to-long v4, v3

    add-long/2addr v1, v4

    .line 544
    iget-object p1, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mExtendedDirectories:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 545
    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPartitionByDirectoryId(J)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_5

    .line 546
    invoke-virtual {p0, v7, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->addPartition(ILcom/android/common/widget/CompositeCursorAdapter$Partition;)V

    .line 547
    invoke-virtual {p1, v1, v2}, Lcom/android/contacts/common/list/DirectoryPartition;->setDirectoryId(J)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 12

    .line 99
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 103
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isExtendedDirectory(J)Z

    move-result v1

    const-string v2, "limit"

    if-eqz v1, :cond_2

    .line 104
    invoke-direct {p0, p2, p3}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getExtendedDirectoryFromId(J)Lcom/android/contacts/common/list/DirectoryPartition;

    move-result-object p2

    .line 105
    invoke-virtual {p2}, Lcom/android/contacts/common/list/DirectoryPartition;->getContentUri()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 109
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p3

    .line 110
    invoke-virtual {p3, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 112
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getDirectoryResultLimit(Lcom/android/contacts/common/list/DirectoryPartition;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 111
    invoke-virtual {p3, v2, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 113
    invoke-virtual {p3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 114
    sget-object p2, Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;->PROJECTION_PRIMARY:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto/16 :goto_4

    .line 107
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Extended directory must have a content URL: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 116
    :cond_2
    invoke-static {p2, p3}, Lcom/android/contacts/common/compat/DirectoryCompat;->isRemoteDirectoryId(J)Z

    move-result v1

    .line 118
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isSearchMode()Z

    move-result v3

    const-string/jumbo v4, "true"

    const-string v5, "directory"

    if-eqz v3, :cond_5

    if-eqz v1, :cond_3

    .line 121
    invoke-static {}, Lcom/android/contacts/common/compat/PhoneCompat;->getContentFilterUri()Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    .line 122
    :cond_3
    iget-boolean v3, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mUseCallableUri:Z

    if-eqz v3, :cond_4

    .line 123
    invoke-static {}, Lcom/android/contacts/common/compat/CallableCompat;->getContentFilterUri()Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    .line 125
    :cond_4
    invoke-static {}, Lcom/android/contacts/common/compat/PhoneCompat;->getContentFilterUri()Landroid/net/Uri;

    move-result-object v3

    .line 127
    :goto_0
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 128
    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 130
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-virtual {v3, v5, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    if-eqz v1, :cond_8

    .line 134
    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getDirectoryById(J)Lcom/android/contacts/common/list/DirectoryPartition;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getDirectoryResultLimit(Lcom/android/contacts/common/list/DirectoryPartition;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 132
    invoke-virtual {v3, v2, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_2

    .line 137
    :cond_5
    iget-boolean v0, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mUseCallableUri:Z

    if-eqz v0, :cond_6

    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Callable;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    :cond_6
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 140
    :goto_1
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 142
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-virtual {v0, v5, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 143
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "android.provider.extra.ADDRESS_BOOK_INDEX"

    .line 144
    invoke-virtual {v3, v0, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 146
    :cond_7
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getFilter()Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v11

    move-object v6, p0

    move-object v7, p1

    move-object v8, v3

    move-wide v9, p2

    invoke-direct/range {v6 .. v11}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->applyFilter(Landroid/content/CursorLoader;Landroid/net/Uri$Builder;JLcom/android/contacts/common/list/ContactListFilter;)V

    .line 151
    :cond_8
    :goto_2
    invoke-virtual {p1}, Landroid/content/CursorLoader;->getSelection()Ljava/lang/String;

    move-result-object p2

    .line 153
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const-string v0, "length(data1) < 1000"

    if-nez p3, :cond_9

    .line 154
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AND "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    :cond_9
    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    const-string p2, "remove_duplicate_entries"

    .line 161
    invoke-virtual {v3, p2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 162
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 165
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getContactNameDisplayOrder()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_a

    .line 166
    sget-object p2, Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;->PROJECTION_PRIMARY:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_3

    .line 168
    :cond_a
    sget-object p2, Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;->PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 171
    :goto_3
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getSortOrder()I

    move-result p2

    if-ne p2, p3, :cond_b

    const-string p2, "sort_key"

    .line 172
    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    const-string p2, "sort_key_alt"

    .line 174
    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method protected getContactUri(ILandroid/database/Cursor;II)Landroid/net/Uri;
    .locals 4

    .line 556
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 557
    invoke-virtual {v0}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v1

    .line 558
    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isExtendedDirectory(J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 559
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getContactUri(ILandroid/database/Cursor;II)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 561
    :cond_0
    sget-object p1, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    .line 562
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p3, "encoded"

    .line 563
    invoke-virtual {p1, p3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 564
    invoke-virtual {v0}, Lcom/android/contacts/common/list/DirectoryPartition;->getLabel()Ljava/lang/String;

    move-result-object p3

    const-string v0, "displayName"

    invoke-virtual {p1, v0, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 565
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    const-string v0, "directory"

    invoke-virtual {p1, v0, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 566
    invoke-interface {p2, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 567
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public getDialerContact(I)Lcom/android/dialer/dialercontact/DialerContact;
    .locals 9

    .line 252
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/Cursor;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "PhoneNumberListAdapter.getDialerContact"

    const-string v1, "cursor was null."

    .line 254
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x7

    .line 258
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    .line 259
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    .line 260
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    .line 263
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v5, 0x5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 262
    invoke-static {v3, v4, v5}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 265
    invoke-static {}, Lcom/android/dialer/dialercontact/DialerContact;->newBuilder()Lcom/android/dialer/dialercontact/DialerContact$Builder;

    move-result-object v4

    .line 267
    invoke-virtual {v4, v1}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->setNumber(Ljava/lang/String;)Lcom/android/dialer/dialercontact/DialerContact$Builder;

    move-result-object v5

    const/4 v6, 0x6

    .line 268
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->setPhotoId(J)Lcom/android/dialer/dialercontact/DialerContact$Builder;

    move-result-object v5

    const/4 v6, 0x1

    .line 269
    invoke-virtual {v5, v6}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->setContactType(I)Lcom/android/dialer/dialercontact/DialerContact$Builder;

    move-result-object v5

    .line 270
    invoke-virtual {v5, v0}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->setNameOrNumber(Ljava/lang/String;)Lcom/android/dialer/dialercontact/DialerContact$Builder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mContext:Landroid/content/Context;

    .line 273
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 274
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v8, 0x2

    .line 275
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 272
    invoke-static {v7, v6, p1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 276
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 271
    invoke-virtual {v5, p1}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->setNumberLabel(Ljava/lang/String;)Lcom/android/dialer/dialercontact/DialerContact$Builder;

    if-eqz v2, :cond_1

    .line 279
    invoke-virtual {v4, v2}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->setPhotoUri(Ljava/lang/String;)Lcom/android/dialer/dialercontact/DialerContact$Builder;

    :cond_1
    if-eqz v3, :cond_2

    .line 283
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->setContactUri(Ljava/lang/String;)Lcom/android/dialer/dialercontact/DialerContact$Builder;

    .line 286
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 287
    invoke-virtual {v4, v1}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->setDisplayNumber(Ljava/lang/String;)Lcom/android/dialer/dialercontact/DialerContact$Builder;

    .line 290
    :cond_3
    invoke-virtual {v4}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/dialercontact/DialerContact;

    return-object p1
.end method

.method public getListener()Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mListener:Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;

    return-object v0
.end method

.method public getLookupKey(I)Ljava/lang/String;
    .locals 1

    .line 247
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/Cursor;

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    .line 248
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getPhoneNumber(I)Ljava/lang/String;
    .locals 1

    .line 236
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/Cursor;

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    .line 237
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected isExtendedDirectory(J)Z
    .locals 2

    .line 180
    iget-wide v0, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mFirstExtendedDirectoryId:J

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected bridge synthetic newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 67
    invoke-virtual/range {p0 .. p5}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/common/list/ContactListItemView;

    move-result-object p1

    return-object p1
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/common/list/ContactListItemView;
    .locals 0

    .line 296
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/common/list/ContactListItemView;

    move-result-object p1

    .line 297
    iget-object p2, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lcom/android/contacts/common/list/ContactListItemView;->setUnknownNameText(Ljava/lang/CharSequence;)V

    .line 298
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isQuickContactEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/contacts/common/list/ContactListItemView;->setQuickContactEnabled(Z)V

    return-object p1
.end method

.method protected setHighlight(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 0

    .line 303
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isSearchMode()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getUpperCaseQueryString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/contacts/common/list/ContactListItemView;->setHighlightedPrefix(Ljava/lang/String;)V

    return-void
.end method

.method public setListener(Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;)V
    .locals 0

    .line 575
    iput-object p1, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mListener:Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;

    return-void
.end method

.method public setUseCallableUri(Z)V
    .locals 0

    .line 498
    iput-boolean p1, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mUseCallableUri:Z

    return-void
.end method

.method protected unbindName(Lcom/android/contacts/common/list/ContactListItemView;)V
    .locals 0

    .line 453
    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->hideDisplayName()V

    return-void
.end method
