.class public Lcom/android/contacts/common/model/ContactLoader;
.super Landroid/content/AsyncTaskLoader;
.source "ContactLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/model/ContactLoader$AccountKey;,
        Lcom/android/contacts/common/model/ContactLoader$GroupQuery;,
        Lcom/android/contacts/common/model/ContactLoader$DirectoryQuery;,
        Lcom/android/contacts/common/model/ContactLoader$ContactQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader<",
        "Lcom/android/contacts/common/model/Contact;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sCachedResult:Lcom/android/contacts/common/model/Contact;


# instance fields
.field private mComputeFormattedPhoneNumber:Z

.field private mContact:Lcom/android/contacts/common/model/Contact;

.field private mLoadGroupMetaData:Z

.field private mLoadInvitableAccountTypes:Z

.field private mLookupUri:Landroid/net/Uri;

.field private final mNotifiedRawContactIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mObserver:Landroid/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader<",
            "Lcom/android/contacts/common/model/Contact;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field private mPostViewNotification:Z

.field private final mRequestedUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    const-class v0, Lcom/android/contacts/common/model/ContactLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/model/ContactLoader;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 76
    sput-object v0, Lcom/android/contacts/common/model/ContactLoader;->sCachedResult:Lcom/android/contacts/common/model/Contact;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Z)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    .line 89
    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/common/model/ContactLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;ZZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;ZZZZ)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/common/model/ContactLoader;->mNotifiedRawContactIds:Ljava/util/Set;

    .line 100
    iput-object p2, p0, Lcom/android/contacts/common/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    .line 101
    iput-object p2, p0, Lcom/android/contacts/common/model/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    .line 102
    iput-boolean p3, p0, Lcom/android/contacts/common/model/ContactLoader;->mLoadGroupMetaData:Z

    .line 103
    iput-boolean p4, p0, Lcom/android/contacts/common/model/ContactLoader;->mLoadInvitableAccountTypes:Z

    .line 104
    iput-boolean p5, p0, Lcom/android/contacts/common/model/ContactLoader;->mPostViewNotification:Z

    .line 105
    iput-boolean p6, p0, Lcom/android/contacts/common/model/ContactLoader;->mComputeFormattedPhoneNumber:Z

    return-void
.end method

