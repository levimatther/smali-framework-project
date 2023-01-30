.class public Lcom/android/incallui/CallerInfoUtils;
.super Ljava/lang/Object;
.source "CallerInfoUtils.java"


# static fields
.field private static final QUERY_TOKEN:I = -0x1

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lcom/android/incallui/CallerInfoUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/CallerInfoUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildCachedContactInfo(Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;Lcom/android/incallui/CallerInfo;)Lcom/android/dialer/phonenumbercache/CachedNumberLookupService$CachedContactInfo;
    .locals 3

    .line 135
    new-instance v0, Lcom/android/dialer/phonenumbercache/ContactInfo;

    invoke-direct {v0}, Lcom/android/dialer/phonenumbercache/ContactInfo;-><init>()V

    .line 136
    iget-object v1, p1, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    .line 137
    iget v1, p1, Lcom/android/incallui/CallerInfo;->numberType:I

    iput v1, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->type:I

    .line 138
    iget-object v1, p1, Lcom/android/incallui/CallerInfo;->phoneLabel:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->label:Ljava/lang/String;

    .line 139
    iget-object v1, p1, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->number:Ljava/lang/String;

    .line 140
    iget-object v1, p1, Lcom/android/incallui/CallerInfo;->normalizedNumber:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->normalizedNumber:Ljava/lang/String;

    .line 141
    iget-object v1, p1, Lcom/android/incallui/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    iput-object v1, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->photoUri:Landroid/net/Uri;

    .line 142
    iget-wide v1, p1, Lcom/android/incallui/CallerInfo;->userType:J

    iput-wide v1, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->userType:J

    .line 144
    invoke-interface {p0, v0}, Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;->buildCachedContactInfo(Lcom/android/dialer/phonenumbercache/ContactInfo;)Lcom/android/dialer/phonenumbercache/CachedNumberLookupService$CachedContactInfo;

    move-result-object p0

    .line 145
    iget-object p1, p1, Lcom/android/incallui/CallerInfo;->lookupKeyOrNull:Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/android/dialer/phonenumbercache/CachedNumberLookupService$CachedContactInfo;->setLookupKey(Ljava/lang/String;)V

    return-object p0
.end method

