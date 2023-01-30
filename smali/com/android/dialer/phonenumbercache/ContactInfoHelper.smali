.class public Lcom/android/dialer/phonenumbercache/ContactInfoHelper;
.super Ljava/lang/Object;
.source "ContactInfoHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCachedNumberLookupService:Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentCountryIso:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    const-class v0, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->mContext:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->mCurrentCountryIso:Ljava/lang/String;

    .line 71
    invoke-static {p1}, Lcom/android/dialer/phonenumbercache/PhoneNumberCache;->get(Landroid/content/Context;)Lcom/android/dialer/phonenumbercache/PhoneNumberCacheBindings;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/dialer/phonenumbercache/PhoneNumberCacheBindings;->getCachedNumberLookupService()Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->mCachedNumberLookupService:Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;

    return-void
.end method

.method private createEmptyContactInfoForNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dialer/phonenumbercache/ContactInfo;
    .locals 2

    .line 271
    new-instance v0, Lcom/android/dialer/phonenumbercache/ContactInfo;

    invoke-direct {v0}, Lcom/android/dialer/phonenumbercache/ContactInfo;-><init>()V

    .line 272
    iput-object p1, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->number:Ljava/lang/String;

    const/4 v1, 0x0

    .line 273
    invoke-direct {p0, p1, v1, p2}, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 274
    invoke-static {p1, p2}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->normalizedNumber:Ljava/lang/String;

    .line 275
    iget-object p1, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->createTemporaryContactUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->lookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method private createPhoneLookupContactInfo(Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/dialer/phonenumbercache/ContactInfo;
    .locals 5

    .line 373
    new-instance v0, Lcom/android/dialer/phonenumbercache/ContactInfo;

    invoke-direct {v0}, Lcom/android/dialer/phonenumbercache/ContactInfo;-><init>()V

    .line 374
    iput-object p2, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->lookupKey:Ljava/lang/String;

    const/4 v1, 0x0

    .line 376
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3, p2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->lookupUri:Landroid/net/Uri;

    const/4 p2, 0x1

    .line 377
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    const/4 v2, 0x2

    .line 378
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->type:I

    const/4 v2, 0x3

    .line 379
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->label:Ljava/lang/String;

    const/4 v2, 0x4

    .line 380
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->number:Ljava/lang/String;

    const/4 v2, 0x5

    .line 381
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->normalizedNumber:Ljava/lang/String;

    const/4 v2, 0x6

    .line 382
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->photoId:J

    const/16 v2, 0x8

    .line 383
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/common/util/UriUtils;->parseUriOrNull(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->photoUri:Landroid/net/Uri;

    const/4 v2, 0x0

    .line 384
    iput-object v2, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 386
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/contacts/common/ContactsUtils;->determineUserType(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->userType:J

    .line 387
    iput-boolean p2, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->contactExists:Z

    return-object v0
.end method

.method private static createTemporaryContactUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 5

    .line 83
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "vnd.android.cursor.item/phone_v2"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "data1"

    .line 87
    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "data2"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    .line 85
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 89
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "display_name"

    .line 91
    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "display_name_source"

    const/16 v2, 0x14

    .line 92
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    const-string/jumbo v1, "vnd.android.cursor.item/contact"

    .line 93
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    .line 94
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    .line 96
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    .line 97
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "encoded"

    .line 98
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "directory"

    const-wide v2, 0x7fffffffffffffffL

    .line 100
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 101
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 102
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private fillAdditionalContactInfo(Landroid/content/Context;Lcom/android/dialer/phonenumbercache/ContactInfo;)V
    .locals 8

    .line 393
    iget-object v0, p2, Lcom/android/dialer/phonenumbercache/ContactInfo;->number:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 396
    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v1, p2, Lcom/android/dialer/phonenumbercache/ContactInfo;->number:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 399
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/dialer/phonenumbercache/PhoneQuery;->ADDITIONAL_CONTACT_INFO_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 400
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 401
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 405
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/dialer/phonenumbercache/ContactInfo;->nameAlternative:Ljava/lang/String;

    const/4 v0, 0x1

    .line 407
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/android/dialer/phonenumbercache/ContactInfo;->carrierPresence:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 408
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception p2

    .line 397
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_3

    .line 408
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v0

    :cond_4
    :goto_1
    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    return-void
.end method

.method private formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 502
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 506
    :cond_0
    invoke-static {p1}, Lcom/android/dialer/phonenumberutil/PhoneNumberHelper;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 509
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 510
    iget-object p3, p0, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->mCurrentCountryIso:Ljava/lang/String;

    .line 512
    :cond_2
    invoke-static {p1, p2, p3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getContactInfo(Landroid/database/Cursor;)Lcom/android/dialer/phonenumbercache/ContactInfo;
    .locals 4

    .line 186
    new-instance v0, Lcom/android/dialer/phonenumbercache/ContactInfo;

    invoke-direct {v0}, Lcom/android/dialer/phonenumbercache/ContactInfo;-><init>()V

    const/16 v1, 0xb

    .line 187
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/common/util/UriUtils;->parseUriOrNull(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->lookupUri:Landroid/net/Uri;

    const/16 v1, 0x8

    .line 188
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    const/16 v1, 0x9

    .line 189
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->type:I

    const/16 v1, 0xa

    .line 190
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->label:Ljava/lang/String;

    const/16 v1, 0xc

    .line 191
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 192
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 193
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    if-nez v1, :cond_1

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    .line 195
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    iput-object v1, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->number:Ljava/lang/String;

    const/16 v1, 0xd

    .line 197
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->normalizedNumber:Ljava/lang/String;

    const/16 v1, 0xe

    .line 198
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->photoId:J

    const/16 v1, 0x17

    .line 201
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/common/util/UriUtils;->parseUriOrNull(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 200
    invoke-static {v1}, Lcom/android/contacts/common/util/UriUtils;->nullForNonContactsUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->photoUri:Landroid/net/Uri;

    const/16 v1, 0xf

    .line 202
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->formattedNumber:Ljava/lang/String;

    return-object v0
.end method

.method public static getContactInfoLookupUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    const-wide/16 v0, -0x1

    .line 151
    invoke-static {p0, v0, v1}, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->getContactInfoLookupUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getContactInfoLookupUri(Ljava/lang/String;J)Landroid/net/Uri;
    .locals 5

    .line 157
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 158
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide/16 v2, -0x1

    const/16 v4, 0x18

    if-ge v1, v4, :cond_1

    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    .line 161
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    goto :goto_0

    .line 164
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 168
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 169
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 172
    invoke-static {p0}, Lcom/android/dialer/phonenumberutil/PhoneNumberHelper;->isUriNumber(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string v1, "sip"

    .line 170
    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    cmp-long v0, p1, v2

    if-eqz v0, :cond_2

    .line 175
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "directory"

    .line 174
    invoke-virtual {p0, p2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 177
    :cond_2
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private getRemoteDirectories(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 303
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    sget-object v1, Landroid/provider/ContactsContract$Directory;->ENTERPRISE_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/provider/ContactsContract$Directory;->CONTENT_URI:Landroid/net/Uri;

    :goto_0
    move-object v3, v1

    .line 307
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string p1, "_id"

    .line 308
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 309
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    if-nez v1, :cond_1

    return-object v0

    .line 314
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 315
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 316
    invoke-static {v2, v3}, Lcom/android/contacts/common/compat/DirectoryCompat;->isRemoteDirectoryId(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 317
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 321
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 322
    throw p1
.end method

.method public static lookUpDisplayNameAlternative(Landroid/content/Context;Ljava/lang/String;JLjava/lang/Long;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    const-wide/16 v1, 0x1

    cmp-long p2, p2, v1

    if-nez p2, :cond_0

    goto :goto_4

    :cond_0
    if-eqz p4, :cond_2

    .line 117
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-static {p2, p3}, Lcom/android/contacts/common/compat/DirectoryCompat;->isEnterpriseDirectoryId(J)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object v0

    .line 122
    :cond_1
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-static {p2, p3}, Lcom/android/contacts/common/compat/DirectoryCompat;->isRemoteDirectoryId(J)Z

    move-result p2

    if-eqz p2, :cond_2

    return-object v0

    .line 127
    :cond_2
    sget-object p2, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {p2, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 132
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/dialer/phonenumbercache/PhoneQuery;->DISPLAY_NAME_ALTERNATIVE_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 133
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_4

    .line 135
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 136
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_3

    .line 143
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object p1

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_4
    if-eqz p0, :cond_5

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    move-object p0, v0

    .line 140
    :goto_1
    :try_start_2
    sget-object p2, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->TAG:Ljava/lang/String;

    const-string p3, "IllegalArgumentException in lookUpDisplayNameAlternative"

    invoke-static {p2, p3, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    :goto_2
    return-object v0

    :catchall_1
    move-exception p1

    move-object v0, p0

    :goto_3
    if-eqz v0, :cond_6

    .line 143
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 145
    :cond_6
    throw p1

    :cond_7
    :goto_4
    return-object v0
.end method

.method private queryContactInfoForPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZZ)Lcom/android/dialer/phonenumbercache/ContactInfo;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-wide/from16 v3, p4

    .line 428
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "ContactInfoHelper.queryContactInfoForPhoneNumber"

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v5, :cond_0

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "number is empty"

    .line 429
    invoke-static {v6, v2, v1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v7

    .line 433
    :cond_0
    invoke-static {v1, v3, v4}, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->getContactInfoLookupUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->lookupContactFromUri(Landroid/net/Uri;)Lcom/android/dialer/phonenumbercache/ContactInfo;

    move-result-object v5

    if-nez v5, :cond_1

    new-array v9, v8, [Ljava/lang/Object;

    const-string v10, "info looked up is null"

    .line 435
    invoke-static {v6, v10, v9}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    if-eqz p7, :cond_7

    const-string v9, "[,;]"

    .line 438
    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 439
    invoke-virtual {v9, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 440
    array-length v10, v9

    const/4 v11, 0x1

    if-le v10, v11, :cond_7

    if-eqz v5, :cond_2

    .line 441
    sget-object v10, Lcom/android/dialer/phonenumbercache/ContactInfo;->EMPTY:Lcom/android/dialer/phonenumbercache/ContactInfo;

    if-ne v5, v10, :cond_3

    .line 442
    :cond_2
    new-instance v5, Lcom/android/dialer/phonenumbercache/ContactInfo;

    invoke-direct {v5}, Lcom/android/dialer/phonenumbercache/ContactInfo;-><init>()V

    .line 443
    iput-object v1, v5, Lcom/android/dialer/phonenumbercache/ContactInfo;->number:Ljava/lang/String;

    .line 444
    invoke-direct {v0, v1, v7, v2}, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Lcom/android/dialer/phonenumbercache/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 445
    iget-object v10, v5, Lcom/android/dialer/phonenumbercache/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->createTemporaryContactUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, v5, Lcom/android/dialer/phonenumbercache/ContactInfo;->lookupUri:Landroid/net/Uri;

    .line 446
    invoke-static {v1, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Lcom/android/dialer/phonenumbercache/ContactInfo;->normalizedNumber:Ljava/lang/String;

    .line 450
    :cond_3
    array-length v10, v9

    const-string v12, ""

    move v13, v8

    :goto_0
    if-ge v13, v10, :cond_6

    aget-object v14, v9, v13

    .line 451
    invoke-static {v14, v3, v4}, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->getContactInfoLookupUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v0, v15}, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->lookupContactFromUri(Landroid/net/Uri;)Lcom/android/dialer/phonenumbercache/ContactInfo;

    move-result-object v15

    .line 453
    sget-object v8, Lcom/android/dialer/phonenumbercache/ContactInfo;->EMPTY:Lcom/android/dialer/phonenumbercache/ContactInfo;

    if-ne v15, v8, :cond_4

    .line 454
    new-instance v15, Lcom/android/dialer/phonenumbercache/ContactInfo;

    invoke-direct {v15}, Lcom/android/dialer/phonenumbercache/ContactInfo;-><init>()V

    .line 456
    :cond_4
    iget-object v8, v15, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 457
    invoke-direct {v0, v14, v7, v2}, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v15, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    .line 459
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v15, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ";"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v13, v13, 0x1

    const/4 v8, 0x0

    goto :goto_0

    .line 461
    :cond_6
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v11, :cond_7

    .line 462
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v11

    const/4 v9, 0x0

    invoke-virtual {v12, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    :cond_7
    if-eqz v5, :cond_a

    .line 466
    sget-object v8, Lcom/android/dialer/phonenumbercache/ContactInfo;->EMPTY:Lcom/android/dialer/phonenumbercache/ContactInfo;

    if-eq v5, v8, :cond_a

    if-nez p7, :cond_8

    .line 467
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 468
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p2

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 470
    :cond_8
    invoke-direct {v0, v1, v7, v2}, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/android/dialer/phonenumbercache/ContactInfo;->formattedNumber:Ljava/lang/String;

    const-wide/16 v1, -0x1

    cmp-long v1, v3, v1

    if-nez v1, :cond_9

    .line 473
    sget-object v1, Lcom/android/dialer/logging/ContactSource$Type;->SOURCE_TYPE_DIRECTORY:Lcom/android/dialer/logging/ContactSource$Type;

    iput-object v1, v5, Lcom/android/dialer/phonenumbercache/ContactInfo;->sourceType:Lcom/android/dialer/logging/ContactSource$Type;

    goto :goto_1

    .line 476
    :cond_9
    sget-object v1, Lcom/android/dialer/logging/ContactSource$Type;->SOURCE_TYPE_EXTENDED:Lcom/android/dialer/logging/ContactSource$Type;

    iput-object v1, v5, Lcom/android/dialer/phonenumbercache/ContactInfo;->sourceType:Lcom/android/dialer/logging/ContactSource$Type;

    goto :goto_1

    .line 478
    :cond_a
    iget-object v2, v0, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->mCachedNumberLookupService:Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;

    if-eqz v2, :cond_c

    .line 479
    iget-object v3, v0, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->mContext:Landroid/content/Context;

    .line 480
    invoke-interface {v2, v3, v1}, Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;->lookupCachedContactFromNumber(Landroid/content/Context;Ljava/lang/String;)Lcom/android/dialer/phonenumbercache/CachedNumberLookupService$CachedContactInfo;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 482
    invoke-interface {v1}, Lcom/android/dialer/phonenumbercache/CachedNumberLookupService$CachedContactInfo;->getContactInfo()Lcom/android/dialer/phonenumbercache/ContactInfo;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/dialer/phonenumbercache/ContactInfo;->isBadData:Z

    if-nez v2, :cond_b

    .line 483
    invoke-interface {v1}, Lcom/android/dialer/phonenumbercache/CachedNumberLookupService$CachedContactInfo;->getContactInfo()Lcom/android/dialer/phonenumbercache/ContactInfo;

    move-result-object v5

    goto :goto_1

    :cond_b
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "info is bad data"

    .line 485
    invoke-static {v6, v2, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    :goto_1
    return-object v5
.end method


# virtual methods
.method public canReportAsInvalid(Lcom/android/dialer/logging/ContactSource$Type;Ljava/lang/String;)Z
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->mCachedNumberLookupService:Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;

    if-eqz v0, :cond_0

    .line 659
    invoke-interface {v0, p1, p2}, Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;->canReportAsInvalid(Lcom/android/dialer/logging/ContactSource$Type;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasName(Lcom/android/dialer/phonenumbercache/ContactInfo;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 298
    iget-object p1, p1, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isBusiness(Lcom/android/dialer/logging/ContactSource$Type;)Z
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->mCachedNumberLookupService:Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;->isBusiness(Lcom/android/dialer/logging/ContactSource$Type;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method lookupContactFromUri(Landroid/net/Uri;)Lcom/android/dialer/phonenumbercache/ContactInfo;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "ContactInfoHelper.lookupContactFromUri"

    if-nez p1, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "uri is null"

    .line 337
    invoke-static {v2, v1, p1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 340
    :cond_0
    iget-object v3, p0, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/dialer/util/PermissionsUtil;->hasContactsReadPermissions(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "no contact permission, return empty"

    .line 341
    invoke-static {v2, v0, p1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    sget-object p1, Lcom/android/dialer/phonenumbercache/ContactInfo;->EMPTY:Lcom/android/dialer/phonenumbercache/ContactInfo;

    return-object p1

    .line 347
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/android/dialer/phonenumbercache/PhoneQuery;->getPhoneLookupProjection(Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v5

    .line 348
    iget-object v3, p0, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_2

    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "phoneLookupCursor is null"

    .line 355
    invoke-static {v2, v1, p1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 360
    :cond_2
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 361
    sget-object v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->EMPTY:Lcom/android/dialer/phonenumbercache/ContactInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_3
    const/4 v0, 0x7

    .line 363
    :try_start_2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 364
    invoke-direct {p0, p1, v0}, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->createPhoneLookupContactInfo(Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/dialer/phonenumbercache/ContactInfo;

    move-result-object v0

    .line 365
    iget-object v1, p0, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->fillAdditionalContactInfo(Landroid/content/Context;Lcom/android/dialer/phonenumbercache/ContactInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 368
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 369
    throw v0

    :catch_0
    move-exception p1

    const-string v1, "phone lookup"

    .line 350
    invoke-static {v2, v1, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public lookupNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dialer/phonenumbercache/ContactInfo;
    .locals 7

    const/4 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 209
    invoke-virtual/range {v0 .. v6}, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->lookupNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)Lcom/android/dialer/phonenumbercache/ContactInfo;

    move-result-object p1

    return-object p1
.end method

.method public lookupNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)Lcom/android/dialer/phonenumbercache/ContactInfo;
    .locals 13

    move-object v8, p0

    move-object v9, p1

    .line 228
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "ContactInfoHelper.lookupNumber"

    if-eqz v0, :cond_0

    new-array v0, v11, [Ljava/lang/Object;

    const-string v1, "number is empty"

    .line 229
    invoke-static {v12, v1, v0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v10

    .line 235
    :cond_0
    invoke-static {p1}, Lcom/android/dialer/phonenumberutil/PhoneNumberHelper;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v11, [Ljava/lang/Object;

    const-string v1, "number is sip"

    .line 236
    invoke-static {v12, v1, v0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-wide/from16 v4, p4

    .line 238
    invoke-static {p1, v4, v5}, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->getContactInfoLookupUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->lookupContactFromUri(Landroid/net/Uri;)Lcom/android/dialer/phonenumbercache/ContactInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 239
    sget-object v1, Lcom/android/dialer/phonenumbercache/ContactInfo;->EMPTY:Lcom/android/dialer/phonenumbercache/ContactInfo;

    if-ne v0, v1, :cond_3

    .line 241
    :cond_1
    invoke-static {p1}, Lcom/android/dialer/phonenumberutil/PhoneNumberHelper;->getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move/from16 v7, p6

    .line 243
    invoke-direct/range {v0 .. v7}, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->queryContactInfoForPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZZ)Lcom/android/dialer/phonenumbercache/ContactInfo;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-wide/from16 v4, p4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v7, p6

    .line 249
    invoke-direct/range {v0 .. v7}, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->queryContactInfoForPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZZ)Lcom/android/dialer/phonenumbercache/ContactInfo;

    move-result-object v0

    :cond_3
    :goto_0
    if-nez v0, :cond_4

    new-array v0, v11, [Ljava/lang/Object;

    const-string v1, "lookup failed"

    .line 256
    invoke-static {v12, v1, v0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 260
    :cond_4
    sget-object v1, Lcom/android/dialer/phonenumbercache/ContactInfo;->EMPTY:Lcom/android/dialer/phonenumbercache/ContactInfo;

    if-ne v0, v1, :cond_5

    move-object/from16 v1, p3

    .line 262
    invoke-direct {p0, p1, v1}, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->createEmptyContactInfoForNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dialer/phonenumbercache/ContactInfo;

    move-result-object v10

    goto :goto_1

    :cond_5
    move-object v10, v0

    :goto_1
    return-object v10
.end method

.method public lookupNumberInRemoteDirectory(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dialer/phonenumbercache/ContactInfo;
    .locals 9

    .line 284
    iget-object v0, p0, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->mCachedNumberLookupService:Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->getRemoteDirectories(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 286
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    .line 287
    invoke-virtual/range {v2 .. v8}, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->lookupNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)Lcom/android/dialer/phonenumbercache/ContactInfo;

    move-result-object v1

    .line 289
    invoke-virtual {p0, v1}, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->hasName(Lcom/android/dialer/phonenumbercache/ContactInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 294
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->createEmptyContactInfoForNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dialer/phonenumbercache/ContactInfo;

    move-result-object p1

    return-object p1
.end method

.method public updateCachedNumberLookupService(Lcom/android/dialer/phonenumbercache/ContactInfo;)V
    .locals 2

    .line 630
    iget-object v0, p0, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->mCachedNumberLookupService:Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;

    if-eqz v0, :cond_0

    .line 631
    invoke-virtual {p0, p1}, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->hasName(Lcom/android/dialer/phonenumbercache/ContactInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->mCachedNumberLookupService:Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;

    .line 633
    invoke-interface {v0, p1}, Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;->buildCachedContactInfo(Lcom/android/dialer/phonenumbercache/ContactInfo;)Lcom/android/dialer/phonenumbercache/CachedNumberLookupService$CachedContactInfo;

    move-result-object p1

    .line 634
    iget-object v0, p0, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->mCachedNumberLookupService:Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;

    iget-object v1, p0, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;->addContact(Landroid/content/Context;Lcom/android/dialer/phonenumbercache/CachedNumberLookupService$CachedContactInfo;)V

    :cond_0
    return-void
.end method

.method public updateCallLogContactInfo(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/phonenumbercache/ContactInfo;Lcom/android/dialer/phonenumbercache/ContactInfo;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-object/from16 v2, p4

    .line 525
    iget-object v3, v1, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.WRITE_CALL_LOG"

    invoke-static {v3, v4}, Lcom/android/dialer/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 529
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "geocoded_location"

    const-string v5, "formatted_number"

    const-string v6, "photo_uri"

    const-string v7, "photo_id"

    const-string v8, "normalized_number"

    const-string v9, "matched_number"

    const-string v10, "lookup_uri"

    const-string v11, "numberlabel"

    const-string v12, "numbertype"

    const-string v13, "name"

    if-eqz v2, :cond_a

    .line 533
    iget-object v14, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    iget-object v15, v2, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 534
    iget-object v14, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x1

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    .line 538
    :goto_0
    iget v14, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->type:I

    iget v15, v2, Lcom/android/dialer/phonenumbercache/ContactInfo;->type:I

    if-eq v14, v15, :cond_2

    .line 539
    iget v13, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->type:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v13, 0x1

    .line 543
    :cond_2
    iget-object v12, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->label:Ljava/lang/String;

    iget-object v14, v2, Lcom/android/dialer/phonenumbercache/ContactInfo;->label:Ljava/lang/String;

    invoke-static {v12, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 544
    iget-object v12, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->label:Ljava/lang/String;

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x1

    .line 548
    :cond_3
    iget-object v11, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->lookupUri:Landroid/net/Uri;

    iget-object v12, v2, Lcom/android/dialer/phonenumbercache/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v11, v12}, Lcom/android/contacts/common/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 549
    iget-object v11, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v11}, Lcom/android/contacts/common/util/UriUtils;->uriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x1

    .line 554
    :cond_4
    iget-object v10, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    iget-object v10, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->normalizedNumber:Ljava/lang/String;

    iget-object v11, v2, Lcom/android/dialer/phonenumbercache/ContactInfo;->normalizedNumber:Ljava/lang/String;

    .line 555
    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 556
    iget-object v10, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x1

    .line 560
    :cond_5
    iget-object v8, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->number:Ljava/lang/String;

    iget-object v10, v2, Lcom/android/dialer/phonenumbercache/ContactInfo;->number:Ljava/lang/String;

    invoke-static {v8, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 561
    iget-object v8, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v3, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x1

    .line 565
    :cond_6
    iget-wide v8, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->photoId:J

    iget-wide v10, v2, Lcom/android/dialer/phonenumbercache/ContactInfo;->photoId:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_7

    .line 566
    iget-wide v8, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->photoId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v13, 0x1

    .line 570
    :cond_7
    iget-object v7, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->photoUri:Landroid/net/Uri;

    invoke-static {v7}, Lcom/android/contacts/common/util/UriUtils;->nullForNonContactsUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    .line 571
    iget-object v8, v2, Lcom/android/dialer/phonenumbercache/ContactInfo;->photoUri:Landroid/net/Uri;

    invoke-static {v7, v8}, Lcom/android/contacts/common/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 572
    invoke-static {v7}, Lcom/android/contacts/common/util/UriUtils;->uriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x1

    .line 576
    :cond_8
    iget-object v6, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->formattedNumber:Ljava/lang/String;

    iget-object v7, v2, Lcom/android/dialer/phonenumbercache/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 577
    iget-object v6, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x1

    .line 581
    :cond_9
    iget-object v5, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->geoDescription:Ljava/lang/String;

    iget-object v2, v2, Lcom/android/dialer/phonenumbercache/ContactInfo;->geoDescription:Ljava/lang/String;

    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 582
    iget-object v0, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->geoDescription:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 587
    :cond_a
    iget-object v2, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v13, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    iget v2, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v12, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 589
    iget-object v2, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->label:Ljava/lang/String;

    invoke-virtual {v3, v11, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    iget-object v2, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/android/contacts/common/util/UriUtils;->uriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v10, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    iget-object v2, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v3, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    iget-object v2, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-virtual {v3, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    iget-wide v8, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->photoId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 594
    iget-object v2, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->photoUri:Landroid/net/Uri;

    .line 596
    invoke-static {v2}, Lcom/android/contacts/common/util/UriUtils;->nullForNonContactsUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/common/util/UriUtils;->uriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 594
    invoke-virtual {v3, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    iget-object v2, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-virtual {v3, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    iget-object v0, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->geoDescription:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v13, 0x1

    :cond_b
    if-nez v13, :cond_c

    return-void

    :cond_c
    if-nez p2, :cond_d

    .line 608
    :try_start_0
    iget-object v0, v1, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->mContext:Landroid/content/Context;

    .line 609
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, v1, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->mContext:Landroid/content/Context;

    .line 611
    invoke-static {v2}, Lcom/android/dialer/telecom/TelecomUtil;->getCallLogUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    const-string v4, "number = ? AND countryiso IS NULL"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    .line 610
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 616
    :cond_d
    iget-object v0, v1, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->mContext:Landroid/content/Context;

    .line 617
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, v1, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->mContext:Landroid/content/Context;

    .line 619
    invoke-static {v2}, Lcom/android/dialer/telecom/TelecomUtil;->getCallLogUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    const-string v4, "number = ? AND countryiso = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    .line 618
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 625
    sget-object v2, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->TAG:Ljava/lang/String;

    const-string v3, "Unable to update contact info in call log db"

    invoke-static {v2, v3, v0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public updateFromCequintCallerId(Lcom/android/dialer/oem/CequintCallerIdManager;Lcom/android/dialer/phonenumbercache/ContactInfo;Ljava/lang/String;)V
    .locals 1

    .line 669
    invoke-static {}, Lcom/android/dialer/common/Assert;->isWorkerThread()V

    .line 670
    iget-object v0, p0, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/oem/CequintCallerIdManager;->isCequintCallerIdEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 676
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->mContext:Landroid/content/Context;

    .line 677
    invoke-virtual {p1, v0, p3}, Lcom/android/dialer/oem/CequintCallerIdManager;->getCequintCallerIdContact(Landroid/content/Context;Ljava/lang/String;)Lcom/android/dialer/oem/CequintCallerIdManager$CequintCallerIdContact;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 681
    :cond_2
    iget-object p3, p2, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p1, Lcom/android/dialer/oem/CequintCallerIdManager$CequintCallerIdContact;->name:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 682
    iget-object p3, p1, Lcom/android/dialer/oem/CequintCallerIdManager$CequintCallerIdContact;->name:Ljava/lang/String;

    iput-object p3, p2, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    .line 684
    :cond_3
    iget-object p3, p1, Lcom/android/dialer/oem/CequintCallerIdManager$CequintCallerIdContact;->geoDescription:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 685
    iget-object p3, p1, Lcom/android/dialer/oem/CequintCallerIdManager$CequintCallerIdContact;->geoDescription:Ljava/lang/String;

    iput-object p3, p2, Lcom/android/dialer/phonenumbercache/ContactInfo;->geoDescription:Ljava/lang/String;

    .line 686
    sget-object p3, Lcom/android/dialer/logging/ContactSource$Type;->SOURCE_TYPE_CEQUINT_CALLER_ID:Lcom/android/dialer/logging/ContactSource$Type;

    iput-object p3, p2, Lcom/android/dialer/phonenumbercache/ContactInfo;->sourceType:Lcom/android/dialer/logging/ContactSource$Type;

    .line 689
    :cond_4
    iget-boolean p3, p2, Lcom/android/dialer/phonenumbercache/ContactInfo;->contactExists:Z

    if-nez p3, :cond_5

    iget-object p3, p2, Lcom/android/dialer/phonenumbercache/ContactInfo;->photoUri:Landroid/net/Uri;

    if-nez p3, :cond_5

    iget-object p3, p1, Lcom/android/dialer/oem/CequintCallerIdManager$CequintCallerIdContact;->imageUrl:Ljava/lang/String;

    if-eqz p3, :cond_5

    .line 690
    iget-object p1, p1, Lcom/android/dialer/oem/CequintCallerIdManager$CequintCallerIdContact;->imageUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/contacts/common/util/UriUtils;->parseUriOrNull(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p2, Lcom/android/dialer/phonenumbercache/ContactInfo;->photoUri:Landroid/net/Uri;

    :cond_5
    return-void
.end method
