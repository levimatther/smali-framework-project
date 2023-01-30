.class public Lcom/android/incallui/ContactInfoCache;
.super Ljava/lang/Object;
.source "ContactInfoCache.java"

# interfaces
.implements Lcom/android/incallui/ContactsAsyncHelper$OnImageLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/ContactInfoCache$CallerInfoQueryToken;,
        Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;,
        Lcom/android/incallui/ContactInfoCache$FindInfoCallback;,
        Lcom/android/incallui/ContactInfoCache$DialerCallCookieWrapper;,
        Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;,
        Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;,
        Lcom/android/incallui/ContactInfoCache$CnapInformationWrapper;,
        Lcom/android/incallui/ContactInfoCache$CachedNumberLookupWorker;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TOKEN_UPDATE_PHOTO_FOR_CALL_STATE:I

.field private static sCache:Lcom/android/incallui/ContactInfoCache;


# instance fields
.field private final cachedNumberLookupExecutor:Lcom/android/dialer/common/concurrent/DialerExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dialer/common/concurrent/DialerExecutor<",
            "Lcom/android/incallui/ContactInfoCache$CnapInformationWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallBacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDefaultContactPhotoDrawable:Landroid/graphics/drawable/Drawable;

.field private final mInfoMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhoneNumberService:Lcom/android/incallui/bindings/PhoneNumberService;