.method static buildCallerInfo(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)Lcom/android/incallui/CallerInfo;
    .locals 5

    .line 87
    new-instance v0, Lcom/android/incallui/CallerInfo;

    invoke-direct {v0}, Lcom/android/incallui/CallerInfo;-><init>()V

    .line 91
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getCnapName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/incallui/CallerInfo;->cnapName:Ljava/lang/String;

    .line 92
    iget-object v1, v0, Lcom/android/incallui/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getNumberPresentation()I

    move-result v1

    iput v1, v0, Lcom/android/incallui/CallerInfo;->numberPresentation:I

    .line 94
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getCnapNamePresentation()I

    move-result v1

    iput v1, v0, Lcom/android/incallui/CallerInfo;->namePresentation:I

    .line 95
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getCallSubject()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/incallui/CallerInfo;->callSubject:Ljava/lang/String;

    const/4 v1, 0x0

    .line 96
    iput-boolean v1, v0, Lcom/android/incallui/CallerInfo;->contactExists:Z

    .line 98
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 101
    invoke-static {v2}, Lcom/android/dialer/phonenumberutil/PhoneNumberHelper;->isUriNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "&"

    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 103
    aget-object v1, v2, v1

    .line 104
    array-length v3, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 105
    aget-object v2, v2, v4

    iput-object v2, v0, Lcom/android/incallui/CallerInfo;->forwardingNumber:Ljava/lang/String;

    .line 107
    :cond_0
    iget v2, v0, Lcom/android/incallui/CallerInfo;->numberPresentation:I

    invoke-static {p0, v0, v1, v2}, Lcom/android/incallui/CallerInfoUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/incallui/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 109
    :cond_1
    iput-object v2, v0, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 115
    :cond_2
    invoke-static {p0, p1}, Lcom/android/incallui/CallerInfoUtils;->isVoiceMailNumber(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 116
    invoke-virtual {v0, p0}, Lcom/android/incallui/CallerInfo;->markAsVoiceMail(Landroid/content/Context;)Lcom/android/incallui/CallerInfo;

    .line 119
    :cond_3
    invoke-static {p0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v1

    invoke-virtual {v1, p0, p1, v0}, Lcom/android/incallui/ContactInfoCache;->maybeInsertCnapInformationIntoCache(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;Lcom/android/incallui/CallerInfo;)V

    return-object v0
.end method

.method static getCallerInfoForCall(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;Ljava/lang/Object;Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;)Lcom/android/incallui/CallerInfo;
    .locals 3

    .line 63
    invoke-static {p0, p1}, Lcom/android/incallui/CallerInfoUtils;->buildCallerInfo(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)Lcom/android/incallui/CallerInfo;

    move-result-object p1

    .line 67
    iget v0, p1, Lcom/android/incallui/CallerInfo;->numberPresentation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 68
    invoke-static {p0}, Lcom/android/dialer/util/PermissionsUtil;->hasContactsReadPermissions(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "CallerInfoUtils.getCallerInfoForCall"

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Actually starting CallerInfoAsyncQuery.startQuery()..."

    .line 70
    invoke-static {v2, v1, v0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x1

    .line 75
    invoke-static {v0, p0, p1, p3, p2}, Lcom/android/incallui/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-array p0, v1, [Ljava/lang/Object;

    const-string p2, "Dialer doesn\'t have permission to read contacts. Not calling CallerInfoAsyncQuery.startQuery()."

    .line 77
    invoke-static {v2, p2, p0}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method public static getConferenceString(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7f11024e

    goto :goto_0

    :cond_0
    const p1, 0x7f110156

    .line 291
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isCnapSpecialCaseRestricted(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "PRIVATE"

    .line 231
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "P"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "RES"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PRIVATENUMBER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isCnapSpecialCaseUnknown(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "UNAVAILABLE"

    .line 235
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "UNA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "U"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isVoiceMailNumber(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)Z
    .locals 2

    .line 150
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getHandle()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getHandle()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "voicemail"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 155
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 160
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getNumber()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/android/dialer/telecom/TelecomUtil;->isVoicemailNumber(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/incallui/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 182
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyForSpecialCnapCases: initially, number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-static {p2}, Lcom/android/incallui/CallerInfoUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", presentation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ci "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "CallerInfoUtils.modifyForSpecialCnapCases"

    .line 182
    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x7f030000

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x3

    const v4, 0x7f1104be

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    if-ne p3, v5, :cond_1

    .line 197
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 198
    iput v2, p1, Lcom/android/incallui/CallerInfo;->numberPresentation:I

    .line 206
    :cond_1
    iget v0, p1, Lcom/android/incallui/CallerInfo;->numberPresentation:I

    if-eq v0, v5, :cond_2

    iget v0, p1, Lcom/android/incallui/CallerInfo;->numberPresentation:I

    if-eq v0, p3, :cond_5

    if-ne p3, v5, :cond_5

    .line 210
    :cond_2
    invoke-static {p2}, Lcom/android/incallui/CallerInfoUtils;->isCnapSpecialCaseRestricted(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 211
    invoke-static {p0}, Lcom/android/dialer/phonenumberutil/PhoneNumberHelper;->getDisplayNameForRestrictedNumber(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x2

    .line 212
    iput p2, p1, Lcom/android/incallui/CallerInfo;->numberPresentation:I

    :goto_0
    move-object p2, p0

    goto :goto_1

    .line 213
    :cond_3
    invoke-static {p2}, Lcom/android/incallui/CallerInfoUtils;->isCnapSpecialCaseUnknown(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 214
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 215
    iput v2, p1, Lcom/android/incallui/CallerInfo;->numberPresentation:I

    goto :goto_0

    .line 217
    :cond_4
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SpecialCnap: number="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-static {p2}, Lcom/android/incallui/CallerInfoUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "; presentation now="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/incallui/CallerInfo;->numberPresentation:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    .line 217
    invoke-static {v3, p0, p1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "returning number string="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-static {p2}, Lcom/android/incallui/CallerInfoUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    .line 224
    invoke-static {v3, p0, p1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-object p2
.end method

.method public static sendViewNotification(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    .line 270
    new-instance v0, Lcom/android/contacts/common/model/ContactLoader;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/contacts/common/model/ContactLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 272
    new-instance p0, Lcom/android/incallui/CallerInfoUtils$1;

    invoke-direct {p0}, Lcom/android/incallui/CallerInfoUtils$1;-><init>()V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p0}, Lcom/android/contacts/common/model/ContactLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 284
    invoke-virtual {v0}, Lcom/android/contacts/common/model/ContactLoader;->startLoading()V

    return-void
.end method

.method static toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 253
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 254
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 255
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_2

    const/16 v3, 0x40

    if-eq v2, v3, :cond_2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_2

    const/16 v3, 0x26

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x78

    .line 259
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 257
    :cond_2
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