.method private computeFormattedPhoneNumbers(Lcom/android/contacts/common/model/Contact;)V
    .locals 9

    .line 661
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/location/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 662
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    .line 663
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 665
    invoke-virtual {p1, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/model/RawContact;

    .line 666
    invoke-virtual {v4}, Lcom/android/contacts/common/model/RawContact;->getDataItems()Ljava/util/List;

    move-result-object v4

    .line 667
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_1

    .line 669
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/common/model/dataitem/DataItem;

    .line 670
    instance-of v8, v7, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;

    if-eqz v8, :cond_0

    .line 671
    check-cast v7, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;

    .line 672
    invoke-virtual {v7, v0}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->computeFormattedPhoneNumber(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V
    .locals 3

    .line 530
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 541
    sget-object v0, Lcom/android/contacts/common/model/ContactLoader$ContactQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0

    .line 544
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Invalid or unhandled data type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 538
    :cond_1
    sget-object v0, Lcom/android/contacts/common/model/ContactLoader$ContactQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 535
    :cond_2
    sget-object v0, Lcom/android/contacts/common/model/ContactLoader$ContactQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private loadContactEntity(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;
    .locals 7

    const-string v0, "entities"

    .line 273
    invoke-static {p2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 274
    sget-object v3, Lcom/android/contacts/common/model/ContactLoader$ContactQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "raw_contact_id"

    move-object v1, p1

    .line 275
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_0

    .line 277
    sget-object p1, Lcom/android/contacts/common/model/ContactLoader;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "No cursor returned in loadContactEntity"

    invoke-static {p1, v0, p2}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    iget-object p1, p0, Lcom/android/contacts/common/model/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    invoke-static {p1}, Lcom/android/contacts/common/model/Contact;->forNotFound(Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;

    move-result-object p1

    return-object p1

    .line 282
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 283
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 284
    iget-object p2, p0, Lcom/android/contacts/common/model/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    invoke-static {p2}, Lcom/android/contacts/common/model/Contact;->forNotFound(Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    .line 288
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/common/model/ContactLoader;->loadContactHeaderData(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;

    move-result-object p2

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    .line 294
    new-instance v3, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v3}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    :cond_2
    const/16 v4, 0xe

    .line 297
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-eqz v6, :cond_3

    .line 302
    new-instance v0, Lcom/android/contacts/common/model/RawContact;

    invoke-direct {p0, p1}, Lcom/android/contacts/common/model/ContactLoader;->loadRawContactValues(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/RawContact;-><init>(Landroid/content/ContentValues;)V

    .line 303
    invoke-virtual {v3, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-object v2, v0

    move-wide v0, v4

    :cond_3
    const/16 v4, 0x1a

    .line 305
    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 306
    invoke-direct {p0, p1}, Lcom/android/contacts/common/model/ContactLoader;->loadDataValues(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v4

    .line 307
    invoke-virtual {v2, v4}, Lcom/android/contacts/common/model/RawContact;->addDataItemValues(Landroid/content/ContentValues;)V

    .line 309
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 311
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/contacts/common/model/Contact;->setRawContacts(Lcom/google/common/collect/ImmutableList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 316
    throw p2
.end method

.method private loadContactHeaderData(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;
    .locals 27

    move-object/from16 v0, p1

    const-string v1, "directory"

    move-object/from16 v4, p2

    .line 417
    invoke-virtual {v4, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/16 v6, 0x0

    goto :goto_0

    .line 419
    :cond_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    move-wide v6, v5

    :goto_0
    const/16 v1, 0xd

    .line 420
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const/4 v1, 0x2

    .line 421
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x0

    .line 422
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const/4 v5, 0x1

    .line 423
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/4 v14, 0x3

    .line 424
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/4 v14, 0x4

    .line 425
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/4 v14, 0x5

    .line 426
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/4 v14, 0x6

    .line 427
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const/16 v1, 0x3a

    .line 428
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    .line 429
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_1

    move/from16 v22, v5

    goto :goto_1

    :cond_1
    const/16 v22, 0x0

    :goto_1
    const/16 v2, 0x8

    .line 431
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    .line 433
    :cond_2
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_2
    move-object/from16 v23, v2

    const/16 v2, 0x3b

    .line 434
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v5, :cond_3

    move/from16 v24, v5

    goto :goto_3

    :cond_3
    const/16 v24, 0x0

    :goto_3
    const/16 v2, 0x3c

    .line 435
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    const/16 v2, 0x3d

    .line 436
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v5, :cond_4

    move v0, v5

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-eqz v2, :cond_6

    const-wide/16 v2, 0x1

    cmp-long v2, v6, v2

    if-nez v2, :cond_5

    goto :goto_5

    :cond_5
    move-object v5, v4

    goto :goto_6

    .line 440
    :cond_6
    :goto_5
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    .line 442
    invoke-static {v2, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 441
    invoke-static {v2, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    move-object v5, v2

    .line 447
    :goto_6
    new-instance v26, Lcom/android/contacts/common/model/Contact;

    move-object/from16 v2, v26

    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/android/contacts/common/model/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    move-object v3, v4

    move-object/from16 v4, p2

    move-object/from16 v16, v1

    move/from16 v20, v22

    move-object/from16 v21, v23

    move/from16 v22, v24

    move-object/from16 v23, v25

    move/from16 v24, v0

    invoke-direct/range {v2 .. v24}, Lcom/android/contacts/common/model/Contact;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLjava/lang/String;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;ZLjava/lang/String;Z)V

    return-object v26
.end method

.method private loadDataValues(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 3

    .line 493
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/16 v1, 0x1a

    .line 495
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v1, 0x1b

    .line 497
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x1c

    .line 498
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x1d

    .line 499
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x1e

    .line 500
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x1f

    .line 501
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x20

    .line 502
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x21

    .line 503
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x22

    .line 504
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x23

    .line 505
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x24

    .line 506
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x25

    .line 507
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x26

    .line 508
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x27

    .line 509
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x28

    .line 510
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x29

    .line 511
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x2a

    .line 512
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x2b

    .line 513
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x2c

    .line 514
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x2d

    .line 515
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x2e

    .line 516
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x2f

    .line 517
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x30

    .line 518
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x31

    .line 519
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x32

    .line 520
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x34

    .line 521
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x3e

    .line 522
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x3f

    .line 523
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x40

    .line 524
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    return-object v0
.end method

.method private loadDirectoryMetaData(Lcom/android/contacts/common/model/Contact;)V
    .locals 12

    .line 549
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->getDirectoryId()J

    move-result-wide v0

    .line 552
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 553
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v2, Landroid/provider/ContactsContract$Directory;->CONTENT_URI:Landroid/net/Uri;

    .line 555
    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/android/contacts/common/model/ContactLoader$DirectoryQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 554
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 564
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 565
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    .line 566
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    .line 567
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x3

    .line 568
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    .line 569
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    .line 570
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v8, 0x0

    .line 572
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 573
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    :try_start_1
    invoke-virtual {v9, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v9

    .line 576
    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v1

    goto :goto_0

    .line 578
    :catch_0
    :try_start_2
    sget-object v9, Lcom/android/contacts/common/model/ContactLoader;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Contact directory resource not found: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v9, v2, v1}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    move-object v4, v8

    :goto_0
    move-object v2, p1

    .line 583
    invoke-virtual/range {v2 .. v7}, Lcom/android/contacts/common/model/Contact;->setDirectoryMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 587
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 588
    throw p1
.end method

.method private static loadEncodedContactEntity(Landroid/net/Uri;Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 123
    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v0

    .line 124
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "directory"

    .line 127
    invoke-virtual {v12, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v0, "display_name"

    .line 129
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    const-string v6, "display_name_alt"

    .line 130
    invoke-virtual {v13, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v0, "display_name_source"

    .line 131
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string v0, "photo_uri"

    const/4 v9, 0x0

    .line 132
    invoke-virtual {v13, v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 133
    new-instance v10, Lcom/android/contacts/common/model/Contact;

    move-object v0, v10

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    const-wide/16 v17, -0x1

    move-object/from16 p1, v10

    move-wide/from16 v9, v17

    const-wide/16 v17, 0x0

    move-object/from16 v23, v13

    move-wide/from16 v12, v17

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v0 .. v22}, Lcom/android/contacts/common/model/Contact;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLjava/lang/String;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;ZLjava/lang/String;Z)V

    const-string v0, "account_name"

    move-object/from16 v1, v23

    const/4 v2, 0x0

    .line 154
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v0, "displayName"

    move-object/from16 v2, p0

    .line 155
    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v0, "exportSupport"

    if-eqz v20, :cond_0

    const-string v2, "account_type"

    .line 157
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const/16 v19, 0x0

    const/4 v2, 0x1

    .line 163
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v22

    move-object/from16 v17, p1

    .line 158
    invoke-virtual/range {v17 .. v22}, Lcom/android/contacts/common/model/Contact;->setDirectoryMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v2, 0x2

    .line 170
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v22

    move-object/from16 v17, p1

    .line 165
    invoke-virtual/range {v17 .. v22}, Lcom/android/contacts/common/model/Contact;->setDirectoryMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 173
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, -0x1

    .line 174
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 175
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "contact_id"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 176
    new-instance v2, Lcom/android/contacts/common/model/RawContact;

    invoke-direct {v2, v0}, Lcom/android/contacts/common/model/RawContact;-><init>(Landroid/content/ContentValues;)V

    const-string/jumbo v0, "vnd.android.cursor.item/contact"

    .line 178
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 180
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 181
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 184
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_2

    .line 186
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    .line 187
    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 188
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 189
    invoke-static {v2, v6, v3}, Lcom/android/contacts/common/model/ContactLoader;->processOneRecord(Lcom/android/contacts/common/model/RawContact;Lorg/json/JSONObject;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 192
    :cond_2
    invoke-static {v2, v4, v3}, Lcom/android/contacts/common/model/ContactLoader;->processOneRecord(Lcom/android/contacts/common/model/RawContact;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1

    .line 196
    :cond_3
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lcom/android/contacts/common/model/Contact;->setRawContacts(Lcom/google/common/collect/ImmutableList;)V

    return-object v1
.end method

.method private loadGroupMetaData(Lcom/android/contacts/common/model/Contact;)V
    .locals 13

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 596
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 597
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 598
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/model/RawContact;

    .line 599
    invoke-virtual {v4}, Lcom/android/contacts/common/model/RawContact;->getAccountName()Ljava/lang/String;

    move-result-object v5

    .line 600
    invoke-virtual {v4}, Lcom/android/contacts/common/model/RawContact;->getAccountTypeString()Ljava/lang/String;

    move-result-object v6

    .line 601
    invoke-virtual {v4}, Lcom/android/contacts/common/model/RawContact;->getDataSet()Ljava/lang/String;

    move-result-object v4

    .line 602
    new-instance v7, Lcom/android/contacts/common/model/ContactLoader$AccountKey;

    invoke-direct {v7, v5, v6, v4}, Lcom/android/contacts/common/model/ContactLoader$AccountKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    .line 603
    invoke-virtual {v2, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 604
    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 605
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, " OR "

    .line 606
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v7, "(account_name=? AND account_type=?"

    .line 608
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_2

    const-string v5, " AND data_set=?"

    .line 613
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string v4, " AND data_set IS NULL"

    .line 616
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v4, ")"

    .line 618
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 621
    :cond_3
    new-instance v2, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v2}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 624
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 625
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/contacts/common/model/ContactLoader$GroupQuery;->COLUMNS:[Ljava/lang/String;

    .line 629
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x0

    new-array v3, v0, [Ljava/lang/String;

    .line 630
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 626
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 634
    :goto_2
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 635
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x1

    .line 636
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x2

    .line 637
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x3

    .line 638
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v4, 0x4

    .line 639
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v4, 0x5

    .line 641
    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_4

    move v11, v3

    goto :goto_3

    :cond_4
    move v11, v0

    :goto_3
    const/4 v4, 0x6

    .line 643
    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_5

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_5

    move v12, v3

    goto :goto_4

    :cond_5
    move v12, v0

    .line 645
    :goto_4
    new-instance v3, Lcom/android/contacts/common/GroupMetaData;

    move-object v4, v3

    invoke-direct/range {v4 .. v12}, Lcom/android/contacts/common/GroupMetaData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZZ)V

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 650
    :cond_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_0
    move-exception p1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 651
    throw p1

    .line 653
    :cond_7
    :goto_5
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/model/Contact;->setGroupMetaData(Lcom/google/common/collect/ImmutableList;)V

    return-void
.end method

.method private loadInvitableAccountTypes(Lcom/android/contacts/common/model/Contact;)V
    .locals 5

    .line 390
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 392
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->isUserProfile()Z

    move-result v1

    if-nez v1, :cond_1

    .line 394
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/common/model/AccountTypeManager;->getUsableInvitableAccountTypes()Ljava/util/Map;

    move-result-object v1

    .line 395
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 396
    invoke-static {v1}, Lcom/google/common/collect/Maps;->newHashMap(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v1

    .line 399
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/RawContact;

    .line 402
    invoke-virtual {v3}, Lcom/android/contacts/common/model/RawContact;->getAccountTypeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/contacts/common/model/RawContact;->getDataSet()Ljava/lang/String;

    move-result-object v3

    .line 401
    invoke-static {v4, v3}, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    move-result-object v3

    .line 403
    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 406
    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 411
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/model/Contact;->setInvitableAccountTypes(Lcom/google/common/collect/ImmutableList;)V

    return-void
.end method

.method private loadPhotoBinaryData(Lcom/android/contacts/common/model/Contact;)V
    .locals 6

    .line 324
    invoke-direct {p0, p1}, Lcom/android/contacts/common/model/ContactLoader;->loadThumbnailBinaryData(Lcom/android/contacts/common/model/Contact;)V

    .line 327
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->getPhotoUri()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 332
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 333
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    .line 334
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "https"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 339
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "r"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 340
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v1

    goto :goto_1

    .line 336
    :cond_1
    :goto_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    const/4 v0, 0x0

    :goto_1
    const/16 v2, 0x4000

    new-array v2, v2, [B

    .line 343
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :goto_2
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x0

    .line 347
    invoke-virtual {v3, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    .line 349
    :cond_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/contacts/common/model/Contact;->setPhotoBinaryData([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 351
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    if-eqz v0, :cond_3

    .line 353
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_3
    return-void

    :catchall_0
    move-exception v2

    .line 351
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    if-eqz v0, :cond_4

    .line 353
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 355
    :cond_4
    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 363
    :catch_0
    :cond_5
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->getThumbnailPhotoBinaryData()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/model/Contact;->setPhotoBinaryData([B)V

    return-void
.end method

.method private loadRawContactValues(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 3

    .line 470
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/16 v1, 0xe

    .line 472
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v1, 0xf

    .line 474
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x10

    .line 475
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x11

    .line 476
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x12

    .line 477
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x13

    .line 478
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x14

    .line 479
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x15

    .line 480
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x16

    .line 481
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x17

    .line 482
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x18

    .line 483
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x19

    .line 484
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0xd

    .line 485
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/4 v1, 0x7

    .line 486
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    return-object v0
.end method

.method private loadThumbnailBinaryData(Lcom/android/contacts/common/model/Contact;)V
    .locals 7

    .line 367
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->getPhotoId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    return-void

    .line 373
    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/RawContact;

    .line 374
    invoke-virtual {v3}, Lcom/android/contacts/common/model/RawContact;->getDataItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/model/dataitem/DataItem;

    .line 375
    invoke-virtual {v4}, Lcom/android/contacts/common/model/dataitem/DataItem;->getId()J

    move-result-wide v5

    cmp-long v5, v5, v0

    if-nez v5, :cond_2

    .line 376
    instance-of v3, v4, Lcom/android/contacts/common/model/dataitem/PhotoDataItem;

    if-nez v3, :cond_3

    goto :goto_0

    .line 380
    :cond_3
    check-cast v4, Lcom/android/contacts/common/model/dataitem/PhotoDataItem;

    .line 381
    invoke-virtual {v4}, Lcom/android/contacts/common/model/dataitem/PhotoDataItem;->getPhoto()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/contacts/common/model/Contact;->setThumbnailPhotoBinaryData([B)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static parseEncodedContactEntity(Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;
    .locals 0

    .line 116
    :try_start_0
    invoke-static {p0, p0}, Lcom/android/contacts/common/model/ContactLoader;->loadEncodedContactEntity(Landroid/net/Uri;Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private postViewNotificationToSyncAdapter()V
    .locals 7

    .line 718
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 719
    iget-object v1, p0, Lcom/android/contacts/common/model/ContactLoader;->mContact:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v1}, Lcom/android/contacts/common/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/RawContact;

    .line 720
    invoke-virtual {v2}, Lcom/android/contacts/common/model/RawContact;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 721
    iget-object v5, p0, Lcom/android/contacts/common/model/ContactLoader;->mNotifiedRawContactIds:Ljava/util/Set;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 724
    :cond_1
    iget-object v5, p0, Lcom/android/contacts/common/model/ContactLoader;->mNotifiedRawContactIds:Ljava/util/Set;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 725
    invoke-virtual {v2, v0}, Lcom/android/contacts/common/model/RawContact;->getAccountType(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v2

    .line 726
    invoke-virtual {v2}, Lcom/android/contacts/common/model/account/AccountType;->getViewContactNotifyServiceClassName()Ljava/lang/String;

    move-result-object v5

    .line 727
    invoke-virtual {v2}, Lcom/android/contacts/common/model/account/AccountType;->getViewContactNotifyServicePackageName()Ljava/lang/String;

    move-result-object v2

    .line 728
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 729
    sget-object v6, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 730
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 731
    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    .line 732
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "vnd.android.cursor.item/raw_contact"

    .line 733
    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 735
    :try_start_0
    invoke-virtual {v0, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 737
    sget-object v3, Lcom/android/contacts/common/model/ContactLoader;->TAG:Ljava/lang/String;

    const-string v4, "Error sending message to source-app"

    invoke-static {v3, v4, v2}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static processOneRecord(Lcom/android/contacts/common/model/RawContact;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 202
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "mimetype"

    .line 203
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, -0x1

    .line 204
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 206
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    .line 207
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 208
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 209
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 210
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 211
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :cond_1
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 213
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 216
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/RawContact;->addDataItemValues(Landroid/content/ContentValues;)V

    return-void
.end method

.method private unregisterObserver()V
    .locals 2

    .line 744
    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    if-eqz v0, :cond_0

    .line 745
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/model/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 746
    iput-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    :cond_0
    return-void
.end method


# virtual methods
.method public deliverResult(Lcom/android/contacts/common/model/Contact;)V
    .locals 3

    .line 680
    invoke-direct {p0}, Lcom/android/contacts/common/model/ContactLoader;->unregisterObserver()V

    .line 683
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->isReset()Z

    move-result v0

    if-nez v0, :cond_5

    if-nez p1, :cond_0

    goto :goto_1

    .line 687
    :cond_0
    iput-object p1, p0, Lcom/android/contacts/common/model/ContactLoader;->mContact:Lcom/android/contacts/common/model/Contact;

    .line 689
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 690
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    .line 692
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->isDirectoryEntry()Z

    move-result p1

    if-nez p1, :cond_3

    .line 693
    iget-object p1, p0, Lcom/android/contacts/common/model/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    if-nez p1, :cond_1

    .line 694
    new-instance p1, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {p1, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object p1, p0, Lcom/android/contacts/common/model/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 697
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/util/PermissionsUtil;->hasContactsReadPermissions(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 698
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/contacts/common/model/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "ContactLoader.deliverResult"

    const-string v1, "contacts permission not available"

    .line 700
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 704
    :cond_3
    :goto_0
    iget-boolean p1, p0, Lcom/android/contacts/common/model/ContactLoader;->mPostViewNotification:Z

    if-eqz p1, :cond_4

    .line 706
    invoke-direct {p0}, Lcom/android/contacts/common/model/ContactLoader;->postViewNotificationToSyncAdapter()V

    .line 710
    :cond_4
    iget-object p1, p0, Lcom/android/contacts/common/model/ContactLoader;->mContact:Lcom/android/contacts/common/model/Contact;

    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .line 71
    check-cast p1, Lcom/android/contacts/common/model/Contact;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/ContactLoader;->deliverResult(Lcom/android/contacts/common/model/Contact;)V

    return-void
.end method

.method public getLookupUri()Landroid/net/Uri;
    .locals 1

    .line 751
    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method public loadInBackground()Lcom/android/contacts/common/model/Contact;
    .locals 6

    .line 221
    sget-object v0, Lcom/android/contacts/common/model/ContactLoader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadInBackground="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/contacts/common/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 224
    iget-object v1, p0, Lcom/android/contacts/common/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/contacts/common/util/ContactLoaderUtils;->ensureIsContactUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 225
    sget-object v3, Lcom/android/contacts/common/model/ContactLoader;->sCachedResult:Lcom/android/contacts/common/model/Contact;

    const/4 v4, 0x0

    .line 226
    sput-object v4, Lcom/android/contacts/common/model/ContactLoader;->sCachedResult:Lcom/android/contacts/common/model/Contact;

    if-eqz v3, :cond_0

    .line 230
    invoke-virtual {v3}, Lcom/android/contacts/common/model/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/common/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/android/contacts/common/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 233
    new-instance v0, Lcom/android/contacts/common/model/Contact;

    iget-object v1, p0, Lcom/android/contacts/common/model/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v3}, Lcom/android/contacts/common/model/Contact;-><init>(Landroid/net/Uri;Lcom/android/contacts/common/model/Contact;)V

    const/4 v2, 0x1

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    const-string v4, "encoded"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 237
    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    invoke-static {v1, v0}, Lcom/android/contacts/common/model/ContactLoader;->loadEncodedContactEntity(Landroid/net/Uri;Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;

    move-result-object v0

    goto :goto_0

    .line 239
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->loadContactEntity(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;

    move-result-object v0

    .line 243
    :goto_0
    invoke-virtual {v0}, Lcom/android/contacts/common/model/Contact;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 244
    invoke-virtual {v0}, Lcom/android/contacts/common/model/Contact;->isDirectoryEntry()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v2, :cond_3

    .line 246
    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/ContactLoader;->loadDirectoryMetaData(Lcom/android/contacts/common/model/Contact;)V

    goto :goto_1

    .line 248
    :cond_2
    iget-boolean v1, p0, Lcom/android/contacts/common/model/ContactLoader;->mLoadGroupMetaData:Z

    if-eqz v1, :cond_3

    .line 249
    invoke-virtual {v0}, Lcom/android/contacts/common/model/Contact;->getGroupMetaData()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    if-nez v1, :cond_3

    .line 250
    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/ContactLoader;->loadGroupMetaData(Lcom/android/contacts/common/model/Contact;)V

    .line 253
    :cond_3
    :goto_1
    iget-boolean v1, p0, Lcom/android/contacts/common/model/ContactLoader;->mComputeFormattedPhoneNumber:Z

    if-eqz v1, :cond_4

    .line 254
    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/ContactLoader;->computeFormattedPhoneNumbers(Lcom/android/contacts/common/model/Contact;)V

    :cond_4
    if-nez v2, :cond_5

    .line 257
    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/ContactLoader;->loadPhotoBinaryData(Lcom/android/contacts/common/model/Contact;)V

    .line 261
    :cond_5
    iget-boolean v1, p0, Lcom/android/contacts/common/model/ContactLoader;->mLoadInvitableAccountTypes:Z

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/android/contacts/common/model/Contact;->getInvitableAccountTypes()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    if-nez v1, :cond_6

    .line 262
    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/ContactLoader;->loadInvitableAccountTypes(Lcom/android/contacts/common/model/Contact;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return-object v0

    :catch_0
    move-exception v0

    .line 267
    sget-object v1, Lcom/android/contacts/common/model/ContactLoader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading the contact: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/contacts/common/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 268
    iget-object v1, p0, Lcom/android/contacts/common/model/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    invoke-static {v1, v0}, Lcom/android/contacts/common/model/Contact;->forError(Landroid/net/Uri;Ljava/lang/Exception;)Lcom/android/contacts/common/model/Contact;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->loadInBackground()Lcom/android/contacts/common/model/Contact;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 1

    .line 776
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 777
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->cancelLoad()Z

    .line 778
    invoke-direct {p0}, Lcom/android/contacts/common/model/ContactLoader;->unregisterObserver()V

    const/4 v0, 0x0

    .line 779
    iput-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mContact:Lcom/android/contacts/common/model/Contact;

    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .line 760
    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mContact:Lcom/android/contacts/common/model/Contact;

    if-eqz v0, :cond_0

    .line 761
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ContactLoader;->deliverResult(Lcom/android/contacts/common/model/Contact;)V

    .line 764
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mContact:Lcom/android/contacts/common/model/Contact;

    if-nez v0, :cond_2

    .line 765
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->forceLoad()V

    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .line 771
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->cancelLoad()Z

    return-void
.end method

.method public setLookupUri(Landroid/net/Uri;)V
    .locals 0

    .line 755
    iput-object p1, p0, Lcom/android/contacts/common/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    return-void
.end method