.field private mQueryId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    const-class v0, Lcom/android/incallui/ContactInfoCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 81
    sput-object v0, Lcom/android/incallui/ContactInfoCache;->sCache:Lcom/android/incallui/ContactInfoCache;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 87
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/Map;

    .line 90
    new-instance v0, Lcom/android/incallui/ContactInfoCache$CachedNumberLookupWorker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/incallui/ContactInfoCache$CachedNumberLookupWorker;-><init>(Lcom/android/incallui/ContactInfoCache$1;)V

    .line 91
    invoke-static {v0}, Lcom/android/dialer/common/concurrent/DialerExecutors;->createNonUiTaskBuilder(Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;)Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;->build()Lcom/android/dialer/common/concurrent/DialerExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/ContactInfoCache;->cachedNumberLookupExecutor:Lcom/android/dialer/common/concurrent/DialerExecutor;

    .line 127
    iput-object p1, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    .line 128
    invoke-static {p1}, Lcom/android/incallui/Bindings;->get(Landroid/content/Context;)Lcom/android/incallui/bindings/InCallUiBindings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/incallui/bindings/InCallUiBindings;->newPhoneNumberService(Landroid/content/Context;)Lcom/android/incallui/bindings/PhoneNumberService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/ContactInfoCache;->mPhoneNumberService:Lcom/android/incallui/bindings/PhoneNumberService;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 77
    sget-object v0, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/incallui/ContactInfoCache;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/ContactInfoCache;->loadImage(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/ContactInfoCache;Ljava/lang/String;I)Z
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/ContactInfoCache;->isWaitingForThisQuery(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/incallui/ContactInfoCache;Lcom/android/incallui/CallerInfo;Ljava/lang/String;Z)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/ContactInfoCache;->maybeUpdateFromCequintCallerId(Lcom/android/incallui/CallerInfo;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/incallui/ContactInfoCache;Ljava/lang/String;ILcom/android/incallui/CallerInfo;ZLcom/android/incallui/ContactInfoCache$CallerInfoQueryToken;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 0

    .line 77
    invoke-direct/range {p0 .. p5}, Lcom/android/incallui/ContactInfoCache;->updateCallerInfoInCacheOnAnyThread(Ljava/lang/String;ILcom/android/incallui/CallerInfo;ZLcom/android/incallui/ContactInfoCache$CallerInfoQueryToken;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/incallui/ContactInfoCache;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/incallui/ContactInfoCache;Ljava/lang/String;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/android/incallui/ContactInfoCache;->clearCallbacks(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/incallui/ContactInfoCache;)Lcom/android/incallui/bindings/PhoneNumberService;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/incallui/ContactInfoCache;->mPhoneNumberService:Lcom/android/incallui/bindings/PhoneNumberService;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/incallui/ContactInfoCache;Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/ContactInfoCache;->sendInfoNotifications(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/incallui/ContactInfoCache;)Landroid/content/Context;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 1

    .line 140
    new-instance p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {p2}, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;-><init>()V

    .line 143
    invoke-static {p0, p1}, Lcom/android/incallui/CallerInfoUtils;->buildCallerInfo(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)Lcom/android/incallui/CallerInfo;

    move-result-object v0

    .line 144
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getNumberPresentation()I

    move-result p1

    invoke-static {p0, v0, p2, p1}, Lcom/android/incallui/ContactInfoCache;->populateCacheEntry(Landroid/content/Context;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;I)V

    return-object p2
.end method

.method private buildEntry(Landroid/content/Context;Lcom/android/incallui/CallerInfo;I)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 6

    .line 608
    new-instance v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {v0}, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;-><init>()V

    .line 609
    invoke-static {p1, p2, v0, p3}, Lcom/android/incallui/ContactInfoCache;->populateCacheEntry(Landroid/content/Context;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;I)V

    .line 612
    iget p3, p2, Lcom/android/incallui/CallerInfo;->photoResource:I

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 613
    iget p3, p2, Lcom/android/incallui/CallerInfo;->photoResource:I

    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 614
    :cond_0
    iget-boolean p1, p2, Lcom/android/incallui/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz p1, :cond_2

    .line 615
    iget-object p1, p2, Lcom/android/incallui/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 616
    iget-object p1, p2, Lcom/android/incallui/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    iput-object p1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x2

    .line 617
    iput p1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photoType:I

    goto :goto_0

    .line 619
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/ContactInfoCache;->getDefaultContactPhotoDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 620
    iput p1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photoType:I

    goto :goto_0

    .line 623
    :cond_2
    iget-object p1, p2, Lcom/android/incallui/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    iput-object p1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->displayPhotoUri:Landroid/net/Uri;

    .line 624
    iput-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    .line 629
    :goto_0
    iget-object p1, p2, Lcom/android/incallui/CallerInfo;->lookupKeyOrNull:Ljava/lang/String;

    if-eqz p1, :cond_4

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x18

    if-ge p1, p3, :cond_3

    iget-wide v2, p2, Lcom/android/incallui/CallerInfo;->contactIdOrZero:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_4

    .line 631
    :cond_3
    iget-wide v1, p2, Lcom/android/incallui/CallerInfo;->contactIdOrZero:J

    iget-object p1, p2, Lcom/android/incallui/CallerInfo;->lookupKeyOrNull:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->lookupUri:Landroid/net/Uri;

    goto :goto_1

    .line 633
    :cond_4
    sget-object p1, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string p3, "lookup key is null or contact ID is 0 on M. Don\'t create a lookup uri."

    invoke-static {p1, p3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 634
    iput-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->lookupUri:Landroid/net/Uri;

    .line 637
    :goto_1
    iget-object p1, p2, Lcom/android/incallui/CallerInfo;->lookupKeyOrNull:Ljava/lang/String;

    iput-object p1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->lookupKey:Ljava/lang/String;

    .line 638
    iget-object p1, p2, Lcom/android/incallui/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    iput-object p1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactRingtoneUri:Landroid/net/Uri;

    .line 639
    iget-object p1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactRingtoneUri:Landroid/net/Uri;

    if-eqz p1, :cond_5

    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object p2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactRingtoneUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    const/4 p1, 0x1

    .line 640
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactRingtoneUri:Landroid/net/Uri;

    :cond_6
    return-object v0
.end method

.method private clearCallbacks(Ljava/lang/String;)V
    .locals 1

    .line 670
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;
    .locals 2

    const-class v0, Lcom/android/incallui/ContactInfoCache;

    monitor-enter v0

    .line 132
    :try_start_0
    sget-object v1, Lcom/android/incallui/ContactInfoCache;->sCache:Lcom/android/incallui/ContactInfoCache;

    if-nez v1, :cond_0

    .line 133
    new-instance v1, Lcom/android/incallui/ContactInfoCache;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/incallui/ContactInfoCache;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/incallui/ContactInfoCache;->sCache:Lcom/android/incallui/ContactInfoCache;

    .line 135
    :cond_0
    sget-object p0, Lcom/android/incallui/ContactInfoCache;->sCache:Lcom/android/incallui/ContactInfoCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static getPresentationString(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    const v0, 0x7f1104be

    .line 281
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    if-ne p1, v2, :cond_1

    :cond_0
    return-object p2

    :cond_1
    if-ne p1, v2, :cond_2

    .line 289
    invoke-static {p0}, Lcom/android/dialer/phonenumberutil/PhoneNumberHelper;->getDisplayNameForRestrictedNumber(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 p2, 0x4

    if-ne p1, p2, :cond_3

    const p1, 0x7f110398

    .line 291
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_0
    return-object v0
.end method

.method private isWaitingForThisQuery(Ljava/lang/String;I)Z
    .locals 4

    .line 961
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 965
    sget-object p1, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string p2, "Cached entry is null."

    invoke-static {p1, p2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 968
    :cond_0
    iget p1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->queryId:I

    .line 969
    sget-object v1, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "waitingQueryId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; queryId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private loadImage(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 3

    .line 550
    sget-object v0, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    const-string v2, "Image load complete with context: "

    invoke-static {v0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 553
    check-cast p3, Lcom/android/incallui/ContactInfoCache$CallerInfoQueryToken;

    .line 554
    iget-object p3, p3, Lcom/android/incallui/ContactInfoCache$CallerInfoQueryToken;->mCallId:Ljava/lang/String;

    .line 555
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-nez v0, :cond_0

    .line 558
    sget-object p1, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string p2, "Image Load received for empty search entry."

    invoke-static {p1, p2}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    invoke-direct {p0, p3}, Lcom/android/incallui/ContactInfoCache;->clearCallbacks(Ljava/lang/String;)V

    return-void

    .line 563
    :cond_0
    sget-object p3, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string v1, "setting photo for entry: "

    invoke-static {p3, v1, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p3, 0x2

    if-eqz p1, :cond_1

    .line 567
    sget-object p2, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string v1, "direct drawable: "

    invoke-static {p2, v1, p1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 568
    iput-object p1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    .line 569
    iput p3, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photoType:I

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 571
    sget-object p1, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string v1, "photo icon: "

    invoke-static {p1, v1, p2}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 572
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p1, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object p1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    .line 573
    iput p3, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photoType:I

    goto :goto_0

    .line 575
    :cond_2
    sget-object p1, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "unknown photo"

    invoke-static {p1, p2}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 576
    iput-object p1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 577
    iput p1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photoType:I

    :goto_0
    return-void
.end method

.method private maybeUpdateFromCequintCallerId(Lcom/android/incallui/CallerInfo;Ljava/lang/String;Z)V
    .locals 2

    .line 497
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/oem/CequintCallerIdManager;->isCequintCallerIdEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 500
    :cond_0
    iget-object v0, p1, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-nez v0, :cond_1

    return-void

    .line 503
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 504
    invoke-static {v0, v1, p2, p3}, Lcom/android/dialer/oem/CequintCallerIdManager;->getCequintCallerIdContactForInCall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/dialer/oem/CequintCallerIdManager$CequintCallerIdContact;

    move-result-object p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    const/4 p3, 0x0

    .line 512
    iget-object v0, p1, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/android/dialer/oem/CequintCallerIdManager$CequintCallerIdContact;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 513
    iget-object p3, p2, Lcom/android/dialer/oem/CequintCallerIdManager$CequintCallerIdContact;->name:Ljava/lang/String;

    iput-object p3, p1, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    move p3, v1

    .line 516
    :cond_3
    iget-object v0, p2, Lcom/android/dialer/oem/CequintCallerIdManager$CequintCallerIdContact;->geoDescription:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 517
    iget-object p3, p2, Lcom/android/dialer/oem/CequintCallerIdManager$CequintCallerIdContact;->geoDescription:Ljava/lang/String;

    iput-object p3, p1, Lcom/android/incallui/CallerInfo;->geoDescription:Ljava/lang/String;

    .line 518
    iput-boolean v1, p1, Lcom/android/incallui/CallerInfo;->shouldShowGeoDescription:Z

    move p3, v1

    .line 522
    :cond_4
    iget-boolean v0, p1, Lcom/android/incallui/CallerInfo;->contactExists:Z

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/android/incallui/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    if-nez v0, :cond_5

    iget-object v0, p2, Lcom/android/dialer/oem/CequintCallerIdManager$CequintCallerIdContact;->imageUrl:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 525
    iget-object p2, p2, Lcom/android/dialer/oem/CequintCallerIdManager$CequintCallerIdContact;->imageUrl:Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p1, Lcom/android/incallui/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    goto :goto_0

    :cond_5
    move v1, p3

    .line 529
    :goto_0
    iput-boolean v1, p1, Lcom/android/incallui/CallerInfo;->contactExists:Z

    return-void
.end method

.method private needForceQuery(Lcom/android/incallui/call/DialerCall;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 929
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->isConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 933
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getNumber()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    if-nez p2, :cond_1

    .line 936
    sget-object p1, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string p2, "needForceQuery: first query"

    invoke-static {p1, p2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 939
    :cond_1
    iget-object p2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalPhoneNumber:Ljava/lang/String;

    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 941
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 942
    sget-object v0, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phone number has changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " -> "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    :goto_0
    return v0
.end method

.method private static populateCacheEntry(Landroid/content/Context;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;I)V
    .locals 8

    .line 154
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v0, p1, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 184
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    invoke-static {v0}, Lcom/android/dialer/phonenumberutil/PhoneNumberHelper;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "sip:"

    .line 186
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    .line 187
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 191
    :cond_1
    :goto_0
    iget-object v2, p1, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "\', displayNumber \'"

    const/4 v4, 0x1

    const-string v5, "\'"

    const/4 v6, 0x0

    if-eqz v2, :cond_5

    .line 197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/android/incallui/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 200
    iget-object v0, p1, Lcom/android/incallui/CallerInfo;->callSubject:Ljava/lang/String;

    invoke-static {p0, p3, v0}, Lcom/android/incallui/ContactInfoCache;->getPresentationString(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 201
    sget-object p3, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  ==> no name *or* number! displayName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    if-eq p3, v4, :cond_3

    .line 206
    iget-object v0, p1, Lcom/android/incallui/CallerInfo;->callSubject:Ljava/lang/String;

    invoke-static {p0, p3, v0}, Lcom/android/incallui/ContactInfoCache;->getPresentationString(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 207
    sget-object p3, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  ==> presentation not allowed! displayName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 208
    :cond_3
    iget-object p3, p1, Lcom/android/incallui/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 210
    iget-object p3, p1, Lcom/android/incallui/CallerInfo;->cnapName:Ljava/lang/String;

    .line 211
    iget-object v2, p1, Lcom/android/incallui/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    .line 212
    invoke-static {v0, p0}, Lcom/android/dialer/phonenumberutil/PhoneNumberHelper;->formatNumber(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 213
    sget-object v0, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  ==> cnapName available: displayName \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v6

    move-object v6, p3

    move-object p3, v7

    goto/16 :goto_2

    .line 225
    :cond_4
    invoke-static {v0, p0}, Lcom/android/dialer/phonenumberutil/PhoneNumberHelper;->formatNumber(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 227
    sget-object p3, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  ==>  no name; falling back to number: displayNumber \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-static {p0}, Lcom/android/incallui/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-static {p3, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object p3, v6

    goto :goto_2

    :cond_5
    if-eq p3, v4, :cond_6

    .line 241
    iget-object v0, p1, Lcom/android/incallui/CallerInfo;->callSubject:Ljava/lang/String;

    invoke-static {p0, p3, v0}, Lcom/android/incallui/ContactInfoCache;->getPresentationString(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 242
    sget-object p3, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  ==> valid name, but presentation not allowed! displayName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object p3, v6

    move-object v6, p0

    move-object p0, p3

    goto :goto_2

    .line 248
    :cond_6
    iget-object v6, p1, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    .line 249
    iget-object p3, p1, Lcom/android/incallui/CallerInfo;->nameAlternative:Ljava/lang/String;

    iput-object p3, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->nameAlternative:Ljava/lang/String;

    .line 250
    invoke-static {v0, p0}, Lcom/android/dialer/phonenumberutil/PhoneNumberHelper;->formatNumber(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 251
    iget-object p3, p1, Lcom/android/incallui/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 252
    sget-object v0, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  ==>  name is present in CallerInfo: displayName \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :goto_2
    iput-object v6, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    .line 263
    iput-object p0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    .line 264
    iget-object p0, p1, Lcom/android/incallui/CallerInfo;->geoDescription:Ljava/lang/String;

    iput-object p0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    .line 265
    iput-object p3, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    .line 266
    iput-boolean v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isSipCall:Z

    .line 267
    iget-wide v0, p1, Lcom/android/incallui/CallerInfo;->userType:J

    iput-wide v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->userType:J

    .line 268
    iget-object p0, p1, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    iput-object p0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalPhoneNumber:Ljava/lang/String;

    .line 269
    iget-boolean p0, p1, Lcom/android/incallui/CallerInfo;->shouldShowGeoDescription:Z

    iput-boolean p0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->shouldShowLocation:Z

    .line 270
    invoke-virtual {p1}, Lcom/android/incallui/CallerInfo;->isEmergencyNumber()Z

    move-result p0

    iput-boolean p0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergencyNumber:Z

    .line 271
    invoke-virtual {p1}, Lcom/android/incallui/CallerInfo;->isVoiceMailNumber()Z

    move-result p0

    iput-boolean p0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoicemailNumber:Z

    .line 273
    iget-boolean p0, p1, Lcom/android/incallui/CallerInfo;->contactExists:Z

    if-eqz p0, :cond_7

    .line 274
    sget-object p0, Lcom/android/dialer/logging/ContactLookupResult$Type;->LOCAL_CONTACT:Lcom/android/dialer/logging/ContactLookupResult$Type;

    iput-object p0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactLookupResult:Lcom/android/dialer/logging/ContactLookupResult$Type;

    :cond_7
    return-void
.end method

.method private sendImageNotifications(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 2

    .line 660
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 661
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 662
    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 663
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;

    .line 664
    invoke-interface {v1, p1, p2}, Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;->onImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendInfoNotifications(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 2

    .line 649
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 650
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 652
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;

    .line 653
    invoke-interface {v1, p1, p2}, Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;->onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateCallerInfoInCacheOnAnyThread(Ljava/lang/String;ILcom/android/incallui/CallerInfo;ZLcom/android/incallui/ContactInfoCache$CallerInfoQueryToken;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 4

    .line 425
    sget-object v0, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCallerInfoInCacheOnAnyThread: callId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; queryId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p5, Lcom/android/incallui/ContactInfoCache$CallerInfoQueryToken;->mQueryId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; didLocalLookup = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 435
    sget-object v1, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Existing cacheEntry in hashMap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 440
    iget-boolean v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergencyNumber:Z

    if-eqz v1, :cond_0

    .line 441
    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v1}, Lcom/android/incallui/CallerInfo;->markAsEmergency(Landroid/content/Context;)Lcom/android/incallui/CallerInfo;

    goto :goto_0

    .line 442
    :cond_0
    iget-boolean v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoicemailNumber:Z

    if-eqz v1, :cond_1

    .line 443
    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v1}, Lcom/android/incallui/CallerInfo;->markAsVoiceMail(Landroid/content/Context;)Lcom/android/incallui/CallerInfo;

    .line 448
    :cond_1
    :goto_0
    iget-boolean v1, p3, Lcom/android/incallui/CallerInfo;->contactExists:Z

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 449
    invoke-virtual {p3}, Lcom/android/incallui/CallerInfo;->isEmergencyNumber()Z

    move-result v1

    if-nez v1, :cond_2

    .line 450
    invoke-virtual {p3}, Lcom/android/incallui/CallerInfo;->isVoiceMailNumber()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move p2, v2

    .line 455
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p3, p2}, Lcom/android/incallui/ContactInfoCache;->buildEntry(Landroid/content/Context;Lcom/android/incallui/CallerInfo;I)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object p2

    .line 456
    iget p3, p5, Lcom/android/incallui/ContactInfoCache$CallerInfoQueryToken;->mQueryId:I

    iput p3, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->queryId:I

    if-eqz p4, :cond_6

    .line 459
    iget-object p3, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->displayPhotoUri:Landroid/net/Uri;

    if-eqz p3, :cond_5

    if-eqz v0, :cond_4

    .line 464
    iget-object p3, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->displayPhotoUri:Landroid/net/Uri;

    if-eqz p3, :cond_4

    iget-object p3, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->displayPhotoUri:Landroid/net/Uri;

    iget-object p4, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->displayPhotoUri:Landroid/net/Uri;

    .line 466
    invoke-virtual {p3, p4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_4

    .line 468
    sget-object p1, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string p3, "Same picture. Do not need start image load."

    invoke-static {p1, p3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget-object p1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iput-object p1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    .line 470
    iget p1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photoType:I

    iput p1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photoType:I

    return-object p2

    .line 474
    :cond_4
    sget-object p3, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string p4, "Contact lookup. Local contact found, starting image load"

    invoke-static {p3, p4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iput-boolean v2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->hasPendingQuery:Z

    const/4 p3, 0x0

    .line 478
    iget-object p4, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->displayPhotoUri:Landroid/net/Uri;

    invoke-static {p3, p4, v0, p0, p5}, Lcom/android/incallui/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/incallui/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    .line 485
    :cond_5
    sget-object p3, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "put entry into map: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-object p3, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 489
    :cond_6
    sget-object p3, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "put entry into map if not exists: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iget-object p3, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-object p2
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 603
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 604
    iput v0, p0, Lcom/android/incallui/ContactInfoCache;->mQueryId:I

    return-void
.end method

.method public findInfo(Lcom/android/incallui/call/DialerCall;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V
    .locals 7

    .line 347
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 348
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v6

    .line 351
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 352
    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/Map;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 355
    invoke-direct {p0, p1, v0}, Lcom/android/incallui/ContactInfoCache;->needForceQuery(Lcom/android/incallui/call/DialerCall;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Z

    move-result v2

    .line 356
    sget-object v3, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findInfo: callId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; forceQuery = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    if-nez v2, :cond_1

    .line 361
    sget-object v3, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Contact lookup. In memory cache hit; lookup "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_0

    const-string v5, "complete"

    goto :goto_0

    :cond_0
    const-string v5, "still running"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-interface {p3, v6, v0}, Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;->onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-eqz v1, :cond_2

    .line 374
    sget-object v3, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string v4, "Another query is in progress, add callback only."

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-interface {v1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-nez v2, :cond_3

    .line 377
    sget-object p1, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string p2, "No need to query again, just return and wait for existing query to finish"

    invoke-static {p1, p2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 381
    :cond_2
    sget-object v1, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string v2, "Contact lookup. In memory cache miss; searching provider."

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 384
    invoke-interface {v1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 385
    iget-object p3, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/Map;

    invoke-interface {p3, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    :cond_3
    new-instance v5, Lcom/android/incallui/ContactInfoCache$CallerInfoQueryToken;

    iget p3, p0, Lcom/android/incallui/ContactInfoCache;->mQueryId:I

    invoke-direct {v5, p3, v6}, Lcom/android/incallui/ContactInfoCache$CallerInfoQueryToken;-><init>(ILjava/lang/String;)V

    .line 395
    iget p3, p0, Lcom/android/incallui/ContactInfoCache;->mQueryId:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/android/incallui/ContactInfoCache;->mQueryId:I

    .line 396
    iget-object p3, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/incallui/ContactInfoCache$DialerCallCookieWrapper;

    .line 400
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getNumberPresentation()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getCnapName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v6, v2, v3}, Lcom/android/incallui/ContactInfoCache$DialerCallCookieWrapper;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;

    invoke-direct {v2, p0, p2, v5}, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;-><init>(Lcom/android/incallui/ContactInfoCache;ZLcom/android/incallui/ContactInfoCache$CallerInfoQueryToken;)V

    .line 397
    invoke-static {p3, p1, v1, v2}, Lcom/android/incallui/CallerInfoUtils;->getCallerInfoForCall(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;Ljava/lang/Object;Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;)Lcom/android/incallui/CallerInfo;

    move-result-object v3

    if-eqz v0, :cond_4

    .line 408
    iget p1, v5, Lcom/android/incallui/ContactInfoCache$CallerInfoQueryToken;->mQueryId:I

    iput p1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->queryId:I

    .line 409
    sget-object p1, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string p2, "There is an existing cache. Do not override until new query is back"

    invoke-static {p1, p2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 413
    :cond_4
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getNumberPresentation()I

    move-result v2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, v6

    .line 412
    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/ContactInfoCache;->updateCallerInfoInCacheOnAnyThread(Ljava/lang/String;ILcom/android/incallui/CallerInfo;ZLcom/android/incallui/ContactInfoCache$CallerInfoQueryToken;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object p1

    .line 414
    invoke-direct {p0, v6, p1}, Lcom/android/incallui/ContactInfoCache;->sendInfoNotifications(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    :goto_1
    return-void
.end method

.method public getDefaultContactPhotoDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 674
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mDefaultContactPhotoDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    .line 676
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080158

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mDefaultContactPhotoDrawable:Landroid/graphics/drawable/Drawable;

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mDefaultContactPhotoDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    return-object p1
.end method

.method maybeInsertCnapInformationIntoCache(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;Lcom/android/incallui/CallerInfo;)V
    .locals 3

    .line 319
    invoke-static {p1}, Lcom/android/dialer/phonenumbercache/PhoneNumberCache;->get(Landroid/content/Context;)Lcom/android/dialer/phonenumbercache/PhoneNumberCacheBindings;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/dialer/phonenumbercache/PhoneNumberCacheBindings;->getCachedNumberLookupService()Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;

    move-result-object v0

    .line 320
    invoke-static {p1}, Landroidx/core/os/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 321
    sget-object p1, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string p2, "User locked, not inserting cnap info into cache"

    invoke-static {p1, p2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz v0, :cond_2

    .line 324
    iget-object v1, p3, Lcom/android/incallui/CallerInfo;->cnapName:Ljava/lang/String;

    .line 325
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 326
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 329
    :cond_1
    sget-object v1, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string v2, "Found contact with CNAP name - inserting into cache"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache;->cachedNumberLookupExecutor:Lcom/android/dialer/common/concurrent/DialerExecutor;

    new-instance v2, Lcom/android/incallui/ContactInfoCache$CnapInformationWrapper;

    .line 333
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getNumber()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p3, Lcom/android/incallui/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-direct {v2, p2, p3, p1, v0}, Lcom/android/incallui/ContactInfoCache$CnapInformationWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;)V

    .line 331
    invoke-interface {v1, v2}, Lcom/android/dialer/common/concurrent/DialerExecutor;->executeParallel(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onImageLoadComplete(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 0

    .line 588
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 589
    check-cast p4, Lcom/android/incallui/ContactInfoCache$CallerInfoQueryToken;

    .line 590
    iget-object p1, p4, Lcom/android/incallui/ContactInfoCache$CallerInfoQueryToken;->mCallId:Ljava/lang/String;

    .line 591
    iget p2, p4, Lcom/android/incallui/ContactInfoCache$CallerInfoQueryToken;->mQueryId:I

    .line 592
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/ContactInfoCache;->isWaitingForThisQuery(Ljava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 595
    :cond_0
    iget-object p2, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/ContactInfoCache;->sendImageNotifications(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 597
    invoke-direct {p0, p1}, Lcom/android/incallui/ContactInfoCache;->clearCallbacks(Ljava/lang/String;)V

    return-void
.end method

.method public onImageLoaded(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 1

    .line 539
    invoke-static {}, Lcom/android/dialer/common/Assert;->isWorkerThread()V

    .line 540
    move-object p1, p4

    check-cast p1, Lcom/android/incallui/ContactInfoCache$CallerInfoQueryToken;

    .line 541
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$CallerInfoQueryToken;->mCallId:Ljava/lang/String;

    .line 542
    iget p1, p1, Lcom/android/incallui/ContactInfoCache$CallerInfoQueryToken;->mQueryId:I

    .line 543
    invoke-direct {p0, v0, p1}, Lcom/android/incallui/ContactInfoCache;->isWaitingForThisQuery(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 546
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lcom/android/incallui/ContactInfoCache;->loadImage(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/Object;)V

    return-void
.end method
