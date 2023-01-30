.class public Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;
.super Ljava/lang/Object;
.source "CallLogNotificationsQueryHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$DefaultNewCallsQuery;,
        Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;,
        Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCallsQuery;
    }
.end annotation


# instance fields
.field private final mContactInfoHelper:Lcom/android/dialer/phonenumbercache/ContactInfoHelper;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentCountryIso:Ljava/lang/String;

.field private final mNewCallsQuery:Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCallsQuery;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCallsQuery;Lcom/android/dialer/phonenumbercache/ContactInfoHelper;Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;->mNewCallsQuery:Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCallsQuery;

    .line 65
    iput-object p3, p0, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;->mContactInfoHelper:Lcom/android/dialer/phonenumbercache/ContactInfoHelper;

    .line 66
    iput-object p4, p0, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;->mCurrentCountryIso:Ljava/lang/String;

    return-void
.end method

.method public static createNewCallsQuery(Landroid/content/Context;Landroid/content/ContentResolver;)Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCallsQuery;
    .locals 2

    .line 140
    new-instance v0, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$DefaultNewCallsQuery;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$DefaultNewCallsQuery;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$1;)V

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;
    .locals 4

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 72
    invoke-static {p0}, Lcom/android/dialer/location/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 73
    new-instance v2, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;

    .line 75
    invoke-static {p0, v0}, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;->createNewCallsQuery(Landroid/content/Context;Landroid/content/ContentResolver;)Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCallsQuery;

    move-result-object v0

    new-instance v3, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;

    invoke-direct {v3, p0, v1}, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v2, p0, v0, v3, v1}, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;-><init>(Landroid/content/Context;Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCallsQuery;Lcom/android/dialer/phonenumbercache/ContactInfoHelper;Ljava/lang/String;)V

    return-object v2
.end method

.method public static markAllMissedCallsInCallLogAsRead(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-static {p0, v0}, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;->markMissedCallsInCallLogAsRead(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method private static markMissedCallsInCallLogAsRead(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 8

    .line 101
    invoke-static {p0}, Landroidx/core/os/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "CallLogNotificationsQueryHelper.markMissedCallsInCallLogAsRead"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "locked"

    .line 102
    invoke-static {v1, p1, p0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 105
    :cond_0
    invoke-static {p0}, Lcom/android/dialer/util/PermissionsUtil;->hasPhonePermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "no permission"

    .line 106
    invoke-static {v1, p1, p0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 110
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 111
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "new"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v3, 0x1

    .line 112
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "is_read"

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 113
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 115
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = 1 AND "

    .line 116
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v7, "type"

    aput-object v7, v4, v2

    aput-object v7, v4, v3

    const-string v2, "(%s = ? OR %s = ?)"

    .line 117
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    .line 118
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x3ea

    .line 119
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-nez p1, :cond_2

    sget-object p1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 126
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v6, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 123
    invoke-virtual {p0, p1, v0, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "contacts provider update command failed"

    .line 129
    invoke-static {v1, p1, p0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static markSingleMissedCallInCallLogAsRead(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "CallLogNotificationsQueryHelper.markSingleMissedCallInCallLogAsRead"

    const-string v0, "call URI is null, unable to mark call as read"

    .line 87
    invoke-static {p1, v0, p0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 91
    :cond_0
    invoke-static {p0, p1}, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;->markMissedCallsInCallLogAsRead(Landroid/content/Context;Landroid/net/Uri;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getContactInfo(Ljava/lang/String;ILjava/lang/String;)Lcom/android/dialer/phonenumbercache/ContactInfo;
    .locals 3

    if-nez p3, :cond_0

    .line 184
    iget-object p3, p0, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;->mCurrentCountryIso:Ljava/lang/String;

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    .line 188
    :cond_1
    new-instance v0, Lcom/android/dialer/phonenumbercache/ContactInfo;

    invoke-direct {v0}, Lcom/android/dialer/phonenumbercache/ContactInfo;-><init>()V

    .line 189
    iput-object p1, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->number:Ljava/lang/String;

    .line 190
    invoke-static {p1, p3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 192
    invoke-static {p1, p3}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->normalizedNumber:Ljava/lang/String;

    .line 195
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    .line 196
    invoke-static {v1, p1, p2, v2}, Lcom/android/dialer/calllogutils/PhoneNumberDisplayUtil;->getDisplayName(Landroid/content/Context;Ljava/lang/CharSequence;IZ)Ljava/lang/CharSequence;

    move-result-object p2

    .line 197
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    .line 198
    iget-object p2, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    return-object v0

    .line 203
    :cond_2
    iget-object p2, p0, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;->mContactInfoHelper:Lcom/android/dialer/phonenumbercache/ContactInfoHelper;

    invoke-virtual {p2, p1, p3}, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->lookupNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dialer/phonenumbercache/ContactInfo;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 205
    iget-object p3, p2, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    return-object p2

    .line 209
    :cond_3
    iget-object p2, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 211
    iget-object p1, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->formattedNumber:Ljava/lang/String;

    iput-object p1, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 212
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 214
    iput-object p1, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 217
    :cond_5
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1104be

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getName(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 173
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;->getContactInfo(Ljava/lang/String;ILjava/lang/String;)Lcom/android/dialer/phonenumbercache/ContactInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    return-object p1
.end method

.method public getNewMissedCalls()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;->mNewCallsQuery:Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCallsQuery;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCallsQuery;->query(I)Ljava/util/List;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;->mNewCallsQuery:Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCallsQuery;

    const/16 v2, 0x3ea

    invoke-interface {v1, v2}, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCallsQuery;->query(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getNewVoicemails()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;->mNewCallsQuery:Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCallsQuery;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCallsQuery;->query(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
